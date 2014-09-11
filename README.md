Open-ePlatform
==============

**All contents of this repository is licensed under the [AGPLv3 license](http://www.gnu.org/licenses/agpl-3.0.txt) and copyright the Swedish municipality of Härnösand.**

##Repository contents

This repository contains the projects that together form Open ePlatform release 1.0.0.

Here is a brief description of each project:

###AuthifyClient
A signing provider tailored for API of authify.com.

###BaseMapQuery
The base class for all types of map based query types.

###FlowEngine
The main engine in Open ePlatform responsible for all core functions.

###FlowInstancePDFGenerator
A PDFProvider that generates PDF/A documents for submitted and updated flow instances.

###mapclient-riges
Static content required for the map based query types.

###MinimalUserSAMLAdapter
A SAMLUserAdapter for the SAML login provider in OpenHierarchy.

###MultiGeometryMapQuery
A map based query type that supports multiple geometries.

###PBLKnowledgeBank
A module for looking up descriptive texts via the API from boverket.se.

###PUDMapQuery
A map based query that supports property unit designation lookups.

###PUDQuery
A simple query for looking up property unit designations

###SearchLMRMI
A simple RMI proxy for looking up property unit designation etc. via Open eMap.

###SinglePolygonMapQuery
A map based query type that supports single geometries.

##Dependencies
The projects above require the following depencies in order to build.

* The OpenHierarchy framework (openhierarchy.org)
* MinimalUser module (svn://svn.openhierarchy.org/openhierarchy/modules/minimaluser/trunk)
* SAMLLoginProvider module (svn://svn.openhierarchy.org/openhierarchy/modules/SAMLLoginProvider/trunk)
* SiteProfile module (svn://svn.openhierarchy.org/openhierarchy/modules/siteprofile/trunk)
* Various library projects (svn://unlogic.se/utils/libraries)
