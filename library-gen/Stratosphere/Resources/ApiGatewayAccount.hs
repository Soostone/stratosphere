{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html

module Stratosphere.Resources.ApiGatewayAccount where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayAccount. See 'apiGatewayAccount'
-- for a more convenient constructor.
data ApiGatewayAccount =
  ApiGatewayAccount
  { _apiGatewayAccountCloudWatchRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayAccount where
  toJSON ApiGatewayAccount{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchRoleArn",) . toJSON) _apiGatewayAccountCloudWatchRoleArn
    ]

instance FromJSON ApiGatewayAccount where
  parseJSON (Object obj) =
    ApiGatewayAccount <$>
      (obj .:? "CloudWatchRoleArn")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayAccount' containing required fields as
-- arguments.
apiGatewayAccount
  :: ApiGatewayAccount
apiGatewayAccount  =
  ApiGatewayAccount
  { _apiGatewayAccountCloudWatchRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html#cfn-apigateway-account-cloudwatchrolearn
agaCloudWatchRoleArn :: Lens' ApiGatewayAccount (Maybe (Val Text))
agaCloudWatchRoleArn = lens _apiGatewayAccountCloudWatchRoleArn (\s a -> s { _apiGatewayAccountCloudWatchRoleArn = a })
