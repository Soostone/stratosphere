{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html

module Stratosphere.Resources.ApiGatewayGatewayResponse where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayGatewayResponse. See
-- 'apiGatewayGatewayResponse' for a more convenient constructor.
data ApiGatewayGatewayResponse =
  ApiGatewayGatewayResponse
  { _apiGatewayGatewayResponseResponseParameters :: Maybe Object
  , _apiGatewayGatewayResponseResponseTemplates :: Maybe Object
  , _apiGatewayGatewayResponseResponseType :: Val Text
  , _apiGatewayGatewayResponseRestApiId :: Val Text
  , _apiGatewayGatewayResponseStatusCode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayGatewayResponse where
  toJSON ApiGatewayGatewayResponse{..} =
    object $
    catMaybes
    [ fmap (("ResponseParameters",) . toJSON) _apiGatewayGatewayResponseResponseParameters
    , fmap (("ResponseTemplates",) . toJSON) _apiGatewayGatewayResponseResponseTemplates
    , (Just . ("ResponseType",) . toJSON) _apiGatewayGatewayResponseResponseType
    , (Just . ("RestApiId",) . toJSON) _apiGatewayGatewayResponseRestApiId
    , fmap (("StatusCode",) . toJSON) _apiGatewayGatewayResponseStatusCode
    ]

instance FromJSON ApiGatewayGatewayResponse where
  parseJSON (Object obj) =
    ApiGatewayGatewayResponse <$>
      (obj .:? "ResponseParameters") <*>
      (obj .:? "ResponseTemplates") <*>
      (obj .: "ResponseType") <*>
      (obj .: "RestApiId") <*>
      (obj .:? "StatusCode")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayGatewayResponse' containing required fields as
-- arguments.
apiGatewayGatewayResponse
  :: Val Text -- ^ 'aggrResponseType'
  -> Val Text -- ^ 'aggrRestApiId'
  -> ApiGatewayGatewayResponse
apiGatewayGatewayResponse responseTypearg restApiIdarg =
  ApiGatewayGatewayResponse
  { _apiGatewayGatewayResponseResponseParameters = Nothing
  , _apiGatewayGatewayResponseResponseTemplates = Nothing
  , _apiGatewayGatewayResponseResponseType = responseTypearg
  , _apiGatewayGatewayResponseRestApiId = restApiIdarg
  , _apiGatewayGatewayResponseStatusCode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html#cfn-apigateway-gatewayresponse-responseparameters
aggrResponseParameters :: Lens' ApiGatewayGatewayResponse (Maybe Object)
aggrResponseParameters = lens _apiGatewayGatewayResponseResponseParameters (\s a -> s { _apiGatewayGatewayResponseResponseParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html#cfn-apigateway-gatewayresponse-responsetemplates
aggrResponseTemplates :: Lens' ApiGatewayGatewayResponse (Maybe Object)
aggrResponseTemplates = lens _apiGatewayGatewayResponseResponseTemplates (\s a -> s { _apiGatewayGatewayResponseResponseTemplates = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html#cfn-apigateway-gatewayresponse-responsetype
aggrResponseType :: Lens' ApiGatewayGatewayResponse (Val Text)
aggrResponseType = lens _apiGatewayGatewayResponseResponseType (\s a -> s { _apiGatewayGatewayResponseResponseType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html#cfn-apigateway-gatewayresponse-restapiid
aggrRestApiId :: Lens' ApiGatewayGatewayResponse (Val Text)
aggrRestApiId = lens _apiGatewayGatewayResponseRestApiId (\s a -> s { _apiGatewayGatewayResponseRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html#cfn-apigateway-gatewayresponse-statuscode
aggrStatusCode :: Lens' ApiGatewayGatewayResponse (Maybe (Val Text))
aggrStatusCode = lens _apiGatewayGatewayResponseStatusCode (\s a -> s { _apiGatewayGatewayResponseStatusCode = a })
