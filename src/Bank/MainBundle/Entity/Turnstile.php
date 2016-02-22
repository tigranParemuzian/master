<?php

namespace Bank\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Turnstile
 *
 * @ORM\Table(name="turnstile")
 * @ORM\Entity
 * @ORM\HasLifecycleCallbacks()
 */
class Turnstile
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;

    /**
     * @var integer
     *
     * @ORM\Column(name="number", type="integer", unique=true, nullable=false)
     */
    private $number;

    /**
     * @ORM\ManyToOne(targetEntity="Bank\MainBundle\Entity\Enter", inversedBy="turnstile")
     * @ORM\JoinColumn(name="enter_id", referencedColumnName="id")
     */
    private $enter;

    function __toString()
    {
        return   $this->name ? $this->name : '';
    }


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name
     *
     * @param string $name
     * @return Turnstile
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Turnstile
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string 
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set number
     *
     * @param integer $number
     * @return Turnstile
     */
    public function setNumber($number)
    {
        $this->number = $number;

        return $this;
    }

    /**
     * Get number
     *
     * @return integer 
     */
    public function getNumber()
    {
        return $this->number;
    }

    /**
     * Set enter
     *
     * @param \Bank\MainBundle\Entity\Enter $enter
     * @return Turnstile
     */
    public function setEnter(\Bank\MainBundle\Entity\Enter $enter = null)
    {
        $this->enter = $enter;

        return $this;
    }

    /**
     * Get enter
     *
     * @return \Bank\MainBundle\Entity\Enter 
     */
    public function getEnter()
    {
        return $this->enter;
    }
}
