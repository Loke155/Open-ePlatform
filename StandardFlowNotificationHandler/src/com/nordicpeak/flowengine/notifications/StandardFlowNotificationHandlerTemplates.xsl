<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" version="4.0" encoding="ISO-8859-1"/>

	<xsl:include href="classpath://se/unlogic/hierarchy/core/utils/xsl/Common.xsl"/>

	<xsl:include href="classpath://se/unlogic/hierarchy/core/utils/xsl/CKEditor.xsl"/>

	<xsl:variable name="globalscripts">
		/jquery/jquery.js
		/ckeditor/ckeditor.js
		/ckeditor/adapters/jquery.js
		/ckeditor/init.js
	</xsl:variable>	

	<xsl:variable name="scripts">
		/js/notificationhandler.js
	</xsl:variable>	

	<xsl:template match="Document">	
		
		<xsl:apply-templates select="ShowSettings"/>
		<xsl:apply-templates select="UpdateSettings"/>
		
	</xsl:template>
		
	<xsl:template match="ShowSettings">
	
		<xsl:if test="NotificationSettings/HasEnabledUserNotifications">
		
			<span class="bold"><xsl:value-of select="$i18n.UserNotifications"/></span>
		
			<ul class="nomargin">

				<xsl:if test="NotificationSettings/sendStatusChangedUserSMS = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendStatusChangedUserSMS"/>
					</li>
				</xsl:if>

				<xsl:if test="NotificationSettings/sendExternalMessageReceivedUserSMS = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendExternalMessageReceivedUserSMS"/>
					</li>
				</xsl:if>
				
				<xsl:if test="NotificationSettings/sendFlowInstanceSubmittedUserSMS = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendFlowInstanceSubmittedUserSMS"/>
					</li>
				</xsl:if>
				
				<xsl:if test="NotificationSettings/sendFlowInstanceArchivedUserSMS = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendFlowInstanceArchivedUserSMS"/>
					</li>
				</xsl:if>
				
				<xsl:if test="NotificationSettings/sendStatusChangedUserEmail = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendStatusChangedUserEmail"/>
					</li>
				</xsl:if>
				
				<xsl:if test="NotificationSettings/sendExternalMessageReceivedUserEmail = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendExternalMessageReceivedUserEmail"/>
					</li>
				</xsl:if>
				
				<xsl:if test="NotificationSettings/sendFlowInstanceSubmittedUserEmail = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendFlowInstanceSubmittedUserEmail"/>
					</li>
				</xsl:if>
				
				<xsl:if test="NotificationSettings/sendFlowInstanceArchivedUserEmail = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendFlowInstanceArchivedUserEmail"/>
					</li>
				</xsl:if>

  			</ul>
		
		</xsl:if>
		
		<xsl:if test="NotificationSettings/HasEnabledManagerNotifications">
		
			<xsl:if test="NotificationSettings/HasEnabledUserNotifications">
				<br/>
			</xsl:if>
		
			<span class="bold"><xsl:value-of select="$i18n.ManagerNotifications"/></span>
		
			<ul class="nomargin">

				<xsl:if test="NotificationSettings/sendExternalMessageReceivedManagerEmail = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendExternalMessageReceivedManagerEmail"/>
					</li>
				</xsl:if>
				
				<xsl:if test="NotificationSettings/sendFlowInstanceAssignedManagerEmail = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendFlowInstanceAssignedManagerEmail"/>
					</li>
				</xsl:if>
				
				<xsl:if test="NotificationSettings/sendStatusChangedManagerEmail = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendStatusChangedManagerEmail"/>
					</li>
				</xsl:if>
				
				<xsl:if test="NotificationSettings/sendFlowInstanceSubmittedManagerEmail = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendFlowInstanceSubmittedManagerEmail"/>
					</li>
				</xsl:if>
			
			</ul>
		
		</xsl:if>
		
		<xsl:if test="NotificationSettings/HasEnabledGlobalNotifications">
		
			<xsl:if test="NotificationSettings/HasEnabledUserNotifications or NotificationSettings/HasEnabledManagerNotifications">
				<br/>
			</xsl:if>
		
			<span class="bold"><xsl:value-of select="$i18n.GlobalNotifications"/></span>
		
			<ul class="nomargin">

				<xsl:if test="NotificationSettings/sendFlowInstanceSubmittedGlobalEmail = 'true'">
					<li>
						<xsl:value-of select="$i18n.SendFlowInstanceSubmittedGlobalEmail"/>
					</li>
				</xsl:if>
			
			</ul>
		
		</xsl:if>		
		
		<xsl:if test="not(NotificationSettings/HasEnabledUserNotifications) and not(NotificationSettings/HasEnabledManagerNotifications) and not(NotificationSettings/HasEnabledGlobalNotifications)">
		
			<p class="nomargin"><xsl:value-of select="$i18n.NoNotificationsEnabled"/></p>
		
		</xsl:if>		
		
	</xsl:template>

	<xsl:template match="UpdateSettings">
	
		<br/>
	
		<xsl:apply-templates select="validationException/validationError"/>
		
		<xsl:if test="validationException/validationError">
		
			<br/>
		
		</xsl:if>
	
		<h2><xsl:value-of select="$i18n.UserNotifications"/></h2>
		
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendStatusChangedUserSMS'" />
					<xsl:with-param name="id" select="'sendStatusChangedUserSMS'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendStatusChangedUserSMS">
					<xsl:value-of select="$i18n.SendStatusChangedUserSMS" />
				</label>				
			</div>
		</div>
		
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendExternalMessageReceivedUserSMS'" />
					<xsl:with-param name="id" select="'sendExternalMessageReceivedUserSMS'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendExternalMessageReceivedUserSMS">
					<xsl:value-of select="$i18n.SendExternalMessageReceivedUserSMS" />
				</label>				
			</div>
		</div>
		
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendFlowInstanceSubmittedUserSMS'" />
					<xsl:with-param name="id" select="'sendFlowInstanceSubmittedUserSMS'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendFlowInstanceSubmittedUserSMS">
					<xsl:value-of select="$i18n.SendFlowInstanceSubmittedUserSMS" />
				</label>				
			</div>
		</div>
		
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendFlowInstanceArchivedUserSMS'" />
					<xsl:with-param name="id" select="'sendFlowInstanceArchivedUserSMS'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendFlowInstanceArchivedUserSMS">
					<xsl:value-of select="$i18n.SendFlowInstanceArchivedUserSMS" />
				</label>				
			</div>
		</div>			
	
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendStatusChangedUserEmail'" />
					<xsl:with-param name="id" select="'sendStatusChangedUserEmail'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendStatusChangedUserEmail">
					<xsl:value-of select="$i18n.SendStatusChangedUserEmail" />
				</label>				
			</div>
		</div>
		
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendExternalMessageReceivedUserEmail'" />
					<xsl:with-param name="id" select="'sendExternalMessageReceivedUserEmail'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendExternalMessageReceivedUserEmail">
					<xsl:value-of select="$i18n.SendExternalMessageReceivedUserEmail" />
				</label>				
			</div>
		</div>
		
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendFlowInstanceSubmittedUserEmail'" />
					<xsl:with-param name="id" select="'sendFlowInstanceSubmittedUserEmail'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendFlowInstanceSubmittedUserEmail">
					<xsl:value-of select="$i18n.SendFlowInstanceSubmittedUserEmail" />
				</label>
				<xsl:text>&#160;</xsl:text>
				<span class="tiny"><a onclick="toggleSubmit();"><xsl:value-of select="$i18n.ToggleTexts" /></a></span>
								
			</div>
		</div>
		
		<div class="floatleft full bigmarginbottom" id="submit-subject">
		
			<xsl:if test="not(validationException/validationError/fieldName = 'flowInstanceSubmittedUserEmailSubject') and not(validationException/validationError/fieldName = 'flowInstanceSubmittedUserEmailMessage')">
				<xsl:attribute name="class">floatleft full bigmarginbottom hidden</xsl:attribute>
			</xsl:if>
		
			<label for="flowInstanceSubmittedUserEmailSubject" class="floatleft full">
				<xsl:value-of select="$i18n.FlowInstanceSubmittedUserEmailSubject" />
			</label>
			
			<div class="floatleft full">
				<xsl:call-template name="createTextField">
					<xsl:with-param name="id" select="'flowInstanceSubmittedUserEmailSubject'"/>
					<xsl:with-param name="name" select="'flowInstanceSubmittedUserEmailSubject'"/>
					<xsl:with-param name="element" select="NotificationSettings" />          
				</xsl:call-template>
			</div>
		</div>				
		
		<div class="floatleft full bigmarginbottom" id="submit-message">
			
			<xsl:if test="not(validationException/validationError/fieldName = 'flowInstanceSubmittedUserEmailSubject') and not(validationException/validationError/fieldName = 'flowInstanceSubmittedUserEmailMessage')">
				<xsl:attribute name="class">floatleft full bigmarginbottom hidden</xsl:attribute>
			</xsl:if>			
			
			<label for="flowInstanceSubmittedUserEmailMessage" class="floatleft full">
				<xsl:value-of select="$i18n.FlowInstanceSubmittedUserEmailMessage" />
			</label>
			
			<div class="floatleft full">

				<xsl:call-template name="createTextArea">
					<xsl:with-param name="id" select="'flowInstanceSubmittedUserEmailMessage'"/>
					<xsl:with-param name="name" select="'flowInstanceSubmittedUserEmailMessage'"/>
					<xsl:with-param name="class" select="'flow-ckeditor'"/>
					<xsl:with-param name="element" select="NotificationSettings" />		
				</xsl:call-template>									
										
			</div>
			
			<xsl:call-template name="addUserTagsTable"/>
		</div>			
		
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendFlowInstanceArchivedUserEmail'" />
					<xsl:with-param name="id" select="'sendFlowInstanceArchivedUserEmail'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendFlowInstanceArchivedUserEmail">
					<xsl:value-of select="$i18n.SendFlowInstanceArchivedUserEmail" />
				</label>
				<xsl:text>&#160;</xsl:text>
				<span class="tiny"><a onclick="toggleArchived();"><xsl:value-of select="$i18n.ToggleTexts" /></a></span>							
			</div>
		</div>
		
		<div class="floatleft full bigmarginbottom" id="archived-subject">
		
			<xsl:if test="not(validationException/validationError/fieldName = 'flowInstanceArchivedUserEmailSubject') and not(validationException/validationError/fieldName = 'flowInstanceArchivedUserEmailMessage')">
				<xsl:attribute name="class">floatleft full bigmarginbottom hidden</xsl:attribute>
			</xsl:if>		
		
			<label for="flowInstanceArchivedUserEmailSubject" class="floatleft full">
				<xsl:value-of select="$i18n.FlowInstanceArchivedUserEmailSubject" />
			</label>
			
			<div class="floatleft full">
				<xsl:call-template name="createTextField">
					<xsl:with-param name="id" select="'flowInstanceArchivedUserEmailSubject'"/>
					<xsl:with-param name="name" select="'flowInstanceArchivedUserEmailSubject'"/>
					<xsl:with-param name="element" select="NotificationSettings" />          
				</xsl:call-template>
			</div>
		</div>
		
		<div class="floatleft full bigmarginbottom" id="archived-message">
			
			<xsl:if test="not(validationException/validationError/fieldName = 'flowInstanceArchivedUserEmailSubject') and not(validationException/validationError/fieldName = 'flowInstanceArchivedUserEmailMessage')">
				<xsl:attribute name="class">floatleft full bigmarginbottom hidden</xsl:attribute>
			</xsl:if>	
			
			<label for="flowInstanceArchivedUserEmailMessage" class="floatleft full">
				<xsl:value-of select="$i18n.FlowInstanceArchivedUserEmailMessage" />
			</label>
			
			<div class="floatleft full">

				<xsl:call-template name="createTextArea">
					<xsl:with-param name="id" select="'flowInstanceArchivedUserEmailMessage'"/>
					<xsl:with-param name="name" select="'flowInstanceArchivedUserEmailMessage'"/>
					<xsl:with-param name="class" select="'flow-ckeditor'"/>
					<xsl:with-param name="element" select="NotificationSettings" />		
				</xsl:call-template>									
										
			</div>
			
			<xsl:call-template name="addUserTagsTable"/>
		</div>							
		
		<div class="clearboth marginbottom">
			<br/>
		</div>
		
		<h2><xsl:value-of select="$i18n.ManagerNotifications"/></h2>
	
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendExternalMessageReceivedManagerEmail'" />
					<xsl:with-param name="id" select="'sendExternalMessageReceivedManagerEmail'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendExternalMessageReceivedManagerEmail">
					<xsl:value-of select="$i18n.SendExternalMessageReceivedManagerEmail" />
				</label>				
			</div>
		</div>	
	
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendFlowInstanceAssignedManagerEmail'" />
					<xsl:with-param name="id" select="'sendFlowInstanceAssignedManagerEmail'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendFlowInstanceAssignedManagerEmail">
					<xsl:value-of select="$i18n.SendFlowInstanceAssignedManagerEmail" />
				</label>				
			</div>
		</div>
		
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendStatusChangedManagerEmail'" />
					<xsl:with-param name="id" select="'sendStatusChangedManagerEmail'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendStatusChangedManagerEmail">
					<xsl:value-of select="$i18n.SendStatusChangedManagerEmail" />
				</label>				
			</div>
		</div>
		
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendFlowInstanceSubmittedManagerEmail'" />
					<xsl:with-param name="id" select="'sendFlowInstanceSubmittedManagerEmail'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendFlowInstanceSubmittedManagerEmail">
					<xsl:value-of select="$i18n.SendFlowInstanceSubmittedManagerEmail" />
				</label>				
			</div>
		</div>				
	
		<div class="clearboth marginbottom">
			<br/>
		</div>
	
		<h2><xsl:value-of select="$i18n.GlobalNotifications"/></h2>
		
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'sendFlowInstanceSubmittedGlobalEmail'" />
					<xsl:with-param name="id" select="'sendFlowInstanceSubmittedGlobalEmail'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendFlowInstanceSubmittedGlobalEmail">
					<xsl:value-of select="$i18n.SendFlowInstanceSubmittedGlobalEmail" />
				</label>				
			</div>
		</div>		
		
		<div class="floatleft full bigmarginbottom">
		
			<label for="flowInstanceSubmittedGlobalEmailAddress" class="floatleft full">
				<xsl:value-of select="$i18n.FlowInstanceSubmittedGlobalEmailAddress" />
			</label>
			
			<div class="floatleft full">
				<xsl:call-template name="createTextField">
					<xsl:with-param name="id" select="'flowInstanceSubmittedGlobalEmailAddress'"/>
					<xsl:with-param name="name" select="'flowInstanceSubmittedGlobalEmailAddress'"/>
					<xsl:with-param name="element" select="NotificationSettings" />          
				</xsl:call-template>
			</div>
		</div>			
	
		<div class="floatleft full bigmarginbottom margintop internal">
		
			<div class="floatleft">
				<xsl:call-template name="createCheckbox">
					<xsl:with-param name="name" select="'flowInstanceSubmittedGlobalEmailAttachPDF'" />
					<xsl:with-param name="id" select="'flowInstanceSubmittedGlobalEmailAttachPDF'" />
					<xsl:with-param name="element" select="NotificationSettings" />       
				</xsl:call-template>
				
				<label for="sendFlowInstanceAssignedManagerEmail">
					<xsl:value-of select="$i18n.FlowInstanceSubmittedGlobalEmailAttachPDF" />
				</label>				
			</div>
		</div>	
	
		<xsl:call-template name="initializeFCKEditor">
			<xsl:with-param name="basePath"><xsl:value-of select="/Document/requestinfo/contextpath"/>/static/f/<xsl:value-of select="/Document/module/sectionID"/>/<xsl:value-of select="/Document/module/moduleID"/>/ckeditor/</xsl:with-param>
			<xsl:with-param name="customConfig">config.js</xsl:with-param>
			<xsl:with-param name="editorContainerClass">flow-ckeditor</xsl:with-param>
			<xsl:with-param name="editorHeight">150</xsl:with-param>
			<xsl:with-param name="contentsCss">
				<xsl:if test="/Document/cssPath">
					<xsl:value-of select="/Document/cssPath"/>
				</xsl:if>
			</xsl:with-param>
		</xsl:call-template>	
	
	</xsl:template>
	
	<xsl:template name="addUserTagsTable">
	
		<div class="floatleft margintop full">

			<p><xsl:value-of select="$i18n.UserTagsTable.description"/></p>
		
			<table class="full border">
				<tr>
					<th>
						<xsl:value-of select="$i18n.Tag"/>
					</th>
					<th>
						<xsl:value-of select="$i18n.Description"/>
					</th>
				</tr>
				<tr>
					<td>
						<xsl:text>$flow.name</xsl:text>
					</td>
					<td>
						<xsl:value-of select="$i18n.FlowNameTag"/>
					</td>
				</tr>
				<tr>
					<td>
						<xsl:text>$flowInstance.flowInstanceID</xsl:text>
					</td>
					<td>
						<xsl:value-of select="$i18n.FlowInstanceIDTag"/>
					</td>
				</tr>
				<tr>
					<td>
						<xsl:text>$flowInstance.url</xsl:text>
					</td>
					<td>
						<xsl:value-of select="$i18n.FlowInstanceURLTag"/>
					</td>
				</tr>
				<tr>
					<td>
						<xsl:text>$status.name</xsl:text>
					</td>
					<td>
						<xsl:value-of select="$i18n.StatusTag"/>
					</td>
				</tr>
				<tr>
					<td>
						<xsl:text>$contact.firstname</xsl:text>
					</td>
					<td>
						<xsl:value-of select="$i18n.PosterFirstnameTag"/>
					</td>
				</tr>
				<tr>
					<td>
						<xsl:text>$contact.lastname</xsl:text>
					</td>
					<td>
						<xsl:value-of select="$i18n.PosterLastnameTag"/>
					</td>
				</tr>			
			</table>
		
		</div>
	
	</xsl:template>
	
	<xsl:template match="validationError">
		<xsl:if test="fieldName and validationErrorType and not(messageKey)">
			<p class="error">
				<xsl:choose>
					<xsl:when test="validationErrorType='RequiredField'">
						<xsl:value-of select="$i18n.validation.requiredField" />
					</xsl:when>
					<xsl:when test="validationErrorType='InvalidFormat'">
						<xsl:value-of select="$i18n.validation.invalidFormat" />
					</xsl:when>
					<xsl:when test="validationErrorType='TooShort'">
						<xsl:value-of select="$i18n.validation.tooShort" />
					</xsl:when>
					<xsl:when test="validationErrorType='TooLong'">
						<xsl:value-of select="$i18n.validation.tooLong" />
					</xsl:when>														
					<xsl:otherwise>
						<xsl:value-of select="$i18n.validation.unknownError" />
					</xsl:otherwise>
				</xsl:choose>
				
				<xsl:text>&#x20;</xsl:text>
				
				<xsl:choose>
					<xsl:when test="fieldName = 'flowInstanceSubmittedUserEmailSubject'">
						<xsl:value-of select="$i18n.FlowInstanceSubmittedUserEmailSubject"/>
					</xsl:when>
					<xsl:when test="fieldName = 'flowInstanceSubmittedUserEmailMessage'">
						<xsl:value-of select="$i18n.FlowInstanceSubmittedUserEmailMessage"/>
					</xsl:when>
					<xsl:when test="fieldName = 'flowInstanceArchivedUserEmailSubject'">
						<xsl:value-of select="$i18n.FlowInstanceArchivedUserEmailSubject"/>
					</xsl:when>
					<xsl:when test="fieldName = 'flowInstanceArchivedUserEmailMessage'">
						<xsl:value-of select="$i18n.FlowInstanceArchivedUserEmailMessage"/>
					</xsl:when>
					<xsl:when test="fieldName = 'flowInstanceSubmittedGlobalEmailAddress'">
						<xsl:value-of select="$i18n.FlowInstanceSubmittedGlobalEmailAddress"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="fieldName"/>
					</xsl:otherwise>
				</xsl:choose>			
			</p>
		</xsl:if>
		
		<xsl:if test="messageKey">
			<p class="error">
				<xsl:value-of select="$i18n.validation.unknownFault" />
			</p>
		</xsl:if>
		
	</xsl:template>		

</xsl:stylesheet>