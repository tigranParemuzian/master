<?php

namespace Bank\MainBundle\DoctrineListeners;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Event\GetResponseForExceptionEvent;
use Symfony\Component\HttpKernel\Exception\HttpExceptionInterface;

class EventListener
{
    protected $container;

    public function __construct($container)
    {
        $this->container = $container;
    }

	public function onKernelException(GetResponseForExceptionEvent $event)
	{
		// You get the exception object from the received event
		$exception = $event->getException();
		$message = sprintf(
			"
		<div style='color: #a5013c; text-align: center;
		 background: #FFF 30%;'>



		<h1 style='margin: 0;
					font-size: xx-large'>SORRY</h1>
		<h1 style='margin: 0;
					font-size: xx-large'>".$exception->getMessage()."</h1>
		</div>",
			$exception->getMessage()

		);

		// Customize your response object to display the exception details
		$response = new Response();
		$response->setContent($message);

		// HttpExceptionInterface is a special type of exception that
		// holds status code and header details
		if ($exception instanceof HttpExceptionInterface) {
			$response->setStatusCode($exception->getStatusCode());
			$response->headers->replace($exception->getHeaders());
		} else {
			$response->setStatusCode(Response::HTTP_INTERNAL_SERVER_ERROR);
		}

		// Send the modified response object to the event
		$event->setResponse($response);
	}
}