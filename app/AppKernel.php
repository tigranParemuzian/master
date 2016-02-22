<?php

use Symfony\Component\HttpKernel\Kernel;
use Symfony\Component\Config\Loader\LoaderInterface;

class AppKernel extends Kernel
{
    public function registerBundles()
    {
        $bundles = array(
            new Symfony\Bundle\FrameworkBundle\FrameworkBundle(),
            new Symfony\Bundle\SecurityBundle\SecurityBundle(),
            new Symfony\Bundle\TwigBundle\TwigBundle(),
            new Symfony\Bundle\MonologBundle\MonologBundle(),
            new Symfony\Bundle\SwiftmailerBundle\SwiftmailerBundle(),
            new Symfony\Bundle\AsseticBundle\AsseticBundle(),
            new Doctrine\Bundle\DoctrineBundle\DoctrineBundle(),
            new Sensio\Bundle\FrameworkExtraBundle\SensioFrameworkExtraBundle(),
			new JMS\AopBundle\JMSAopBundle(),
			new JMS\DiExtraBundle\JMSDiExtraBundle($this),
			new JMS\SerializerBundle\JMSSerializerBundle($this),
			new JMS\SecurityExtraBundle\JMSSecurityExtraBundle(),
			new Doctrine\Bundle\MigrationsBundle\DoctrineMigrationsBundle(),
			// sonata
			new Sonata\BlockBundle\SonataBlockBundle(),
			new Sonata\AdminBundle\SonataAdminBundle(),
			new Sonata\EasyExtendsBundle\SonataEasyExtendsBundle(),
			new Sonata\IntlBundle\SonataIntlBundle(),
			new Sonata\DoctrineORMAdminBundle\SonataDoctrineORMAdminBundle(),
			new Sonata\MediaBundle\SonataMediaBundle(),
			new Sonata\CoreBundle\SonataCoreBundle(),

			new Bank\MainBundle\BankMainBundle(),
			new Bank\MediaBundle\BankMediaBundle(),
			new Bank\UserBundle\BankUserBundle(),
			new Sonata\UserBundle\SonataUserBundle('FOSUserBundle'),
			new Knp\Bundle\MenuBundle\KnpMenuBundle(),
			new FOS\UserBundle\FOSUserBundle(),
			new FOS\RestBundle\FOSRestBundle(),
			new Stof\DoctrineExtensionsBundle\StofDoctrineExtensionsBundle(),
			new A2lix\TranslationFormBundle\A2lixTranslationFormBundle(),
			new Stfalcon\Bundle\TinymceBundle\StfalconTinymceBundle(),
			new Presta\SitemapBundle\PrestaSitemapBundle(),
			new Knp\Bundle\PaginatorBundle\KnpPaginatorBundle(),
			new Trsteel\CkeditorBundle\TrsteelCkeditorBundle(),
			new Genemu\Bundle\FormBundle\GenemuFormBundle()
        );

        if (in_array($this->getEnvironment(), array('dev', 'test'))) {
            $bundles[] = new Symfony\Bundle\DebugBundle\DebugBundle();
            $bundles[] = new Symfony\Bundle\WebProfilerBundle\WebProfilerBundle();
            $bundles[] = new Sensio\Bundle\DistributionBundle\SensioDistributionBundle();
            $bundles[] = new Sensio\Bundle\GeneratorBundle\SensioGeneratorBundle();
        }

        return $bundles;
    }

    public function registerContainerConfiguration(LoaderInterface $loader)
    {
        $loader->load($this->getRootDir().'/config/config_'.$this->getEnvironment().'.yml');
    }
}
