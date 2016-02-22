<?php

namespace Bank\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Context\ExecutionContextInterface;

/**
 * Cameras
 *
 * @ORM\Table(name="cameras")
 * @ORM\Entity
 * @ORM\HasLifecycleCallbacks()
 */
class Cameras
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
     * @Gedmo\Slug(fields={"name"})
     * @ORM\Column(name="slag", type="string", length=255, unique=true)
     */
    private $slag;

    /**
     * @var string
     *
     * @ORM\Column(name="url", type="string", length=255)
     */
    private $url;

    /**
     * @var string
     *
     * @ORM\Column(name="directory", type="string", length=255)
     */
    private $directory;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;

    /**
     * @ORM\ManyToOne(targetEntity="Bank\MainBundle\Entity\Department", inversedBy="cameras")
     * @ORM\JoinColumn(name="department_id", referencedColumnName="id")
     */
    private $department;

    /**
     * @ORM\ManyToOne(targetEntity="Bank\MainBundle\Entity\Enter", inversedBy="cameras")
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
     * @return Cameras
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
     * Set slag
     *
     * @param string $slag
     * @return Cameras
     */
    public function setSlag($slag)
    {
        $this->slag = $slag;

        return $this;
    }

    /**
     * Get slag
     *
     * @return string 
     */
    public function getSlag()
    {
        return $this->slag;
    }

    /**
     * Set url
     *
     * @param string $url
     * @return Cameras
     */
    public function setUrl($url)
    {
        $this->url = $url;

        return $this;
    }

    /**
     * Get url
     *
     * @return string 
     */
    public function getUrl()
    {
        return $this->url;
    }

    /**
     * Set directory
     *
     * @param string $directory
     * @return Cameras
     */
    public function setDirectory($directory)
    {
        $this->directory = $directory;

        return $this;
    }

    /**
     * Get directory
     *
     * @return string 
     */
    public function getDirectory()
    {
        return $this->directory;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Cameras
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
     * Set department
     *
     * @param \Bank\MainBundle\Entity\Department $department
     * @return Cameras
     */
    public function setDepartment(\Bank\MainBundle\Entity\Department $department = null)
    {
        $this->department = $department;

        return $this;
    }

    /**
     * Get department
     *
     * @return \Bank\MainBundle\Entity\Department 
     */
    public function getDepartment()
    {
        return $this->department;
    }

    /**
     * Set enter
     *
     * @param \Bank\MainBundle\Entity\Enter $enter
     * @return Cameras
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
