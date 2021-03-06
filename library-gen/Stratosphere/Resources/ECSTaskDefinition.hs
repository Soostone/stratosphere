{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html

module Stratosphere.Resources.ECSTaskDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSTaskDefinitionContainerDefinition
import Stratosphere.ResourceProperties.ECSTaskDefinitionTaskDefinitionPlacementConstraint
import Stratosphere.ResourceProperties.ECSTaskDefinitionVolume

-- | Full data type definition for ECSTaskDefinition. See 'ecsTaskDefinition'
-- for a more convenient constructor.
data ECSTaskDefinition =
  ECSTaskDefinition
  { _eCSTaskDefinitionContainerDefinitions :: Maybe [ECSTaskDefinitionContainerDefinition]
  , _eCSTaskDefinitionCpu :: Maybe (Val Text)
  , _eCSTaskDefinitionExecutionRoleArn :: Maybe (Val Text)
  , _eCSTaskDefinitionFamily :: Maybe (Val Text)
  , _eCSTaskDefinitionMemory :: Maybe (Val Text)
  , _eCSTaskDefinitionNetworkMode :: Maybe (Val Text)
  , _eCSTaskDefinitionPlacementConstraints :: Maybe [ECSTaskDefinitionTaskDefinitionPlacementConstraint]
  , _eCSTaskDefinitionRequiresCompatibilities :: Maybe (ValList Text)
  , _eCSTaskDefinitionTaskRoleArn :: Maybe (Val Text)
  , _eCSTaskDefinitionVolumes :: Maybe [ECSTaskDefinitionVolume]
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinition where
  toJSON ECSTaskDefinition{..} =
    object $
    catMaybes
    [ fmap (("ContainerDefinitions",) . toJSON) _eCSTaskDefinitionContainerDefinitions
    , fmap (("Cpu",) . toJSON) _eCSTaskDefinitionCpu
    , fmap (("ExecutionRoleArn",) . toJSON) _eCSTaskDefinitionExecutionRoleArn
    , fmap (("Family",) . toJSON) _eCSTaskDefinitionFamily
    , fmap (("Memory",) . toJSON) _eCSTaskDefinitionMemory
    , fmap (("NetworkMode",) . toJSON) _eCSTaskDefinitionNetworkMode
    , fmap (("PlacementConstraints",) . toJSON) _eCSTaskDefinitionPlacementConstraints
    , fmap (("RequiresCompatibilities",) . toJSON) _eCSTaskDefinitionRequiresCompatibilities
    , fmap (("TaskRoleArn",) . toJSON) _eCSTaskDefinitionTaskRoleArn
    , fmap (("Volumes",) . toJSON) _eCSTaskDefinitionVolumes
    ]

instance FromJSON ECSTaskDefinition where
  parseJSON (Object obj) =
    ECSTaskDefinition <$>
      (obj .:? "ContainerDefinitions") <*>
      (obj .:? "Cpu") <*>
      (obj .:? "ExecutionRoleArn") <*>
      (obj .:? "Family") <*>
      (obj .:? "Memory") <*>
      (obj .:? "NetworkMode") <*>
      (obj .:? "PlacementConstraints") <*>
      (obj .:? "RequiresCompatibilities") <*>
      (obj .:? "TaskRoleArn") <*>
      (obj .:? "Volumes")
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinition' containing required fields as
-- arguments.
ecsTaskDefinition
  :: ECSTaskDefinition
ecsTaskDefinition  =
  ECSTaskDefinition
  { _eCSTaskDefinitionContainerDefinitions = Nothing
  , _eCSTaskDefinitionCpu = Nothing
  , _eCSTaskDefinitionExecutionRoleArn = Nothing
  , _eCSTaskDefinitionFamily = Nothing
  , _eCSTaskDefinitionMemory = Nothing
  , _eCSTaskDefinitionNetworkMode = Nothing
  , _eCSTaskDefinitionPlacementConstraints = Nothing
  , _eCSTaskDefinitionRequiresCompatibilities = Nothing
  , _eCSTaskDefinitionTaskRoleArn = Nothing
  , _eCSTaskDefinitionVolumes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-containerdefinitions
ecstdContainerDefinitions :: Lens' ECSTaskDefinition (Maybe [ECSTaskDefinitionContainerDefinition])
ecstdContainerDefinitions = lens _eCSTaskDefinitionContainerDefinitions (\s a -> s { _eCSTaskDefinitionContainerDefinitions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-cpu
ecstdCpu :: Lens' ECSTaskDefinition (Maybe (Val Text))
ecstdCpu = lens _eCSTaskDefinitionCpu (\s a -> s { _eCSTaskDefinitionCpu = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-executionrolearn
ecstdExecutionRoleArn :: Lens' ECSTaskDefinition (Maybe (Val Text))
ecstdExecutionRoleArn = lens _eCSTaskDefinitionExecutionRoleArn (\s a -> s { _eCSTaskDefinitionExecutionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-family
ecstdFamily :: Lens' ECSTaskDefinition (Maybe (Val Text))
ecstdFamily = lens _eCSTaskDefinitionFamily (\s a -> s { _eCSTaskDefinitionFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-memory
ecstdMemory :: Lens' ECSTaskDefinition (Maybe (Val Text))
ecstdMemory = lens _eCSTaskDefinitionMemory (\s a -> s { _eCSTaskDefinitionMemory = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-networkmode
ecstdNetworkMode :: Lens' ECSTaskDefinition (Maybe (Val Text))
ecstdNetworkMode = lens _eCSTaskDefinitionNetworkMode (\s a -> s { _eCSTaskDefinitionNetworkMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-placementconstraints
ecstdPlacementConstraints :: Lens' ECSTaskDefinition (Maybe [ECSTaskDefinitionTaskDefinitionPlacementConstraint])
ecstdPlacementConstraints = lens _eCSTaskDefinitionPlacementConstraints (\s a -> s { _eCSTaskDefinitionPlacementConstraints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-requirescompatibilities
ecstdRequiresCompatibilities :: Lens' ECSTaskDefinition (Maybe (ValList Text))
ecstdRequiresCompatibilities = lens _eCSTaskDefinitionRequiresCompatibilities (\s a -> s { _eCSTaskDefinitionRequiresCompatibilities = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-taskrolearn
ecstdTaskRoleArn :: Lens' ECSTaskDefinition (Maybe (Val Text))
ecstdTaskRoleArn = lens _eCSTaskDefinitionTaskRoleArn (\s a -> s { _eCSTaskDefinitionTaskRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-volumes
ecstdVolumes :: Lens' ECSTaskDefinition (Maybe [ECSTaskDefinitionVolume])
ecstdVolumes = lens _eCSTaskDefinitionVolumes (\s a -> s { _eCSTaskDefinitionVolumes = a })
