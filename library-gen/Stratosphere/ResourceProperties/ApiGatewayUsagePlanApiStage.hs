{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html

module Stratosphere.ResourceProperties.ApiGatewayUsagePlanApiStage where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayUsagePlanApiStage. See
-- 'apiGatewayUsagePlanApiStage' for a more convenient constructor.
data ApiGatewayUsagePlanApiStage =
  ApiGatewayUsagePlanApiStage
  { _apiGatewayUsagePlanApiStageApiId :: Maybe (Val Text)
  , _apiGatewayUsagePlanApiStageStage :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayUsagePlanApiStage where
  toJSON ApiGatewayUsagePlanApiStage{..} =
    object $
    catMaybes
    [ fmap (("ApiId",) . toJSON) _apiGatewayUsagePlanApiStageApiId
    , fmap (("Stage",) . toJSON) _apiGatewayUsagePlanApiStageStage
    ]

instance FromJSON ApiGatewayUsagePlanApiStage where
  parseJSON (Object obj) =
    ApiGatewayUsagePlanApiStage <$>
      (obj .:? "ApiId") <*>
      (obj .:? "Stage")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayUsagePlanApiStage' containing required fields
-- as arguments.
apiGatewayUsagePlanApiStage
  :: ApiGatewayUsagePlanApiStage
apiGatewayUsagePlanApiStage  =
  ApiGatewayUsagePlanApiStage
  { _apiGatewayUsagePlanApiStageApiId = Nothing
  , _apiGatewayUsagePlanApiStageStage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-apiid
agupasApiId :: Lens' ApiGatewayUsagePlanApiStage (Maybe (Val Text))
agupasApiId = lens _apiGatewayUsagePlanApiStageApiId (\s a -> s { _apiGatewayUsagePlanApiStageApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-stage
agupasStage :: Lens' ApiGatewayUsagePlanApiStage (Maybe (Val Text))
agupasStage = lens _apiGatewayUsagePlanApiStageStage (\s a -> s { _apiGatewayUsagePlanApiStageStage = a })
