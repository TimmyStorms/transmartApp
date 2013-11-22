<!--
  tranSMART - translational medicine data mart
  
  Copyright 2008-2012 Janssen Research & Development, LLC.
  
  This product includes software developed at Janssen Research & Development, LLC.
  
  This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License 
  as published by the Free Software  * Foundation, either version 3 of the License, or (at your option) any later version, along with the following terms:
  1.	You may convey a work based on this program in accordance with section 5, provided that you retain the above notices.
  2.	You may convey verbatim copies of this program code as you receive it, in any medium, provided that you retain the above notices.
  
  This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS    * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public License along with this program.  If not, see http://www.gnu.org/licenses/.
  
 
-->

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="layout" content="admin" />
		<title>Create User</title>
	</head>

	<body>
		<div class="body">
			<h1>Create User</h1>
			<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${person}">
			<div class="errors">
				<g:renderErrors bean="${person}" as="list" />
			</div>
			</g:hasErrors>
			<g:form action="save">
				<div class="dialog">
					<table>
					<tbody>
						<tr class="prop">
							<td valign="top" class="name"><label for="username">Login Name:</label></td>
							<td valign="top" class="value ${hasErrors(bean:person,field:'username','errors')}">
								<input type="text" id="username" name="username" value="${person.username?.encodeAsHTML()}"/>
							</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name"><label for="userRealName">Full Name:</label></td>
							<td valign="top" class="value ${hasErrors(bean:person,field:'userRealName','errors')}">
								<input type="text" id="userRealName" name="userRealName" value="${person.userRealName?.encodeAsHTML()}"/>
							</td>
						</tr>

                        <tr class="prop">
                            <td valign="top" class="name"><label for="passwd">Password:</label></td>
                            <td valign="top" class="value ${hasErrors(bean:person,field:'passwd','errors')}">
                                <input type="password" id="passwd" name="passwd" value="${person.passwd?.encodeAsHTML()}"/>
                            </td>
                        </tr>

						<tr class="prop">
							<td valign="top" class="name"><label for="email">Email:</label></td>
							<td valign="top" class="value ${hasErrors(bean:person,field:'email','errors')}">
								<input type="text" id="email" name="email" value="${person.email?.encodeAsHTML()}"/>
							</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name"><label for="enabled">Enabled:</label></td>
							<td valign="top" class="value ${hasErrors(bean:person,field:'enabled','errors')}">
								<g:checkBox name="enabled" value="${person.enabled}" ></g:checkBox>
							</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name"><label for="description">Description:</label></td>
							<td valign="top" class="value ${hasErrors(bean:person,field:'description','errors')}">
								<input type="text" id="description" name="description" value="${person.description?.encodeAsHTML()}"/>
							</td>
						</tr>


						<tr class="prop">
							<td valign="top" class="name"><label for="emailShow">Show Email:</label></td>
							<td valign="top" class="value ${hasErrors(bean:person,field:'emailShow','errors')}">
								<g:checkBox name="emailShow" value="${person.emailShow}"/>
							</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name" align="left">Assign Roles:</td>
						</tr>

						<g:each in="${authorityList}">
						<tr>
							<td valign="top" class="name" align="left">${it.authority.encodeAsHTML()}</td>
							<td align="left"><g:checkBox name="${it.authority}"/></td>
						</tr>
						</g:each>

					</tbody>
					</table>
				</div>

				<div class="buttons">
					<span class="button"><input class="save" type="submit" value="Create" /></span>
				</div>

			</g:form>

		</div>
	</body>
</html>
