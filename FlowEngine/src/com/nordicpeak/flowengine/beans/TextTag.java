package com.nordicpeak.flowengine.beans;

import se.unlogic.standardutils.annotations.WebPopulate;
import se.unlogic.standardutils.dao.annotations.DAOManaged;
import se.unlogic.standardutils.dao.annotations.Key;
import se.unlogic.standardutils.dao.annotations.Table;
import se.unlogic.standardutils.xml.GeneratedElementable;
import se.unlogic.standardutils.xml.XMLElement;

import com.nordicpeak.flowengine.enums.TextTagType;

@Table(name = "flowengine_text_tags")
@XMLElement
public class TextTag extends GeneratedElementable {

	@Key
	@DAOManaged(autoGenerated = true)
	@XMLElement
	private Integer textTagID;

	@WebPopulate(required = true, maxLength = 255)
	@DAOManaged
	@XMLElement
	private String name;

	@WebPopulate(maxLength = 255)
	@DAOManaged
	@XMLElement
	private String description;

	@WebPopulate(maxLength = 65535)
	@DAOManaged
	@XMLElement
	private String defaultValue;

	@WebPopulate(required = true)
	@DAOManaged
	@XMLElement
	private TextTagType type;

	public Integer getTextTagID() {

		return textTagID;
	}

	public void setTextTagID(Integer textTagID) {

		this.textTagID = textTagID;
	}

	public String getName() {

		return name;
	}

	public void setName(String name) {

		this.name = name;
	}

	public String getDescription() {

		return description;
	}

	public void setDescription(String description) {

		this.description = description;
	}

	public String getDefaultValue() {

		return defaultValue;
	}

	public void setDefaultValue(String defaultValue) {

		this.defaultValue = defaultValue;
	}

	public TextTagType getType() {

		return type;
	}

	public void setType(TextTagType type) {

		this.type = type;
	}

	@Override
	public String toString() {

		return name;
	}

}
