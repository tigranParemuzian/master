<?php
namespace Bank\UserBundle\Entity;

use Sonata\UserBundle\Entity\BaseUser as BaseUser;
use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="fos_user")
 */
class User extends BaseUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @var
     * @Assert\NotBlank(groups={"Registration","Profile"})
     * @Assert\Regex(pattern="((?=^.{10,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$)", groups={"Registration","Profile"})
     */
    protected $plainPassword;
//
//	/**
//	 * @ORM\OneToMany(targetEntity="Bank\MainBundle\Entity\Branch", mappedBy="user")
//	 */
//	protected $branch;

    /**
     * Constructor
     */
    public function __construct()
    {
		parent::__construct();
//		$this->branch = new \Doctrine\Common\Collections\ArrayCollection();
        $this->groups = new \Doctrine\Common\Collections\ArrayCollection();
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
}