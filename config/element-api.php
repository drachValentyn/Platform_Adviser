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


                        foreach ($block->getFieldValue('comparisonsItems')->all() as $comparison) {
                            $comparass = [];
                            foreach ($comparison->getFieldValue('comparisons')->all() as $compare) {

                                foreach ($compare->getFieldValue('comparisonsName')->all() as $compareitem) {

                                };
                                $stars = $compare->stars->one();
                                $dollars = $compare->dollars->one();
                                $comparass[] = [
                                    'comparisonsNameTitle' => $compareitem->title,
                                    'text' => $compare-> text,
                                    'dollars' => $dollars ? $dollars->url : null,
                                    'stars' => $stars ? $stars->url : null,
                                ];
//                                sort($comparass);
//                                foreach ($comparass as $key=>$val) {
//                                    $arrSort[$key] = $val;
//                                }

                            }
                        }

                        $platformsBlock[] = [
                            //'platformsEntries' =>$block,
                            'platformsEntries' => $block->title,
                            'descr'=>$platformsDesc,
                            'comparass'=>$comparass,
                        ];

                    }
                    return [
                        'titlePage' => $entry->titlePage,
                        'titleForm' => $entry->titleForm,
                        'phoneNumber' => $entry->phoneNumber,
                        'platformsBlock' => $platformsBlock,
                    ];
                }

            ];
        },
        'api/connectResult.json' => function () {
            return [
                'elementType' => Entry::class,
                'criteria' => [ 'section' => 'connectResult'],
                'pretty' => true,
//                'transformer' => function(Entry $entry) {
////                    return [
////                        'pageTitle' => $entry->title,
////                        'mainTitle' => $entry->mainTitle,
////                        'description' => $entry->description,
////                        'caption' => $entry->caption,
////                    ];
//                }

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

