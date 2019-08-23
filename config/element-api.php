<?php

//namespace  Craft;
use craft\elements\Entry;
use craft\elements\GlobalSet;

//Craft::$app->response->headers->set('Access-Control-Allow-Origin', '*');

return [
    'endpoints' => [
        'api/homepage.json' => function () {
            return [
                'elementType' => Entry::class,
                'criteria' => ['section' => 'homepage'],
                'pretty' => true,
                'paginate' => false,
                'transformer' => function (Entry $entry) {
                    $image = $entry->image->one();
                    return [
                        'pageTitle' => $entry->title,
                        'mainTitle' => $entry->mainTitle,
                        'subtitle' => $entry->subtitle,
                        'description' => $entry->description,
                        'caption' => $entry->caption,
                        'button' => $entry->button,
                        'image' => $image ? $image->url : null,
                    ];
                },

            ];
        },
        'api/results.json' => function () {
            return [
                'elementType' => Entry::class,
                'criteria' => ['section' => 'results'],
                'pretty' => true,
                'paginate' => false,
                'transformer' => function (Entry $entry) {
                    $platformsBlock = [];
                    foreach ($entry->getFieldValue('platformsEntries')->all() as $block) {
                        $platformsDesc = [];

                        foreach ($block->getFieldValue('platform')->all() as $platform) {

                            $image = $platform->image->one();
                            $platformsDesc[] = [
                                'platformsName' => $platform->platformsName,
                                'linkToExample' => $platform->linkToExample,
                                'platformsDescription' => $platform->platformDescription,
                                'image' => $image ? $image->url : null,
                            ];

                        }

                        foreach ($block->getFieldValue('comparisonsItems')->all() as $comparisons) {
                            $comparison = [];
                            foreach ($comparisons->getFieldValue('comparisons')->all() as $compare) {
                                foreach ($compare->getFieldValue('comparisonsName')->all() as $compareitem) {};
                                $stars = $compare->stars->one();
                                $dollars = $compare->dollars->one();
                                $comparison[] = [
                                    'comparisonsNameTitle' => $compareitem->title,
                                    'text' => $compare->text,
                                    'dollars' => $dollars ? $dollars->url : null,
                                    'stars' => $stars ? $stars->url : null,
                                    'sequenceNumber' => $compareitem->sequenceNumber,
                                ];
                                usort($comparison, function ($a, $b) {
                                    return $a['sequenceNumber'] - $b['sequenceNumber'];
                                });
                            }
                        }

                        $platformsBlock[] = [
                            //'platformsEntries' =>$block,
                            'platformsEntries' => $block->title,
                            'descr' => $platformsDesc,
                            'comparison' => $comparison,
                        ];

                    }
                    return [
                        'titlePage' => $entry->titlePage,
                        'titleForm' => $entry->titleForm,
                        'platformsBlock' => $platformsBlock,
                    ];
                }
            ];
        },
        'api/questions.json' => function () {
            return [
                'elementType' => Entry::class,
                'criteria' => ['section' => 'questions', 'type' => ['questionsList', 'checkboxQuestion', 'blockOfQuestions'], 'level' => '1'],
                'pretty' => true,
                'paginate' => false,
                'transformer' => function (Entry $entry) {
                    $answerBlocks = [];
                    $preleadQuestion = [];
                    $checkboxAnswerBlocks = [];

                    if ($entry->answer) {
                        foreach ($entry->answer->all() as $block) {

                            $answer = [];
                            foreach ($block->getFieldValue('pointsTable')->all() as $pointsTable) {
                                foreach ($pointsTable->getFieldValue('platform')->all() as $platform) {
                                    $answer[] = [
                                        'title' => $platform->title,
                                        'point' => (int)$pointsTable->points,
                                    ];
                                }
                            }

                            $dependent_question = [];
                            foreach ($block->getFieldValue('dependentQuestion')->all() as $dependentQuestion) {
                                $dependent_question[] = [
                                    'd_q_title' => $dependentQuestion->title,
                                    'd_q_type' => $dependentQuestion->type->handle,
                                    'd_q_id' => $dependentQuestion->id,
                                    'd_q_uid' => $dependentQuestion->uid,
                                ];
                            }

                            $answerBlocks[] = [
                                'answer' => $block->answers,
                                'id_answer' => $block->uid,
                                'answerPoint' => $answer,
                                'dependent_question' => $dependent_question,
                            ];
                        }
                    }

                    if ($entry->checkboxAnswer) {
                        foreach ($entry->checkboxAnswer->all() as $block) {

                            $checkbox_answer_dependent_question = [];
                            foreach ($block->getFieldValue('dependentQuestion')->all() as $dependentQuestion) {
                                $checkbox_answer_dependent_question[] = [
                                    'd_q_title' => $dependentQuestion->title,
                                    'd_q_type' => $dependentQuestion->type->handle,
                                    'd_q_id' => $dependentQuestion->id,
                                    'd_q_uid' => $dependentQuestion->uid,
                                ];
                            }

                            $checkboxAnswerBlocks[] = [
                                'answer' => $block->answers,
                                'id_answer' => $block->uid,
                                'dependent_question' => $checkbox_answer_dependent_question,
                            ];
                        }
                    }

                    if ($entry->preleadQuestion) {
                        foreach ($entry->preleadQuestion->all() as $block) {
                            $preleadQuestion[] = [
                                'p_q_title' => $block->title,
                                'p_q_id' => $block->id,
                                'p_q_uid' => $block->uid,
                            ];
                        }
                    }

                    return [
                        'question' => $entry->title,
                        'question_type' => $entry->type->handle,
                        'question_id' => $entry->id,
                        'question_uid' => $entry->uid,
                        'question_level' => $entry->level,
                        'prelead_question' => $preleadQuestion,
                        'answers' => $answerBlocks,
                        'checkbox_answers' => $checkboxAnswerBlocks,
                    ];
                },
            ];
        },
        'api/dependent-questions.json' => function () {
            return [
                'elementType' => Entry::class,
                'criteria' => ['section' => 'questions', 'level' => '2'],
                'pretty' => true,
                'paginate' => false,
                'transformer' => function (Entry $entry) {
                    $answerBlocks = [];
//                    $preleadQuestion = [];
                    $checkboxAnswerBlocks = [];

                    if ($entry->answer) {
                        foreach ($entry->answer->all() as $block) {

                            $answer = [];
                            foreach ($block->getFieldValue('pointsTable')->all() as $pointsTable) {
                                foreach ($pointsTable->getFieldValue('platform')->all() as $platform) {
                                    $answer[] = [
                                        'title' => $platform->title,
                                        'point' => (int)$pointsTable->points,
                                    ];
                                }
                            }

                            $dependent_question = [];
                            foreach ($block->getFieldValue('dependentQuestion')->all() as $dependentQuestion) {
                                $dependent_question[] = [
                                    'd_q_title' => $dependentQuestion->title,
                                    'd_q_type' => $dependentQuestion->type->handle,
                                    'd_q_id' => $dependentQuestion->id,
                                    'd_q_uid' => $dependentQuestion->uid,
                                ];
                            }

                            $answerBlocks[] = [
                                'answer' => $block->answers,
                                'id_answer' => $block->uid,
                                'answerPoint' => $answer,
                                'dependent_question' => $dependent_question,
                            ];
                        }
                    }

                    if ($entry->checkboxAnswer) {
                        foreach ($entry->checkboxAnswer->all() as $block) {

                            $checkbox_answer_dependent_question = [];
                            foreach ($block->getFieldValue('dependentQuestion')->all() as $dependentQuestion) {
                                $checkbox_answer_dependent_question[] = [
                                    'd_q_title' => $dependentQuestion->title,
                                    'd_q_type' => $dependentQuestion->type->handle,
                                    'd_q_id' => $dependentQuestion->id,
                                    'd_q_uid' => $dependentQuestion->uid,
                                ];
                            }

                            $checkboxAnswerBlocks[] = [
                                'answer' => $block->answers,
                                'id_answer' => $block->uid,
                                'dependent_question' => $checkbox_answer_dependent_question,
                            ];
                        }
                    }

//                    if ($entry->preleadQuestion) {
//                        foreach ($entry->preleadQuestion->all() as $block) {
//                            $preleadQuestion[] = [
//                                'p_q_title' => $block->title,
//                                'p_q_id' => $block->id,
//                                'p_q_uid' => $block->uid,
//                            ];
//                        }
//                    }

                    return [
                        'question' => $entry->title,
                        'question_type' => $entry->type->handle,
                        'question_id' => $entry->id,
                        'question_uid' => $entry->uid,
                        'question_level' => $entry->level,
//                        'prelead_question' => $preleadQuestion,
                        'answers' => $answerBlocks,
                        'checkbox_answers' => $checkboxAnswerBlocks,
                    ];
                },
            ];
        },
        'api/thank-you.json' => function () {
            return [
                'elementType' => Entry::class,
                'criteria' => ['section' => 'thankYouPage'],
                'pretty' => true,
                'paginate' => false,
                'transformer' => function (Entry $entry) {
                    $thankYouPage = [];
                    foreach ($entry->getFieldValue('infoWithShareLink')->all() as $block) {
                        $thankYouPage[] = [
                            'titleLink' => $block->titleLink,
                            'quoteLink' => $block->quoteLink,
                            'descriptionLink' => $block->descriptionLink,
                            'textForShareQuiz' => $block->textForShareQuiz,
                        ];
                    }
                    return [
                        'title' => $entry->mainTitle,
                        'subtitleThanksPage' => $entry->subtitleThanksPage,
                        'shareText' => $entry->shareText,
                        'infoWithShareLink' => $thankYouPage
                    ];
                },

            ];
        },
        'api/footer.json' => function () {
            return [
                'elementType' => GlobalSet::class,
                'criteria' => ['handle' => 'footer'],
                'pretty' => true,
                'paginate' => false,
                'transformer' => function (GlobalSet $entry) {
                    $footer = [];
                    $image = $entry->logotype->one();
                    foreach ($entry->getFieldValue('siteLink')->all() as $block) {
                        $footer[] = [
                            'linkName' => $block->linkName,
                            'linkBody' => $block->linkBody,
                        ];
                    }
                    return [
                        'phoneNumber' => $entry->phoneNumber,
                        'link' => $footer,
                        'image' => $image ? $image->url : null,
                    ];
                },
            ];
        }
    ]

];

