{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html

module Stratosphere.ResourceProperties.EMRClusterInstanceFleetConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterInstanceTypeConfig
import Stratosphere.ResourceProperties.EMRClusterInstanceFleetProvisioningSpecifications

-- | Full data type definition for EMRClusterInstanceFleetConfig. See
-- 'emrClusterInstanceFleetConfig' for a more convenient constructor.
data EMRClusterInstanceFleetConfig =
  EMRClusterInstanceFleetConfig
  { _eMRClusterInstanceFleetConfigInstanceTypeConfigs :: Maybe [EMRClusterInstanceTypeConfig]
  , _eMRClusterInstanceFleetConfigLaunchSpecifications :: Maybe EMRClusterInstanceFleetProvisioningSpecifications
  , _eMRClusterInstanceFleetConfigName :: Maybe (Val Text)
  , _eMRClusterInstanceFleetConfigTargetOnDemandCapacity :: Maybe (Val Integer')
  , _eMRClusterInstanceFleetConfigTargetSpotCapacity :: Maybe (Val Integer')
  } deriving (Show, Eq)

instance ToJSON EMRClusterInstanceFleetConfig where
  toJSON EMRClusterInstanceFleetConfig{..} =
    object $
    catMaybes
    [ ("InstanceTypeConfigs" .=) <$> _eMRClusterInstanceFleetConfigInstanceTypeConfigs
    , ("LaunchSpecifications" .=) <$> _eMRClusterInstanceFleetConfigLaunchSpecifications
    , ("Name" .=) <$> _eMRClusterInstanceFleetConfigName
    , ("TargetOnDemandCapacity" .=) <$> _eMRClusterInstanceFleetConfigTargetOnDemandCapacity
    , ("TargetSpotCapacity" .=) <$> _eMRClusterInstanceFleetConfigTargetSpotCapacity
    ]

instance FromJSON EMRClusterInstanceFleetConfig where
  parseJSON (Object obj) =
    EMRClusterInstanceFleetConfig <$>
      obj .:? "InstanceTypeConfigs" <*>
      obj .:? "LaunchSpecifications" <*>
      obj .:? "Name" <*>
      obj .:? "TargetOnDemandCapacity" <*>
      obj .:? "TargetSpotCapacity"
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterInstanceFleetConfig' containing required
-- fields as arguments.
emrClusterInstanceFleetConfig
  :: EMRClusterInstanceFleetConfig
emrClusterInstanceFleetConfig  =
  EMRClusterInstanceFleetConfig
  { _eMRClusterInstanceFleetConfigInstanceTypeConfigs = Nothing
  , _eMRClusterInstanceFleetConfigLaunchSpecifications = Nothing
  , _eMRClusterInstanceFleetConfigName = Nothing
  , _eMRClusterInstanceFleetConfigTargetOnDemandCapacity = Nothing
  , _eMRClusterInstanceFleetConfigTargetSpotCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-instancetypeconfigs
emrcifcInstanceTypeConfigs :: Lens' EMRClusterInstanceFleetConfig (Maybe [EMRClusterInstanceTypeConfig])
emrcifcInstanceTypeConfigs = lens _eMRClusterInstanceFleetConfigInstanceTypeConfigs (\s a -> s { _eMRClusterInstanceFleetConfigInstanceTypeConfigs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-launchspecifications
emrcifcLaunchSpecifications :: Lens' EMRClusterInstanceFleetConfig (Maybe EMRClusterInstanceFleetProvisioningSpecifications)
emrcifcLaunchSpecifications = lens _eMRClusterInstanceFleetConfigLaunchSpecifications (\s a -> s { _eMRClusterInstanceFleetConfigLaunchSpecifications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-name
emrcifcName :: Lens' EMRClusterInstanceFleetConfig (Maybe (Val Text))
emrcifcName = lens _eMRClusterInstanceFleetConfigName (\s a -> s { _eMRClusterInstanceFleetConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-targetondemandcapacity
emrcifcTargetOnDemandCapacity :: Lens' EMRClusterInstanceFleetConfig (Maybe (Val Integer'))
emrcifcTargetOnDemandCapacity = lens _eMRClusterInstanceFleetConfigTargetOnDemandCapacity (\s a -> s { _eMRClusterInstanceFleetConfigTargetOnDemandCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-targetspotcapacity
emrcifcTargetSpotCapacity :: Lens' EMRClusterInstanceFleetConfig (Maybe (Val Integer'))
emrcifcTargetSpotCapacity = lens _eMRClusterInstanceFleetConfigTargetSpotCapacity (\s a -> s { _eMRClusterInstanceFleetConfigTargetSpotCapacity = a })