{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-xssmatchset.html

module Stratosphere.Resources.WAFXssMatchSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFXssMatchSetXssMatchTuple

-- | Full data type definition for WAFXssMatchSet. See 'wafXssMatchSet' for a
-- more convenient constructor.
data WAFXssMatchSet =
  WAFXssMatchSet
  { _wAFXssMatchSetName :: Val Text
  , _wAFXssMatchSetXssMatchTuples :: [WAFXssMatchSetXssMatchTuple]
  } deriving (Show, Eq)

instance ToJSON WAFXssMatchSet where
  toJSON WAFXssMatchSet{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _wAFXssMatchSetName
    , (Just . ("XssMatchTuples",) . toJSON) _wAFXssMatchSetXssMatchTuples
    ]

instance FromJSON WAFXssMatchSet where
  parseJSON (Object obj) =
    WAFXssMatchSet <$>
      (obj .: "Name") <*>
      (obj .: "XssMatchTuples")
  parseJSON _ = mempty

-- | Constructor for 'WAFXssMatchSet' containing required fields as arguments.
wafXssMatchSet
  :: Val Text -- ^ 'wafxmsName'
  -> [WAFXssMatchSetXssMatchTuple] -- ^ 'wafxmsXssMatchTuples'
  -> WAFXssMatchSet
wafXssMatchSet namearg xssMatchTuplesarg =
  WAFXssMatchSet
  { _wAFXssMatchSetName = namearg
  , _wAFXssMatchSetXssMatchTuples = xssMatchTuplesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-xssmatchset.html#cfn-waf-xssmatchset-name
wafxmsName :: Lens' WAFXssMatchSet (Val Text)
wafxmsName = lens _wAFXssMatchSetName (\s a -> s { _wAFXssMatchSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-xssmatchset.html#cfn-waf-xssmatchset-xssmatchtuples
wafxmsXssMatchTuples :: Lens' WAFXssMatchSet [WAFXssMatchSetXssMatchTuple]
wafxmsXssMatchTuples = lens _wAFXssMatchSetXssMatchTuples (\s a -> s { _wAFXssMatchSetXssMatchTuples = a })
