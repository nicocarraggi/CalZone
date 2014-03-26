package com.vub.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/** 
 * 
 * @author Nicolas
 *
 */

@Entity
@Table(name="GENERATED_KEY")
public class Key {
	
	@Id
	@Column(name="KeyString")
	private String keyString;
	
	@Column(name="KeyPermission")
	private KeyPermissionEnum keyPermission;
	
	@ManyToOne
	private User user;
	
	/**
	 * Enumeration which contains every field
	 * @author Sam
	 *
	 */
	public static enum KeyPermissionEnum {
		Activation, PasswordReset
	}
	
	/**
	 * @return Returns the keystring of this key (which is the actual key)
	 */
	public String getKey() {
		return keyString;
	}
	/**
	 * @param keyString Sets the key of this object (MUST BE UNIQUE!)
	 */
	public void setKey(String keyString) {
		this.keyString = keyString;
	}
	/**
	 * @return Returns the permissions of this key (i.e. where it can be used)
	 */
	public KeyPermissionEnum getKeyPermission() {
		return keyPermission;
	}
	/**
	 * Sets in which scenario this key can be used
	 * @param keyPermission
	 */
	public void setKeyPermission(KeyPermissionEnum keyPermission) {
		this.keyPermission = keyPermission;
	}
	/**
	 * @return Returns the User who can use this key
	 */
	public User getUser() {
		return user;
	}
	/**
	 * Sets the only User who can use this key
	 * @param user
	 */
	public void setUser(User user) {
		this.user = user;
	}
}

