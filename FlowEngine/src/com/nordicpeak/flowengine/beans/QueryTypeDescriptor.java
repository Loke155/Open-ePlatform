package com.nordicpeak.flowengine.beans;

import se.unlogic.standardutils.string.StringUtils;
import se.unlogic.standardutils.xml.GeneratedElementable;
import se.unlogic.standardutils.xml.XMLElement;

@XMLElement
public final class QueryTypeDescriptor extends GeneratedElementable {

	@XMLElement
	private final String queryTypeID;

	@XMLElement
	private final String name;
	
	//Group on type of query. 
	@XMLElement
	private final Boolean specialQuery;
	
	@XMLElement
	private final String description;

	public QueryTypeDescriptor(String queryTypeID, String name, Boolean specialQuery, String description) {

		super();

		if (StringUtils.isEmpty(queryTypeID)) {

			throw new RuntimeException("queryTypeID cannot be null or empty");
		}

		this.queryTypeID = queryTypeID;
		this.name = name;
		this.specialQuery = specialQuery;
		this.description = description;
	}
	
	public QueryTypeDescriptor(String queryTypeID, String name) {
		super();

		if (StringUtils.isEmpty(queryTypeID)) {

			throw new RuntimeException("queryTypeID cannot be null or empty");
		}

		this.queryTypeID = queryTypeID;
		this.name = name;
		this.specialQuery = false;
		this.description = "";
	}


	public String getQueryTypeID() {

		return queryTypeID;
	}

	public String getName() {

		return name;
	}

	@Override
	public int hashCode() {

		final int prime = 31;
		int result = 1;
		result = prime * result + ((queryTypeID == null) ? 0 : queryTypeID.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {

		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		QueryTypeDescriptor other = (QueryTypeDescriptor) obj;
		if (queryTypeID == null) {
			if (other.queryTypeID != null) {
				return false;
			}
		} else if (!queryTypeID.equals(other.queryTypeID)) {
			return false;
		}
		return true;
	}

	public Boolean getSpecialQuery() {
		return specialQuery;
	}

	public String getDescription() {
		return description;
	}

}
