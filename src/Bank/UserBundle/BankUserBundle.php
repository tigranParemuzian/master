<?php

namespace Bank\UserBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class BankUserBundle extends Bundle
{
  public function getParent()
    {
        return 'SonataUserBundle';
    }
}
