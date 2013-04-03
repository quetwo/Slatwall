<!---

    Slatwall - An Open Source eCommerce Platform
    Copyright (C) 2011 ten24, LLC

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
    
    Linking this library statically or dynamically with other modules is
    making a combined work based on this library.  Thus, the terms and
    conditions of the GNU General Public License cover the whole
    combination.
 
    As a special exception, the copyright holders of this library give you
    permission to link this library with independent modules to produce an
    executable, regardless of the license terms of these independent
    modules, and to copy and distribute the resulting executable under
    terms of your choice, provided that you also meet, for each linked
    independent module, the terms and conditions of the license of that
    module.  An independent module is a module which is not derived from
    or based on this library.  If you modify this library, you may extend
    this exception to your version of the library, but you are not
    obligated to do so.  If you do not wish to do so, delete this
    exception statement from your version.

Notes:

--->
<cfparam name="rc.stockAdjustment" type="any">
<cfparam name="rc.edit" type="boolean">

<cfoutput>
	<cf_HibachiEntityDetailForm object="#rc.stockAdjustment#" edit="#rc.edit#">
		<cf_HibachiEntityActionBar type="detail" object="#rc.stockAdjustment#" edit="#rc.edit#">
			<cf_HibachiProcessCaller entity="#rc.stockAdjustment#" action="admin:entity.processStockAdjustment" processContext="processAdjustment" queryString="stockAdjustmentID=#rc.stockAdjustment.getStockAdjustmentID()#&process=1&redirectAction=admin:entity.detailStockAdjustment" type="list" />
			<cf_HibachiProcessCaller entity="#rc.stockAdjustment#" action="admin:entity.processStockAdjustment" processContext="addItems" queryString="stockAdjustmentID=#rc.stockAdjustment.getStockAdjustmentID()#" type="list" modal=true />
			<cf_HibachiActionCaller action="admin:entity.createcomment" querystring="stockAdjustmentID=#rc.stockAdjustment.getStockAdjustmentID()#&redirectAction=#request.context.slatAction#" modal="true" type="list" />
		</cf_HibachiEntityActionBar>
					
		<cf_HibachiPropertyRow>
			<cf_HibachiPropertyList>
				<cfif rc.edit>
					<input type="hidden" name="stockAdjustmentType.typeID" value="#rc.stockadjustment.getStockAdjustmentType().getTypeID()#" />
				</cfif>
				<cf_HibachiPropertyDisplay object="#rc.stockAdjustment#" property="stockAdjustmentType" edit="false">
				<cf_HibachiPropertyDisplay object="#rc.stockAdjustment#" property="stockAdjustmentStatusType" edit="false">
				<cfif listFindNoCase("satLocationTransfer,satManualOut", rc.stockAdjustment.getStockAdjustmentType().getSystemCode())>
					<cf_HibachiPropertyDisplay object="#rc.stockAdjustment#" property="fromLocation" edit="#rc.stockAdjustment.isNew()#">
				</cfif>
				<cfif listFindNoCase("satLocationTransfer,satManualIn", rc.stockAdjustment.getStockAdjustmentType().getSystemCode())>
					<cf_HibachiPropertyDisplay object="#rc.stockAdjustment#" property="toLocation" edit="#rc.stockAdjustment.isNew()#">
				</cfif>
			</cf_HibachiPropertyList>
		</cf_HibachiPropertyRow>
		
		<cf_HibachiTabGroup object="#rc.stockAdjustment#" allowComments="true">
			<cf_HibachiTab view="admin:entity/stockadjustments/products" />
			<cf_HibachiTab view="admin:entity/stockadjustments/stockreceivers" />
		</cf_HibachiTabGroup>
		
	</cf_HibachiEntityDetailForm>
</cfoutput>
