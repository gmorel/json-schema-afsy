<?php

namespace Gmorel\Test\Functional\Context;

use Behat\Behat\Context\Context;

/**
 * @author Guillaume MOREL <guillaume.morel@verylastroom.com>
 */
class FeatureContext implements Context
{
    /**
     * @Given I'm not authenticated
     */
    public function iAmNotAuthenticated()
    {
        // Do nothing
    }

    /**
     * @When if you read this step, you must be very determined
     */
    public function areYouDetermined()
    {
        // Do nothing
    }
}
