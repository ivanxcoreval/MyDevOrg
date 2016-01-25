/*
 * Class        : CerpsWebServicesTest
 * Developer/Org: Ivan Khomenko/CoreValue
 * Created      : Jan 08, 2016
 * Objective    : Test class for CerpsWebServices
*/
@isTest
public with sharing class CerpsWebServicesTest {
    public static final String TEST_CID = '111111111111111';
    public static final String TEST_COUNTRY_CODE = 'US';
    public static final String TEST_LID = 'LID_test_value';
    public static final String TEST_SEARCH_TOKEN = 'Search_token_test_value';
    public static final String TEST_HCPSEARCHEXCEL = 'HCPSearchExcel_test_value';
    public static final String TEST_CWSADDUPDAVAILSTATUS = 'CwsAddUpdAvailStatus_test_value';
    public static final String TEST_CWSSEARCHAVAILSTATUS = 'CwsSearchAvailStatus_test_value';
    public static final String TEST_SOURCE_EAN = '123';
    public static final String TEST_BUSINESS_TRANSACTION_ID = '123';
    public static final String TEST_SECURITY_LOGIN = 'Login';
    public static final String TEST_SECURITY_PASSWORD = 'Password';

    public class WebServiceMockForCerps implements WebServiceMock {
        public void doInvoke( Object stub, Object request, Map<String, Object> response,
            String endpoint, String soapAction, String requestName,
            String responseNS, String responseName, String responseType ) {

            if(request instanceof CerpsWebServices.SearchHCARequest_element) {
                CerpsWebServices.SearchHCAResponse_element result = new CerpsWebServices.SearchHCAResponse_element();

                CerpsWebServices.SearchHCAResponseType rearchResponseTypeVar = new CerpsWebServices.SearchHCAResponseType();
                rearchResponseTypeVar.SearchResult = new CerpsWebServices.HCASearchResult[]{ createTestHCASearchResult( ((CerpsWebServices.SearchHCARequest_element)request).Request.CID ) };

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.GetHCPCIDDetailsRequest_element) {
                CerpsWebServices.GetHCPCIDDetailsResponse_element result = new CerpsWebServices.GetHCPCIDDetailsResponse_element();

                CerpsWebServices.GetHCPCIDDetailsResponseType rearchResponseTypeVar = new CerpsWebServices.GetHCPCIDDetailsResponseType();
                rearchResponseTypeVar.CID = ((CerpsWebServices.GetHCPCIDDetailsRequest_element)request).Request.CID;
                rearchResponseTypeVar.partyCountryCode = TEST_COUNTRY_CODE;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.AddHCPLocationRequest_element) {
                CerpsWebServices.AddHCPLocationResponse_element result = new CerpsWebServices.AddHCPLocationResponse_element();

                CerpsWebServices.AddHCPLocationResponseType rearchResponseTypeVar = new CerpsWebServices.AddHCPLocationResponseType();
                rearchResponseTypeVar.CID = ((CerpsWebServices.AddHCPLocationRequest_element)request).Request.CID;
                rearchResponseTypeVar.LID = TEST_LID;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.UpdateHCALocationRequest_element) {
                CerpsWebServices.UpdateHCALocationResponse_element result = new CerpsWebServices.UpdateHCALocationResponse_element();

                CerpsWebServices.UpdateHCALocationResponseType rearchResponseTypeVar = new CerpsWebServices.UpdateHCALocationResponseType();
                rearchResponseTypeVar.CID = ((CerpsWebServices.UpdateHCALocationRequest_element)request).Request.CID;
                rearchResponseTypeVar.LID = TEST_LID;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.ValidateHCPRequest_element) {
                CerpsWebServices.ValidateHCPResponse_element result = new CerpsWebServices.ValidateHCPResponse_element();

                CerpsWebServices.ValidateHCPResponseType rearchResponseTypeVar = new CerpsWebServices.ValidateHCPResponseType();
                rearchResponseTypeVar.SearchResult = new CerpsWebServices.ValidateHCPResult[]{ createTestValidateHCPSearchResult() };

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.ValidateHCARequest_element) {
                CerpsWebServices.ValidateHCAResponse_element result = new CerpsWebServices.ValidateHCAResponse_element();

                CerpsWebServices.ValidateHCAResponseType rearchResponseTypeVar = new CerpsWebServices.ValidateHCAResponseType();
                rearchResponseTypeVar.SearchResult = new CerpsWebServices.ValidateHCAResult[]{ createTestValidateHCASearchResult() };

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.GetHCACIDDetailsRequest_element) {
                CerpsWebServices.GetHCACIDDetailsResponse_element result = new CerpsWebServices.GetHCACIDDetailsResponse_element();

                CerpsWebServices.GetHCACIDDetailsResponseType rearchResponseTypeVar = new CerpsWebServices.GetHCACIDDetailsResponseType();
                rearchResponseTypeVar.CID = TEST_CID;
                rearchResponseTypeVar.partyCountryCode = TEST_COUNTRY_CODE;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.SearchAltIdsRequest_element) {
                CerpsWebServices.SearchAltIdsResponse_element result = new CerpsWebServices.SearchAltIdsResponse_element();

                CerpsWebServices.SearchAltIdsResponseType rearchResponseTypeVar = new CerpsWebServices.SearchAltIdsResponseType();
                rearchResponseTypeVar.CID = TEST_CID;
                rearchResponseTypeVar.LID = TEST_LID;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.GetLocationDetailsForZipCodeRequest_element) {
                CerpsWebServices.GetLocationDetailsForZipCodeResponse_element result = new CerpsWebServices.GetLocationDetailsForZipCodeResponse_element();

                CerpsWebServices.GetLocationDetailsForZipCodeResponseType rearchResponseTypeVar = new CerpsWebServices.GetLocationDetailsForZipCodeResponseType();
                rearchResponseTypeVar.zipResult = new CerpsWebServices.zipLocationResult[]{ createTestZipLocationResult() };

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.AddHCARequest_element) {
                CerpsWebServices.AddHCAResponse_element result = new CerpsWebServices.AddHCAResponse_element();

                CerpsWebServices.AddHCAResponseType rearchResponseTypeVar = new CerpsWebServices.AddHCAResponseType();
                rearchResponseTypeVar.CID = TEST_CID;
                rearchResponseTypeVar.LID = TEST_LID;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.UpdateHCARequest_element) {
                CerpsWebServices.UpdateHCAResponse_element result = new CerpsWebServices.UpdateHCAResponse_element();

                CerpsWebServices.UpdateHCAResponseType rearchResponseTypeVar = new CerpsWebServices.UpdateHCAResponseType();
                rearchResponseTypeVar.CID = TEST_CID;
                rearchResponseTypeVar.LID = TEST_LID;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.SearchHCPRequest_element) {
                CerpsWebServices.SearchHCPResponse_element result = new CerpsWebServices.SearchHCPResponse_element();

                CerpsWebServices.SearchHCPResponseType rearchResponseTypeVar = new CerpsWebServices.SearchHCPResponseType();
                rearchResponseTypeVar.SearchResult = new CerpsWebServices.HCPSearchResult[]{ createTestSearchHCPResult() };
                rearchResponseTypeVar.searchToken = TEST_SEARCH_TOKEN;
                rearchResponseTypeVar.HCPSearchExcel = TEST_HCPSearchExcel;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.AddHCALocationRequest_element) {
                CerpsWebServices.AddHCALocationResponse_element result = new CerpsWebServices.AddHCALocationResponse_element();

                CerpsWebServices.AddHCALocationResponseType rearchResponseTypeVar = new CerpsWebServices.AddHCALocationResponseType();
                rearchResponseTypeVar.CID = TEST_CID;
                rearchResponseTypeVar.LID = TEST_LID;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.UpdateHCPLocationRequest_element) {
                CerpsWebServices.UpdateHCPLocationResponse_element result = new CerpsWebServices.UpdateHCPLocationResponse_element();

                CerpsWebServices.UpdateHCPLocationResponseType rearchResponseTypeVar = new CerpsWebServices.UpdateHCPLocationResponseType();
                rearchResponseTypeVar.CID = TEST_CID;
                rearchResponseTypeVar.LID = TEST_LID;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.GetReferenceValuesRequest_element) {
                CerpsWebServices.GetReferenceValuesResponse_element result = new CerpsWebServices.GetReferenceValuesResponse_element();

                CerpsWebServices.GetReferenceValuesResponseType rearchResponseTypeVar = new CerpsWebServices.GetReferenceValuesResponseType();
                rearchResponseTypeVar.lovResult = new CerpsWebServices.getLovResult[]{ createTestGetReferenceValuesResult() };

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.CwsAddUpdAvailCheckRequest_element) {
                CerpsWebServices.CwsAddUpdAvailCheckResponse_element result = new CerpsWebServices.CwsAddUpdAvailCheckResponse_element();

                CerpsWebServices.CwsAddUpdAvailCheckResponseType rearchResponseTypeVar = new CerpsWebServices.CwsAddUpdAvailCheckResponseType();
                rearchResponseTypeVar.CwsAddUpdAvailStatus = TEST_CwsAddUpdAvailStatus;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.CwsSearchAvailCheckRequest_element) {
                CerpsWebServices.CwsSearchAvailCheckResponse_element result = new CerpsWebServices.CwsSearchAvailCheckResponse_element();

                CerpsWebServices.CwsSearchAvailCheckResponseType rearchResponseTypeVar = new CerpsWebServices.CwsSearchAvailCheckResponseType();
                rearchResponseTypeVar.CwsSearchAvailStatus = TEST_CwsSearchAvailStatus;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.UpdateHCPRequest_element) {
                CerpsWebServices.UpdateHCPResponse_element result = new CerpsWebServices.UpdateHCPResponse_element();

                CerpsWebServices.UpdateHCPResponseType rearchResponseTypeVar = new CerpsWebServices.UpdateHCPResponseType();
                rearchResponseTypeVar.CID = TEST_CID;
                rearchResponseTypeVar.LID = TEST_LID;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.GetAltIdRequest_element) {
                CerpsWebServices.GetAltIdResponse_element result = new CerpsWebServices.GetAltIdResponse_element();

                CerpsWebServices.GetAltIdResponseType rearchResponseTypeVar = new CerpsWebServices.GetAltIdResponseType();
                rearchResponseTypeVar.CID = TEST_CID;
                rearchResponseTypeVar.LID = TEST_LID;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.AddHCPRequest_element) {
                CerpsWebServices.AddHCPResponse_element result = new CerpsWebServices.AddHCPResponse_element();

                CerpsWebServices.AddHCPResponseType rearchResponseTypeVar = new CerpsWebServices.AddHCPResponseType();
                rearchResponseTypeVar.CID = TEST_CID;
                rearchResponseTypeVar.LID = TEST_LID;

                result.Response = rearchResponseTypeVar;

                response.put('response_x', result );
            }
            if(request instanceof CerpsWebServices.ValidateAddressRequest_element) {
                CerpsWebServices.ValidateAddressResponse_element result = new CerpsWebServices.ValidateAddressResponse_element();

                CerpsWebServices.ArrayOfAddressResultGout rearchResponseTypeVar = new CerpsWebServices.ArrayOfAddressResultGout();
                rearchResponseTypeVar.AddressResultGout = new CerpsWebServices.AddressResultGout[]{ createTestValidateAdressResult() };

                result.cleanseAddress2Result = new List<CerpsWebServices.ArrayOfAddressResultGout>();
                result.cleanseAddress2Result.add(rearchResponseTypeVar);

                response.put('response_x', result );
            }
            return;
        }
    }

    //These types are not used in any request or response, so we cover them directly
    public static testMethod void coverUnusedTypes() {
        new CerpsWebServices.SetAltIdResponseType();
        new CerpsWebServices.SetAltIdRequestType();
        new CerpsWebServices.FaultType();
    }

    public static CerpsWebServices.CustomerServiceSOAP customerService;
    public static Object initRequest;

    public static void setup(Object requestType){
        customerService = new CerpsWebServices.CustomerServiceSOAP();
        customerService.TransactionHeaderPart = new CerpsWebServices.TransactionHeaderType();
        customerService.TransactionHeaderPart.SourceEAN = TEST_SOURCE_EAN;
        customerService.TransactionHeaderPart.BusinessTransactionID = TEST_BUSINESS_TRANSACTION_ID;
        customerService.Security = new CerpsWebServices.Security_element( TEST_SECURITY_LOGIN, TEST_SECURITY_PASSWORD );

        System.Test.setMock( WebServiceMock.class, new WebServiceMockForCerps() );

        if( requestType instanceof CerpsWebServices.SearchHCARequestType ) {
            CerpsWebServices.SearchHCARequestType prepareRequest = new CerpsWebServices.SearchHCARequestType();
            prepareRequest.CID = TEST_CID;
            prepareRequest.accountDetails = new CerpsWebServices.AccountDetailsType();
            prepareRequest.partyCommDetails = new CerpsWebServices.CommDetailsType();
            prepareRequest.elecCommDetails = new CerpsWebServices.ElecCommDetailsType();
            prepareRequest.addressDetails = new CerpsWebServices.AddressDetailsType();
            prepareRequest.addressDetails.locCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.addressDetails.canadaAttributes = new CerpsWebServices.CanadaAttributes();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();
            prepareRequest.searchPaginationDetails = new CerpsWebServices.SearchPaginationDetailsType();
            prepareRequest.searchDetails = new CerpsWebServices.SearchDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.GetHCPCIDDetailsRequestType) {
            CerpsWebServices.GetHCPCIDDetailsRequestType prepareRequest = new CerpsWebServices.GetHCPCIDDetailsRequestType();
            prepareRequest.CID = TEST_CID;

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.AddHCPLocationRequestType) {
            CerpsWebServices.AddHCPLocationRequestType prepareRequest = new CerpsWebServices.AddHCPLocationRequestType();
            prepareRequest.CID = TEST_CID;
            prepareRequest.addressDetails = new CerpsWebServices.AddressDetailsType();
            prepareRequest.addressDetails.locCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.addressDetails.canadaAttributes = new CerpsWebServices.CanadaAttributes();
            prepareRequest.orderDetails = new CerpsWebServices.OrderDetailsType();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.UpdateHCALocationRequestType) {
            CerpsWebServices.UpdateHCALocationRequestType prepareRequest = new CerpsWebServices.UpdateHCALocationRequestType();
            prepareRequest.CID = TEST_CID;
            prepareRequest.addressDetails = new CerpsWebServices.AddressDetailsType();
            prepareRequest.addressDetails.locCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.addressDetails.canadaAttributes = new CerpsWebServices.CanadaAttributes();
            prepareRequest.orderDetails = new CerpsWebServices.OrderDetailsType();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.ValidateHCPRequestType) {
            CerpsWebServices.ValidateHCPRequestType prepareRequest = new CerpsWebServices.ValidateHCPRequestType();
            prepareRequest.professionalDetails = new CerpsWebServices.ProfessionalDetailsType();
            prepareRequest.degreeDetails = new List<CerpsWebServices.DegreeDetailsType>{ new CerpsWebServices.DegreeDetailsType() };
            prepareRequest.partyCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.elecCommDetails = new List<CerpsWebServices.ElecCommDetailsType>{ new CerpsWebServices.ElecCommDetailsType() };
            prepareRequest.addressDetails = new CerpsWebServices.AddressDetailsType();
            prepareRequest.addressDetails.locCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.addressDetails.canadaAttributes = new CerpsWebServices.CanadaAttributes();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.ValidateHCARequestType) {
            CerpsWebServices.ValidateHCARequestType prepareRequest = new CerpsWebServices.ValidateHCARequestType();
            prepareRequest.accountDetails = new CerpsWebServices.AccountDetailsType();
            prepareRequest.partyCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.elecCommDetails = new List<CerpsWebServices.ElecCommDetailsType>{ new CerpsWebServices.ElecCommDetailsType() };
            prepareRequest.addressDetails = new List<CerpsWebServices.AddressDetailsType>{ new CerpsWebServices.AddressDetailsType() };
            prepareRequest.addressDetails[0].locCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.addressDetails[0].canadaAttributes = new CerpsWebServices.CanadaAttributes();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.GetHCACIDDetailsRequestType) {
            CerpsWebServices.GetHCACIDDetailsRequestType prepareRequest = new CerpsWebServices.GetHCACIDDetailsRequestType();
            prepareRequest.CID = TEST_CID;
            prepareRequest.partyCountryCode = TEST_COUNTRY_CODE;

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.SearchAltIdsRequestType) {
            CerpsWebServices.SearchAltIdsRequestType prepareRequest = new CerpsWebServices.SearchAltIdsRequestType();
            prepareRequest.CID = TEST_CID;
            prepareRequest.LID = TEST_LID;

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.SearchAltIdsRequestType) {
            CerpsWebServices.SearchAltIdsRequestType prepareRequest = new CerpsWebServices.SearchAltIdsRequestType();
            prepareRequest.CID = TEST_CID;
            prepareRequest.LID = TEST_LID;

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.GetLocationDetailsForZipCodeResponseType) {
            CerpsWebServices.GetLocationDetailsForZipCodeResponseType prepareRequest = new CerpsWebServices.GetLocationDetailsForZipCodeResponseType();
            prepareRequest.zipResult = new List<CerpsWebServices.zipLocationResult>();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.AddHCARequestType){
            CerpsWebServices.AddHCARequestType prepareRequest = new CerpsWebServices.AddHCARequestType();
            prepareRequest.accountDetails = new CerpsWebServices.AccountDetailsType();
            prepareRequest.addressDetails = new CerpsWebServices.AddressDetailsType();
            prepareRequest.addressDetails.locCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.addressDetails.canadaAttributes = new CerpsWebServices.CanadaAttributes();
            prepareRequest.partyCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.elecCommDetails = new List<CerpsWebServices.ElecCommDetailsType>{ new CerpsWebServices.ElecCommDetailsType() };
            prepareRequest.altIdDetails = new CerpsWebServices.AltIDDetailsType();
            prepareRequest.orderDetails = new CerpsWebServices.OrderDetailsType();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.UpdateHCARequestType) {
            CerpsWebServices.UpdateHCARequestType prepareRequest = new CerpsWebServices.UpdateHCARequestType();

            prepareRequest.CID = TEST_CID;
            prepareRequest.accountDetails = new CerpsWebServices.AccountDetailsType();
            prepareRequest.partyCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.elecCommDetails = new List<CerpsWebServices.ElecCommDetailsType>{ new CerpsWebServices.ElecCommDetailsType() };
            prepareRequest.altIdDetails = new CerpsWebServices.AltIDDetailsType();
            prepareRequest.orderDetails = new CerpsWebServices.OrderDetailsType();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.SearchHCPRequestType) {
            CerpsWebServices.SearchHCPRequestType prepareRequest = new CerpsWebServices.SearchHCPRequestType();

            prepareRequest.professionalDetails = new CerpsWebServices.ProfessionalDetailsType();
            prepareRequest.degreeDetails = new CerpsWebServices.DegreeDetailsType();
            prepareRequest.partyCommDetails = new CerpsWebServices.CommDetailsType();
            prepareRequest.elecCommDetails = new CerpsWebServices.ElecCommDetailsType();
            prepareRequest.addressDetails = new CerpsWebServices.AddressDetailsType();
            prepareRequest.addressDetails.locCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.addressDetails.canadaAttributes = new CerpsWebServices.CanadaAttributes();
            prepareRequest.stateLicenseDetails = new CerpsWebServices.StateLicenseDetailsType();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();
            prepareRequest.searchPaginationDetails = new CerpsWebServices.SearchPaginationDetailsType();
            prepareRequest.searchDetails = new CerpsWebServices.SearchDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.AddHCALocationRequestType) {
            CerpsWebServices.AddHCALocationRequestType prepareRequest = new CerpsWebServices.AddHCALocationRequestType();

            prepareRequest.addressDetails = new CerpsWebServices.AddressDetailsType();
            prepareRequest.addressDetails.locCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.addressDetails.canadaAttributes = new CerpsWebServices.CanadaAttributes();
            prepareRequest.orderDetails = new CerpsWebServices.OrderDetailsType();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.UpdateHCPLocationRequestType) {
            CerpsWebServices.UpdateHCPLocationRequestType prepareRequest = new CerpsWebServices.UpdateHCPLocationRequestType();

            prepareRequest.addressDetails = new CerpsWebServices.AddressDetailsType();
            prepareRequest.addressDetails.locCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.addressDetails.canadaAttributes = new CerpsWebServices.CanadaAttributes();
            prepareRequest.orderDetails = new CerpsWebServices.OrderDetailsType();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.UpdateHCPRequestType) {
            CerpsWebServices.UpdateHCPRequestType prepareRequest = new CerpsWebServices.UpdateHCPRequestType();

            prepareRequest.CID = TEST_CID;
            prepareRequest.professionalDetails = new CerpsWebServices.ProfessionalDetailsType();
            prepareRequest.partyCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.elecCommDetails = new List<CerpsWebServices.ElecCommDetailsType>{ new CerpsWebServices.ElecCommDetailsType() };
            prepareRequest.altIdDetails = new CerpsWebServices.AltIDDetailsType();
            prepareRequest.orderDetails = new CerpsWebServices.OrderDetailsType();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.GetAltIdRequestType) {
            CerpsWebServices.GetAltIdRequestType prepareRequest = new CerpsWebServices.GetAltIdRequestType();

            prepareRequest.CID = TEST_CID;
            prepareRequest.altIdDetails = new CerpsWebServices.AltIDDetailsType();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();

            initRequest = prepareRequest;
        }
        if(requestType instanceof CerpsWebServices.AddHCPRequestType) {
            CerpsWebServices.AddHCPRequestType prepareRequest = new CerpsWebServices.AddHCPRequestType();

            prepareRequest.professionalDetails = new CerpsWebServices.ProfessionalDetailsType();
            prepareRequest.addressDetails = new CerpsWebServices.AddressDetailsType();
            prepareRequest.addressDetails.locCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.addressDetails.canadaAttributes = new CerpsWebServices.CanadaAttributes();
            prepareRequest.partyCommDetails = new List<CerpsWebServices.CommDetailsType>{ new CerpsWebServices.CommDetailsType() };
            prepareRequest.elecCommDetails = new List<CerpsWebServices.ElecCommDetailsType>{ new CerpsWebServices.ElecCommDetailsType() };
            prepareRequest.altIdDetails = new CerpsWebServices.AltIDDetailsType();
            prepareRequest.orderDetails = new CerpsWebServices.OrderDetailsType();
            prepareRequest.sourceSystemDetails = new CerpsWebServices.SourceSystemDetailsType();

            initRequest = prepareRequest;
        }
    }

    // Test methods
    public static testMethod void SearchHCACallout(){
        setup( new CerpsWebServices.SearchHCARequestType() );

        CerpsWebServices.SearchHCARequestType request = (CerpsWebServices.SearchHCARequestType)initRequest;

        Test.startTest();
            CerpsWebServices.SearchHCAResponseType response = customerService.SearchHCA( request );
        Test.stopTest();

        System.assert( !response.SearchResult.isEmpty(), 'Response is Empty' );
        System.assertEquals(request.CID, response.SearchResult[0].CID, 'CID is incorrect in WebService result' );
        System.assertEquals(TEST_COUNTRY_CODE, response.SearchResult[0].partyCountryCode, 'Party Country Code is incorrect in WebService result' );
    }

    public static testMethod void GetHCPCIDDetailsCallout(){
        setup( new CerpsWebServices.GetHCPCIDDetailsRequestType() );

        CerpsWebServices.GetHCPCIDDetailsRequestType request = (CerpsWebServices.GetHCPCIDDetailsRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.GetHCPCIDDetailsResponseType response = customerService.GetHCPCIDDetails( request );
        Test.stopTest();

        System.assertEquals(request.CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(TEST_COUNTRY_CODE, response.partyCountryCode, 'Party Country Code is incorrect in WebService result');
    }

    public static testMethod void AddHCPLocationCallout(){
        setup( new CerpsWebServices.AddHCPLocationRequestType() );

        CerpsWebServices.AddHCPLocationRequestType request = (CerpsWebServices.AddHCPLocationRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.AddHCPLocationResponseType response = customerService.AddHCPLocation( request );
        Test.stopTest();

        System.assertEquals(request.CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(TEST_LID, response.LID, 'LID is incorrect in WebService result');
    }

    public static testMethod void UpdateHCALocationCallout(){
        setup( new CerpsWebServices.UpdateHCALocationRequestType() );

        CerpsWebServices.UpdateHCALocationRequestType request = (CerpsWebServices.UpdateHCALocationRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.UpdateHCALocationResponseType response = customerService.UpdateHCALocation( request );
        Test.stopTest();

        System.assertEquals(request.CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(TEST_LID, response.LID, 'LID is incorrect in WebService result');
    }

    public static testMethod void ValidateHCPCallout(){
        setup( new CerpsWebServices.ValidateHCPRequestType() );

        CerpsWebServices.ValidateHCPRequestType request = (CerpsWebServices.ValidateHCPRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.ValidateHCPResponseType response = customerService.ValidateHCP( request );
        Test.stopTest();

        System.assert( !response.SearchResult.isEmpty(), 'Response is Empty' );
        System.assertEquals(TEST_CID, response.SearchResult[0].CID, 'CID is incorrect in WebService result' );
        System.assertEquals(TEST_COUNTRY_CODE, response.SearchResult[0].partyCountryCode, 'Party Country Code is incorrect in WebService result' );
    }

    public static testMethod void ValidateHCACallout(){
        setup( new CerpsWebServices.ValidateHCARequestType() );

        CerpsWebServices.ValidateHCARequestType request = (CerpsWebServices.ValidateHCARequestType)initRequest;

        Test.startTest();
            CerpsWebServices.ValidateHCAResponseType response = customerService.ValidateHCA( request );
        Test.stopTest();

        System.assert( !response.SearchResult.isEmpty(), 'Response is Empty' );
        System.assertEquals(TEST_CID, response.SearchResult[0].CID, 'CID is incorrect in WebService result' );
        System.assertEquals(TEST_COUNTRY_CODE, response.SearchResult[0].partyCountryCode, 'Party Country Code is incorrect in WebService result' );
    }

    public static testMethod void GetHCACIDDetailsCallout(){
        setup( new CerpsWebServices.GetHCACIDDetailsRequestType() );

        CerpsWebServices.GetHCACIDDetailsRequestType request = (CerpsWebServices.GetHCACIDDetailsRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.GetHCACIDDetailsResponseType response = customerService.GetHCACIDDetails( request );
        Test.stopTest();

        System.assertEquals(request.CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(request.partyCountryCode, response.partyCountryCode, 'Party Country Code is incorrect in WebService result');
    }

    public static testMethod void SearchAltIdsCallout(){
        setup( new CerpsWebServices.SearchAltIdsRequestType() );

        CerpsWebServices.SearchAltIdsRequestType request = (CerpsWebServices.SearchAltIdsRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.SearchAltIdsResponseType response = customerService.SearchAltIds( request );
        Test.stopTest();

        System.assertEquals(request.CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(request.LID, response.LID, 'LID is incorrect in WebService result');
    }

    public static testMethod void GetLocationDetailsForZipCodeCallout(){
        setup( new CerpsWebServices.GetLocationDetailsForZipCodeRequestType() );

        CerpsWebServices.GetLocationDetailsForZipCodeRequestType request = (CerpsWebServices.GetLocationDetailsForZipCodeRequestType)initRequest;


        Test.startTest();
            CerpsWebServices.GetLocationDetailsForZipCodeResponseType response = customerService.GetLocationDetailsForZipCode( request );
        Test.stopTest();

        System.assert( !response.zipResult.isEmpty(), 'Response is Empty' );
    }

    public static testMethod void AddHCACallout(){
        setup( new CerpsWebServices.AddHCARequestType() );

        CerpsWebServices.AddHCARequestType request = (CerpsWebServices.AddHCARequestType)initRequest;

        Test.startTest();
            CerpsWebServices.AddHCAResponseType response = customerService.AddHCA( request );
        Test.stopTest();

        System.assertEquals(TEST_CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(TEST_LID, response.LID, 'LID is incorrect in WebService result');
    }

    public static testMethod void UpdateHCACallout(){
        setup( new CerpsWebServices.UpdateHCARequestType() );

        CerpsWebServices.UpdateHCARequestType request = (CerpsWebServices.UpdateHCARequestType)initRequest;

        Test.startTest();
            CerpsWebServices.UpdateHCAResponseType response = customerService.UpdateHCA( request );
        Test.stopTest();

        System.assertEquals(request.CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(TEST_LID, response.LID, 'partyCountryCode is incorrect in WebService result');
    }

    public static testMethod void SearchHCPCallout(){
        setup( new CerpsWebServices.SearchHCPRequestType() );

        CerpsWebServices.SearchHCPRequestType request = (CerpsWebServices.SearchHCPRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.SearchHCPResponseType response = customerService.SearchHCP( request );
        Test.stopTest();

        System.assert( !response.SearchResult.isEmpty(), 'Response is Empty' );
        System.assertEquals(TEST_SEARCH_TOKEN, response.searchToken, 'searchToken is incorrect in WebService result');
        System.assertEquals(TEST_HCPSearchExcel, response.HCPSearchExcel, 'HCPSearchExcel is incorrect in WebService result');
    }

    public static testMethod void AddHCALocationCallout(){
        setup( new CerpsWebServices.AddHCALocationRequestType() );

        CerpsWebServices.AddHCALocationRequestType request = (CerpsWebServices.AddHCALocationRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.AddHCALocationResponseType response = customerService.AddHCALocation( request );
        Test.stopTest();

        System.assertEquals(TEST_CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(TEST_LID, response.LID, 'LID is incorrect in WebService result');
    }

    public static testMethod void UpdateHCPLocationCallout(){
        setup( new CerpsWebServices.UpdateHCPLocationRequestType() );

        CerpsWebServices.UpdateHCPLocationRequestType request = (CerpsWebServices.UpdateHCPLocationRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.UpdateHCPLocationResponseType response = customerService.UpdateHCPLocation( request );
        Test.stopTest();

        System.assertEquals(TEST_CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(TEST_LID, response.LID, 'LID is incorrect in WebService result');
    }

    public static testMethod void GetReferenceValuesCallout(){
        setup( new CerpsWebServices.GetReferenceValuesRequestType() );

        CerpsWebServices.GetReferenceValuesRequestType request = (CerpsWebServices.GetReferenceValuesRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.GetReferenceValuesResponseType response = customerService.GetReferenceValues( request );
        Test.stopTest();

        System.assert( !response.lovResult.isEmpty(), 'Response is Empty' );
    }

    public static testMethod void CwsAddUpdAvailCheckCallout(){
        setup( new CerpsWebServices.CwsAddUpdAvailCheckRequestType() );

        CerpsWebServices.CwsAddUpdAvailCheckRequestType request = (CerpsWebServices.CwsAddUpdAvailCheckRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.CwsAddUpdAvailCheckResponseType response = customerService.CwsAddUpdAvailCheck( request );
        Test.stopTest();

        System.assertEquals(TEST_CwsAddUpdAvailStatus, response.CwsAddUpdAvailStatus, 'CwsAddUpdAvailStatus is incorrect in WebService result');
    }

    public static testMethod void ValidateAddressCallout(){
        setup( new CerpsWebServices.AddressGout() );

        CerpsWebServices.AddressGout request = (CerpsWebServices.AddressGout)initRequest;

        Test.startTest();
            CerpsWebServices.ArrayOfAddressResultGout[] response = customerService.ValidateAddress( request );
        Test.stopTest();

        System.assert( response.size() > 0, 'Response is Empty' );
    }

    public static testMethod void CwsSearchAvailCheckCallout(){
        setup( new CerpsWebServices.CwsSearchAvailCheckRequestType() );

        CerpsWebServices.CwsSearchAvailCheckRequestType request = (CerpsWebServices.CwsSearchAvailCheckRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.CwsSearchAvailCheckResponseType response = customerService.CwsSearchAvailCheck( request );
        Test.stopTest();

        System.assertEquals(TEST_CwsSearchAvailStatus, response.CwsSearchAvailStatus, 'CwsSearchAvailStatus is incorrect in WebService result');
    }

    public static testMethod void UpdateHCPCallout(){
        setup( new CerpsWebServices.UpdateHCPRequestType() );

        CerpsWebServices.UpdateHCPRequestType request = (CerpsWebServices.UpdateHCPRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.UpdateHCPResponseType response = customerService.UpdateHCP( request );
        Test.stopTest();

        System.assertEquals(request.CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(TEST_LID, response.LID, 'LID is incorrect in WebService result');
    }

    public static testMethod void GetAltIdCallout(){
        setup( new CerpsWebServices.GetAltIdRequestType() );

       CerpsWebServices.GetAltIdRequestType request = (CerpsWebServices.GetAltIdRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.GetAltIdResponseType response = customerService.GetAltId( request );
        Test.stopTest();

        System.assertEquals(request.CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(TEST_LID, response.LID, 'LID is incorrect in WebService result');
    }

    public static testMethod void AddHCPCallout(){
        setup( new CerpsWebServices.AddHCPRequestType() );

        CerpsWebServices.AddHCPRequestType request = (CerpsWebServices.AddHCPRequestType)initRequest;

        Test.startTest();
            CerpsWebServices.AddHCPResponseType response = customerService.AddHCP( request );
        Test.stopTest();

        System.assertEquals(TEST_CID, response.CID, 'CID is incorrect in WebService result');
        System.assertEquals(TEST_LID, response.LID, 'LID is incorrect in WebService result');
    }


    // Preparation of test data
    public static CerpsWebServices.HCASearchResult createTestHCASearchResult( String cid ){
        CerpsWebServices.HCASearchResult testRecord = new CerpsWebServices.HCASearchResult();
        testRecord.CID = cid;
        testRecord.partyCountryCode = TEST_COUNTRY_CODE;

        return testRecord;
    }

    public static CerpsWebServices.ValidateHCAResult createTestValidateHCASearchResult(){
        CerpsWebServices.ValidateHCAResult testRecord = new CerpsWebServices.ValidateHCAResult();
        testRecord.CID = TEST_CID;
        testRecord.partyCountryCode = TEST_COUNTRY_CODE;

        return testRecord;
    }

    public static CerpsWebServices.ValidateHCPResult createTestValidateHCPSearchResult(){
        CerpsWebServices.ValidateHCPResult testRecord = new CerpsWebServices.ValidateHCPResult();
        testRecord.CID = TEST_CID;
        testRecord.partyCountryCode = TEST_COUNTRY_CODE;

        return testRecord;
    }

    public static CerpsWebServices.zipLocationResult createTestZipLocationResult(){
        CerpsWebServices.zipLocationResult testRecord = new CerpsWebServices.zipLocationResult();

        return testRecord;
    }

    public static CerpsWebServices.HCPSearchResult createTestSearchHCPResult(){
        CerpsWebServices.HCPSearchResult testRecord = new CerpsWebServices.HCPSearchResult();

        return testRecord;
    }

    public static CerpsWebServices.getLovResult createTestGetReferenceValuesResult(){
        CerpsWebServices.getLovResult testRecord = new CerpsWebServices.getLovResult();

        return testRecord;
    }

    public static CerpsWebServices.AddressResultGout createTestValidateAdressResult(){
        CerpsWebServices.AddressResultGout testRecord = new CerpsWebServices.AddressResultGout();

        return testRecord;
    }
}