<?php

namespace app\models;

use yii\base\Model;

class EntryForm extends Model
{
    public $name;
    public $email;
    public $describe;

    public function rules()
    {
        return parent::rules(); // TODO: Change the autogenerated stub
    }
}
