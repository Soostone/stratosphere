{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html

module Stratosphere.Resources.EC2FlowLog where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2FlowLog. See 'ec2FlowLog' for a more
-- convenient constructor.
data EC2FlowLog =
  EC2FlowLog
  { _eC2FlowLogDeliverLogsPermissionArn :: Val Text
  , _eC2FlowLogLogGroupName :: Val Text
  , _eC2FlowLogResourceId :: Val Text
  , _eC2FlowLogResourceType :: Val Text
  , _eC2FlowLogTrafficType :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2FlowLog where
  toJSON EC2FlowLog{..} =
    object $
    catMaybes
    [ (Just . ("DeliverLogsPermissionArn",) . toJSON) _eC2FlowLogDeliverLogsPermissionArn
    , (Just . ("LogGroupName",) . toJSON) _eC2FlowLogLogGroupName
    , (Just . ("ResourceId",) . toJSON) _eC2FlowLogResourceId
    , (Just . ("ResourceType",) . toJSON) _eC2FlowLogResourceType
    , (Just . ("TrafficType",) . toJSON) _eC2FlowLogTrafficType
    ]

instance FromJSON EC2FlowLog where
  parseJSON (Object obj) =
    EC2FlowLog <$>
      (obj .: "DeliverLogsPermissionArn") <*>
      (obj .: "LogGroupName") <*>
      (obj .: "ResourceId") <*>
      (obj .: "ResourceType") <*>
      (obj .: "TrafficType")
  parseJSON _ = mempty

-- | Constructor for 'EC2FlowLog' containing required fields as arguments.
ec2FlowLog
  :: Val Text -- ^ 'ecflDeliverLogsPermissionArn'
  -> Val Text -- ^ 'ecflLogGroupName'
  -> Val Text -- ^ 'ecflResourceId'
  -> Val Text -- ^ 'ecflResourceType'
  -> Val Text -- ^ 'ecflTrafficType'
  -> EC2FlowLog
ec2FlowLog deliverLogsPermissionArnarg logGroupNamearg resourceIdarg resourceTypearg trafficTypearg =
  EC2FlowLog
  { _eC2FlowLogDeliverLogsPermissionArn = deliverLogsPermissionArnarg
  , _eC2FlowLogLogGroupName = logGroupNamearg
  , _eC2FlowLogResourceId = resourceIdarg
  , _eC2FlowLogResourceType = resourceTypearg
  , _eC2FlowLogTrafficType = trafficTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-deliverlogspermissionarn
ecflDeliverLogsPermissionArn :: Lens' EC2FlowLog (Val Text)
ecflDeliverLogsPermissionArn = lens _eC2FlowLogDeliverLogsPermissionArn (\s a -> s { _eC2FlowLogDeliverLogsPermissionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-loggroupname
ecflLogGroupName :: Lens' EC2FlowLog (Val Text)
ecflLogGroupName = lens _eC2FlowLogLogGroupName (\s a -> s { _eC2FlowLogLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-resourceid
ecflResourceId :: Lens' EC2FlowLog (Val Text)
ecflResourceId = lens _eC2FlowLogResourceId (\s a -> s { _eC2FlowLogResourceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-resourcetype
ecflResourceType :: Lens' EC2FlowLog (Val Text)
ecflResourceType = lens _eC2FlowLogResourceType (\s a -> s { _eC2FlowLogResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-traffictype
ecflTrafficType :: Lens' EC2FlowLog (Val Text)
ecflTrafficType = lens _eC2FlowLogTrafficType (\s a -> s { _eC2FlowLogTrafficType = a })
