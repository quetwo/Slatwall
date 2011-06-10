<!---

    Slatwall - An e-commerce plugin for Mura CMS
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

<cfinterface>
	
	<cffunction name="init" access="public" returntype="any">
	</cffunction>
	
	<cffunction name="getRates" access="public" returntype="Slatwall.com.utility.shipping.RatesResponseBean">
		<cfargument name="ratesRequestBean" type="Slatwall.com.utility.shipping.RatesRequestBean" required="true" />
		
		<!---
			This method should take in a given order shipment and based
			upon the items in that shipment as well as the address, it
			should calculate shipping rates for each of	the methods that
			are available from this provider 
		--->
	</cffunction>
	
	<cffunction name="getTracking" access="public" returntype="Slatwall.com.utility.shipping.TrackingResponseBean">
		<cfargument name="trackingNumber" type="string" required="true" />
		
		<!---
			This method takes a tracking number and passes back a
			tracking response bean that has the details reguarding
			a specific shipment.
		--->
	</cffunction>
	
	<cffunction name="createShipment" access="public" returntype="Slatwall.com.utility.shipping.ShipmentResponseBean">
		<cfargument name="orderShipment" type="any" required="true" />
		
		<!---
			This method should take an order shipment object, and pass
			the necessary information with the service provider to generate
			a lable and create a shipment
		--->
	</cffunction> 
	
	<cffunction name="getShippingMethods" access="public" returntype="Struct">
		
		<!--- 
			This method should return a struct where the Key
			is the method ID, and the value is the legible name.
			
			For Example:
			var methods = {GRND="UPS Ground",2DAY="2nd Day Express"}
			
			The keys that are provided by this function should match the keys used for
			getting rates as well as creating shipments.
		--->
	</cffunction> 
</cfinterface>