<?php

namespace App\Enums;

use BenSampo\Enum\Enum;

/**
 * @method static static OptionOne()
 * @method static static OptionTwo()
 * @method static static OptionThree()
 */
final class FixtureStatus extends Enum
{
    const TBS       = 0;  // to be start
    const STARTED   = 1;   
    const SUSPENDED   = 2;   
    const FINISHED  = 3;
    const DRAW      = 4;
    const CANCELLED = 5;
    const POSTPONED = 6;
}
