{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html

module Stratosphere.Resources.DAXCluster where

import Stratosphere.ResourceImports


-- | Full data type definition for DAXCluster. See 'daxCluster' for a more
-- convenient constructor.
data DAXCluster =
  DAXCluster
  { _dAXClusterAvailabilityZones :: Maybe (ValList Text)
  , _dAXClusterClusterName :: Maybe (Val Text)
  , _dAXClusterDescription :: Maybe (Val Text)
  , _dAXClusterIAMRoleARN :: Val Text
  , _dAXClusterNodeType :: Val Text
  , _dAXClusterNotificationTopicARN :: Maybe (Val Text)
  , _dAXClusterParameterGroupName :: Maybe (Val Text)
  , _dAXClusterPreferredMaintenanceWindow :: Maybe (Val Text)
  , _dAXClusterReplicationFactor :: Val Integer
  , _dAXClusterSecurityGroupIds :: Maybe (ValList Text)
  , _dAXClusterSubnetGroupName :: Maybe (Val Text)
  , _dAXClusterTags :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON DAXCluster where
  toJSON DAXCluster{..} =
    object $
    catMaybes
    [ fmap (("AvailabilityZones",) . toJSON) _dAXClusterAvailabilityZones
    , fmap (("ClusterName",) . toJSON) _dAXClusterClusterName
    , fmap (("Description",) . toJSON) _dAXClusterDescription
    , (Just . ("IAMRoleARN",) . toJSON) _dAXClusterIAMRoleARN
    , (Just . ("NodeType",) . toJSON) _dAXClusterNodeType
    , fmap (("NotificationTopicARN",) . toJSON) _dAXClusterNotificationTopicARN
    , fmap (("ParameterGroupName",) . toJSON) _dAXClusterParameterGroupName
    , fmap (("PreferredMaintenanceWindow",) . toJSON) _dAXClusterPreferredMaintenanceWindow
    , (Just . ("ReplicationFactor",) . toJSON . fmap Integer') _dAXClusterReplicationFactor
    , fmap (("SecurityGroupIds",) . toJSON) _dAXClusterSecurityGroupIds
    , fmap (("SubnetGroupName",) . toJSON) _dAXClusterSubnetGroupName
    , fmap (("Tags",) . toJSON) _dAXClusterTags
    ]

instance FromJSON DAXCluster where
  parseJSON (Object obj) =
    DAXCluster <$>
      (obj .:? "AvailabilityZones") <*>
      (obj .:? "ClusterName") <*>
      (obj .:? "Description") <*>
      (obj .: "IAMRoleARN") <*>
      (obj .: "NodeType") <*>
      (obj .:? "NotificationTopicARN") <*>
      (obj .:? "ParameterGroupName") <*>
      (obj .:? "PreferredMaintenanceWindow") <*>
      fmap (fmap unInteger') (obj .: "ReplicationFactor") <*>
      (obj .:? "SecurityGroupIds") <*>
      (obj .:? "SubnetGroupName") <*>
      (obj .:? "Tags")
  parseJSON _ = mempty

-- | Constructor for 'DAXCluster' containing required fields as arguments.
daxCluster
  :: Val Text -- ^ 'daxcIAMRoleARN'
  -> Val Text -- ^ 'daxcNodeType'
  -> Val Integer -- ^ 'daxcReplicationFactor'
  -> DAXCluster
daxCluster iAMRoleARNarg nodeTypearg replicationFactorarg =
  DAXCluster
  { _dAXClusterAvailabilityZones = Nothing
  , _dAXClusterClusterName = Nothing
  , _dAXClusterDescription = Nothing
  , _dAXClusterIAMRoleARN = iAMRoleARNarg
  , _dAXClusterNodeType = nodeTypearg
  , _dAXClusterNotificationTopicARN = Nothing
  , _dAXClusterParameterGroupName = Nothing
  , _dAXClusterPreferredMaintenanceWindow = Nothing
  , _dAXClusterReplicationFactor = replicationFactorarg
  , _dAXClusterSecurityGroupIds = Nothing
  , _dAXClusterSubnetGroupName = Nothing
  , _dAXClusterTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-availabilityzones
daxcAvailabilityZones :: Lens' DAXCluster (Maybe (ValList Text))
daxcAvailabilityZones = lens _dAXClusterAvailabilityZones (\s a -> s { _dAXClusterAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-clustername
daxcClusterName :: Lens' DAXCluster (Maybe (Val Text))
daxcClusterName = lens _dAXClusterClusterName (\s a -> s { _dAXClusterClusterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-description
daxcDescription :: Lens' DAXCluster (Maybe (Val Text))
daxcDescription = lens _dAXClusterDescription (\s a -> s { _dAXClusterDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-iamrolearn
daxcIAMRoleARN :: Lens' DAXCluster (Val Text)
daxcIAMRoleARN = lens _dAXClusterIAMRoleARN (\s a -> s { _dAXClusterIAMRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-nodetype
daxcNodeType :: Lens' DAXCluster (Val Text)
daxcNodeType = lens _dAXClusterNodeType (\s a -> s { _dAXClusterNodeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-notificationtopicarn
daxcNotificationTopicARN :: Lens' DAXCluster (Maybe (Val Text))
daxcNotificationTopicARN = lens _dAXClusterNotificationTopicARN (\s a -> s { _dAXClusterNotificationTopicARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-parametergroupname
daxcParameterGroupName :: Lens' DAXCluster (Maybe (Val Text))
daxcParameterGroupName = lens _dAXClusterParameterGroupName (\s a -> s { _dAXClusterParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-preferredmaintenancewindow
daxcPreferredMaintenanceWindow :: Lens' DAXCluster (Maybe (Val Text))
daxcPreferredMaintenanceWindow = lens _dAXClusterPreferredMaintenanceWindow (\s a -> s { _dAXClusterPreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-replicationfactor
daxcReplicationFactor :: Lens' DAXCluster (Val Integer)
daxcReplicationFactor = lens _dAXClusterReplicationFactor (\s a -> s { _dAXClusterReplicationFactor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-securitygroupids
daxcSecurityGroupIds :: Lens' DAXCluster (Maybe (ValList Text))
daxcSecurityGroupIds = lens _dAXClusterSecurityGroupIds (\s a -> s { _dAXClusterSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-subnetgroupname
daxcSubnetGroupName :: Lens' DAXCluster (Maybe (Val Text))
daxcSubnetGroupName = lens _dAXClusterSubnetGroupName (\s a -> s { _dAXClusterSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-tags
daxcTags :: Lens' DAXCluster (Maybe Object)
daxcTags = lens _dAXClusterTags (\s a -> s { _dAXClusterTags = a })
