<?php

//namespace  Craft;
use craft\elements\Entry;
use craft\helpers\UrlHelper;


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
                    $logo = $entry->image->one();
                    foreach ($entry->getFieldValue('platformsEntries')->all() as $block) {
                        $platformsDesc=[];

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

                                foreach ($compare->getFieldValue('comparisonsName')->all() as $compareitem) {

                                };
                                $stars = $compare->stars->one();
                                $dollars = $compare->dollars->one();
                                $comparison[] = [
                                    'comparisonsNameTitle' => $compareitem->title,
                                    'text' => $compare-> text,
                                    'dollars' => $dollars ? $dollars->url : null,
                                    'stars' => $stars ? $stars->url : null,
                                    'sequenceNumber' => $compareitem->sequenceNumber,
                                ];
                                usort($comparison, function($a, $b) {
                                    return $a['sequenceNumber'] - $b['sequenceNumber'];
                                });
                            }
                        }

                        $platformsBlock[] = [
                            //'platformsEntries' =>$block,
                            'platformsEntries' => $block->title,
                            'descr'=>$platformsDesc,
                            'comparison'=>$comparison,
                        ];

                    }
                    return [
                        'titlePage' => $entry->titlePage,
                        'titleForm' => $entry->titleForm,
                        'logo' => $logo ? $logo->url : null,
                        'phoneNumber' => $entry->phoneNumber,
                        'platformsBlock' => $platformsBlock,
                    ];
                }

            ];
        },
        'api/questions.json' => function () {
            return [
                'elementType' => Entry::class,
                'criteria' => ['section' => 'questions'],
                'pretty' => true,
                'paginate' => false,
                'transformer' => function(Entry $entry) {
                    $answerBlocks = [];
                    foreach ($entry->getFieldValue('answer')->all() as $block) {
                        $answer = [];
                        foreach ($block->getFieldValue('pointsTable')->all() as $pointsTable) {
                            foreach ($pointsTable->getFieldValue('platform')->all() as  $platform) {}
                            $answer[] = [
                                'title' => $platform->title,

                                'point' => (int)$pointsTable->points,
                            ];
                        }
                        $answerBlocks[] = [
                            'answer' => $block -> answers,
                            'id_answer' => $block->uid,
                            'answerPoint' => $answer,
                        ];
                    }
                    return [
                        'question' => $entry->title,
                        'answers' => $answerBlocks,
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
                'transformer' => function(Entry $entry) {
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
        }
    ]

];

