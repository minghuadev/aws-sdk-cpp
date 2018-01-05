#
# Copyright 2010-2017 Amazon.com, Inc. or its affiliates. All Rights Reserved.
# 
# Licensed under the Apache License, Version 2.0 (the "License").
# You may not use this file except in compliance with the License.
# A copy of the License is located at
# 
#  http://aws.amazon.com/apache2.0
# 
# or in the "license" file accompanying this file. This file is distributed
# on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
# express or implied. See the License for the specific language governing
# permissions and limitations under the License.
#

set(C2J_SPECIAL_NAME_LIST "")
list(APPEND C2J_SPECIAL_NAME_LIST "lex:runtime.lex")
list(APPEND C2J_SPECIAL_NAME_LIST "marketplace-entitlement:entitlement.marketplace")
list(APPEND C2J_SPECIAL_NAME_LIST "sagemaker-runtime:runtime.sagemaker")
set(SDK_DEPENDENCY_BUILD_LIST "")

# cmake doesn't support maps, so we use list elements as key-value pairs; the ':' becomes a separator between key and value
set(C2J_LIST "")
list(APPEND C2J_LIST "acm:2015-12-08") 
list(APPEND C2J_LIST "alexaforbusiness:2017-11-09")
list(APPEND C2J_LIST "apigateway:2015-07-09")
list(APPEND C2J_LIST "application-autoscaling:2016-02-06")
list(APPEND C2J_LIST "AWSMigrationHub:2017-05-31")
list(APPEND C2J_LIST "appstream:2016-12-01")
list(APPEND C2J_LIST "appsync:2017-07-25")
list(APPEND C2J_LIST "athena:2017-05-18")
list(APPEND C2J_LIST "autoscaling:2011-01-01")
list(APPEND C2J_LIST "batch:2016-08-10")
list(APPEND C2J_LIST "budgets:2016-10-20")
list(APPEND C2J_LIST "cloud9:2017-09-23")
list(APPEND C2J_LIST "clouddirectory:2016-05-10")
list(APPEND C2J_LIST "cloudformation:2010-05-15")
list(APPEND C2J_LIST "cloudfront:2017-03-25")
list(APPEND C2J_LIST "cloudhsm:2014-05-30")
list(APPEND C2J_LIST "cloudsearch:2013-01-01")
list(APPEND C2J_LIST "cloudsearchdomain:2013-01-01")
list(APPEND C2J_LIST "cloudtrail:2013-11-01")
list(APPEND C2J_LIST "codebuild:2016-10-06")
list(APPEND C2J_LIST "codecommit:2015-04-13")
list(APPEND C2J_LIST "codedeploy:2014-10-06")
list(APPEND C2J_LIST "codepipeline:2015-07-09")
list(APPEND C2J_LIST "codestar:2017-04-19")
list(APPEND C2J_LIST "cognito-identity:2014-06-30")
list(APPEND C2J_LIST "cognito-idp:2016-04-18")
list(APPEND C2J_LIST "cognito-sync:2014-06-30")
list(APPEND C2J_LIST "comprehend:2017-11-27")
list(APPEND C2J_LIST "config:2014-11-12")
list(APPEND C2J_LIST "cloudhsmv2:2017-04-28")
list(APPEND C2J_LIST "cur:2017-01-06")
list(APPEND C2J_LIST "datapipeline:2012-10-29")
list(APPEND C2J_LIST "dax:2017-04-19")
list(APPEND C2J_LIST "devicefarm:2015-06-23")
list(APPEND C2J_LIST "directconnect:2012-10-25")
list(APPEND C2J_LIST "discovery:2015-11-01")
list(APPEND C2J_LIST "dms:2016-01-01")
list(APPEND C2J_LIST "ds:2015-04-16")
list(APPEND C2J_LIST "dynamodb:2012-08-10")
list(APPEND C2J_LIST "dynamodbstreams:2012-08-10")

if(NOT PLATFORM_ANDROID OR NOT CMAKE_HOST_WIN32)  # ec2 isn't building for android on windows atm due to an internal compiler error, TODO: investigate further
    list(APPEND C2J_LIST "ec2:2016-11-15")
endif()
list(APPEND C2J_LIST "ecr:2015-09-21")
list(APPEND C2J_LIST "ecs:2014-11-13")
list(APPEND C2J_LIST "elasticache:2015-02-02")
list(APPEND C2J_LIST "elasticbeanstalk:2010-12-01")
list(APPEND C2J_LIST "elasticfilesystem:2015-02-01")
list(APPEND C2J_LIST "elasticloadbalancing:2012-06-01")
list(APPEND C2J_LIST "elasticloadbalancingv2:2015-12-01")
list(APPEND C2J_LIST "elasticmapreduce:2009-03-31")
list(APPEND C2J_LIST "elastictranscoder:2012-09-25")
list(APPEND C2J_LIST "email:2010-12-01")
list(APPEND C2J_LIST "es:2015-01-01")
list(APPEND C2J_LIST "events:2015-10-07")
list(APPEND C2J_LIST "firehose:2015-08-04")
list(APPEND C2J_LIST "gamelift:2015-10-01")
list(APPEND C2J_LIST "glacier:2012-06-01")
list(APPEND C2J_LIST "glue:2017-03-31")
list(APPEND C2J_LIST "greengrass:2017-06-07")
list(APPEND C2J_LIST "guardduty:2017-11-28")
list(APPEND C2J_LIST "health:2016-08-04")
list(APPEND C2J_LIST "iam:2010-05-08")
list(APPEND C2J_LIST "importexport:2010-06-01")
list(APPEND C2J_LIST "inspector:2016-02-16")
list(APPEND C2J_LIST "iot:2015-05-28")
list(APPEND C2J_LIST "iot-data:2015-05-28")
list(APPEND C2J_LIST "iot-jobs-data:2017-09-29")
list(APPEND C2J_LIST "kinesis:2013-12-02")
list(APPEND C2J_LIST "kinesis-video-archived-media:2017-09-30")
list(APPEND C2J_LIST "kinesis-video-media:2017-09-30")
list(APPEND C2J_LIST "kinesisanalytics:2015-08-14")
list(APPEND C2J_LIST "kinesisvideo:2017-09-30")
list(APPEND C2J_LIST "kms:2014-11-01")
list(APPEND C2J_LIST "lambda:2015-03-31")
list(APPEND C2J_LIST "lex:2016-11-28")
list(APPEND C2J_LIST "lex-models:2017-04-19")
list(APPEND C2J_LIST "lightsail:2016-11-28")
list(APPEND C2J_LIST "logs:2014-03-28")
list(APPEND C2J_LIST "machinelearning:2014-12-12")
list(APPEND C2J_LIST "marketplacecommerceanalytics:2015-07-01")
list(APPEND C2J_LIST "marketplace-entitlement:2017-01-11")
list(APPEND C2J_LIST "mediaconvert:2017-08-29")
list(APPEND C2J_LIST "medialive:2017-10-14")
list(APPEND C2J_LIST "mediapackage:2017-10-12")
list(APPEND C2J_LIST "mediastore:2017-09-01")
list(APPEND C2J_LIST "mediastore-data:2017-09-01")
list(APPEND C2J_LIST "meteringmarketplace:2016-01-14")
list(APPEND C2J_LIST "mobileanalytics:2014-06-05")
list(APPEND C2J_LIST "monitoring:2010-08-01")
list(APPEND C2J_LIST "mq:2017-11-27")
list(APPEND C2J_LIST "mturk-requester:2017-01-17")
list(APPEND C2J_LIST "opsworks:2013-02-18")
list(APPEND C2J_LIST "opsworkscm:2016-11-01")
list(APPEND C2J_LIST "organizations:2016-11-28")
list(APPEND C2J_LIST "polly:2016-06-10")
list(APPEND C2J_LIST "pinpoint:2016-12-01")
list(APPEND C2J_LIST "pricing:2017-10-15")
list(APPEND C2J_LIST "rds:2014-10-31")
list(APPEND C2J_LIST "redshift:2012-12-01")
list(APPEND C2J_LIST "rekognition:2016-06-27")
list(APPEND C2J_LIST "resource-groups:2017-11-27")
list(APPEND C2J_LIST "resourcegroupstaggingapi:2017-01-26")
list(APPEND C2J_LIST "route53:2013-04-01")
list(APPEND C2J_LIST "route53domains:2014-05-15")
list(APPEND C2J_LIST "s3:2006-03-01")
list(APPEND C2J_LIST "sagemaker:2017-07-24")
list(APPEND C2J_LIST "sagemaker-runtime:2017-05-13")
list(APPEND C2J_LIST "sdb:2009-04-15")
list(APPEND C2J_LIST "serverlessrepo:2017-09-08")
list(APPEND C2J_LIST "servicecatalog:2015-12-10")
list(APPEND C2J_LIST "servicediscovery:2017-03-14")
list(APPEND C2J_LIST "shield:2016-06-02")
list(APPEND C2J_LIST "sms:2016-10-24")
list(APPEND C2J_LIST "snowball:2016-06-30")
list(APPEND C2J_LIST "sns:2010-03-31")
list(APPEND C2J_LIST "sqs:2012-11-05")
list(APPEND C2J_LIST "ssm:2014-11-06")
list(APPEND C2J_LIST "states:2016-11-23")
list(APPEND C2J_LIST "storagegateway:2013-06-30")
list(APPEND C2J_LIST "sts:2011-06-15")
list(APPEND C2J_LIST "support:2013-04-15")
list(APPEND C2J_LIST "swf:2012-01-25")
list(APPEND C2J_LIST "translate:2017-07-01")
list(APPEND C2J_LIST "waf:2015-08-24")
list(APPEND C2J_LIST "waf-regional:2016-11-28")
list(APPEND C2J_LIST "workspaces:2015-04-08")
list(APPEND C2J_LIST "workdocs:2016-05-01")
list(APPEND C2J_LIST "workmail:2017-10-01")
list(APPEND C2J_LIST "xray:2016-04-12")

set(HIGH_LEVEL_SDK_LIST "")
list(APPEND HIGH_LEVEL_SDK_LIST "access-management") 
list(APPEND HIGH_LEVEL_SDK_LIST "identity-management") 
list(APPEND HIGH_LEVEL_SDK_LIST "queues") 
list(APPEND HIGH_LEVEL_SDK_LIST "transfer") 
list(APPEND HIGH_LEVEL_SDK_LIST "s3-encryption") 
list(APPEND HIGH_LEVEL_SDK_LIST "text-to-speech") 

set(SDK_TEST_PROJECT_LIST "")
list(APPEND SDK_TEST_PROJECT_LIST "cognito-identity:aws-cpp-sdk-cognitoidentity-integration-tests")
list(APPEND SDK_TEST_PROJECT_LIST "dynamodb:aws-cpp-sdk-dynamodb-integration-tests")
list(APPEND SDK_TEST_PROJECT_LIST "identity-management:aws-cpp-sdk-identity-management-tests")
list(APPEND SDK_TEST_PROJECT_LIST "lambda:aws-cpp-sdk-lambda-integration-tests")
list(APPEND SDK_TEST_PROJECT_LIST "s3:aws-cpp-sdk-s3-integration-tests")
list(APPEND SDK_TEST_PROJECT_LIST "redshift:aws-cpp-sdk-redshift-integration-tests")
list(APPEND SDK_TEST_PROJECT_LIST "sqs:aws-cpp-sdk-sqs-integration-tests")
list(APPEND SDK_TEST_PROJECT_LIST "transfer:aws-cpp-sdk-transfer-tests")
list(APPEND SDK_TEST_PROJECT_LIST "s3-encryption:aws-cpp-sdk-s3-encryption-tests,aws-cpp-sdk-s3-encryption-integration-tests")
list(APPEND SDK_TEST_PROJECT_LIST "ec2:aws-cpp-sdk-ec2-integration-tests")
list(APPEND SDK_TEST_PROJECT_LIST "core:aws-cpp-sdk-core-tests")
list(APPEND SDK_TEST_PROJECT_LIST "text-to-speech:aws-cpp-sdk-text-to-speech-tests,aws-cpp-sdk-polly-sample")

set(SDK_DEPENDENCY_LIST "")
list(APPEND SDK_DEPENDENCY_LIST "access-management:iam,cognito-identity,core")
list(APPEND SDK_DEPENDENCY_LIST "identity-management:cognito-identity,sts,core")
list(APPEND SDK_DEPENDENCY_LIST "queues:sqs,core")
list(APPEND SDK_DEPENDENCY_LIST "transfer:s3,core")
list(APPEND SDK_DEPENDENCY_LIST "s3-encryption:s3,kms,core")
list(APPEND SDK_DEPENDENCY_LIST "text-to-speech:polly,core")

set(TEST_DEPENDENCY_LIST "")
list(APPEND TEST_DEPENDENCY_LIST "cognito-identity:access-management,iam,core")
list(APPEND TEST_DEPENDENCY_LIST "identity-management:cognito-identity,sts,core")
list(APPEND TEST_DEPENDENCY_LIST "lambda:access-management,cognito-identity,iam,kinesis,core")
list(APPEND TEST_DEPENDENCY_LIST "sqs:access-management,cognito-identity,iam,core")
list(APPEND TEST_DEPENDENCY_LIST "transfer:s3,core")
list(APPEND TEST_DEPENDENCY_LIST "s3-encryption:s3,kms,core")
list(APPEND TEST_DEPENDENCY_LIST "text-to-speech:polly,core")

# make a list of the generated clients
set(GENERATED_SERVICE_LIST "")
foreach(GENERATED_C2J_SERVICE IN LISTS C2J_LIST)
    STRING(REGEX REPLACE "([^:]+):.*" "\\1" SERVICE_RESULT ${GENERATED_C2J_SERVICE})
    list(APPEND GENERATED_SERVICE_LIST ${SERVICE_RESULT})
    list(APPEND SDK_DEPENDENCY_LIST "${SERVICE_RESULT}:core")
endforeach()

# helper function that that gives primitive map functionality by treating a colon as the key-value separator, while the list semi-colon separates pairs
# to use, pass the list-map in as a third parameter (see helper functions below)
function(get_map_element KEY VALUE_VAR)
    foreach(ELEMENT_PAIR ${ARGN})
        STRING(REGEX REPLACE "([^:]+):.*" "\\1" KEY_RESULT ${ELEMENT_PAIR})
        if(${KEY_RESULT} STREQUAL ${KEY} )
            STRING(REGEX REPLACE "[^:]+:(.*)" "\\1" VALUE_RESULT ${ELEMENT_PAIR})
            set(${VALUE_VAR} "${VALUE_RESULT}" PARENT_SCOPE)
            return()
        endif()
    endforeach()
    set(${VALUE_VAR} "" PARENT_SCOPE)
endfunction(get_map_element)

# a bunch of key-value retrieval functions for the list-maps we defined above
function(get_c2j_date_for_service SERVICE_NAME C2J_DATE_VAR)
    get_map_element(${SERVICE_NAME} TEMP_VAR ${C2J_LIST})
    set(${C2J_DATE_VAR} "${TEMP_VAR}" PARENT_SCOPE)
endfunction()

function(get_c2j_name_for_service SERVICE_NAME C2J_NAME_VAR)
    get_map_element(${SERVICE_NAME} TEMP_VAR ${C2J_SPECIAL_NAME_LIST})
    if(TEMP_VAR)
        set(${C2J_NAME_VAR} "${TEMP_VAR}" PARENT_SCOPE)
    else()
        set(${C2J_NAME_VAR} "${SERVICE_NAME}" PARENT_SCOPE)
    endif()
endfunction()

function(get_test_projects_for_service SERVICE_NAME TEST_PROJECT_NAME_VAR)
    get_map_element(${SERVICE_NAME} TEMP_VAR ${SDK_TEST_PROJECT_LIST})
    set(${TEST_PROJECT_NAME_VAR} "${TEMP_VAR}" PARENT_SCOPE)
endfunction()

function(get_dependencies_for_sdk PROJECT_NAME DEPENDENCY_LIST_VAR)
    get_map_element(${PROJECT_NAME} TEMP_VAR ${SDK_DEPENDENCY_LIST})
    set(${DEPENDENCY_LIST_VAR} "${TEMP_VAR}" PARENT_SCOPE)
endfunction()

function(get_dependencies_for_test TEST_NAME DEPENDENCY_LIST_VAR)
    get_map_element(${TEST_NAME} TEMP_VAR ${TEST_DEPENDENCY_LIST})
    set(${DEPENDENCY_LIST_VAR} "${TEMP_VAR}" PARENT_SCOPE)
endfunction()

# returns all sdks, including itself, that depend on the supplied sdk
# this is kind of a reverse function of get_dependencies_for_sdk
function(get_sdks_depending_on SDK_NAME DEPENDING_SDKS_VAR)
    set(TEMP_SDK_LIST "${SDK_NAME}")
    foreach(SDK_DEP ${SDK_DEPENDENCY_LIST})
        STRING(REGEX REPLACE "([^:]+):.*" "\\1" KEY_RESULT ${SDK_DEP})
        STRING(REGEX REPLACE "[^:]+:(.*)" "\\1" VALUE_RESULT ${SDK_DEP})
        STRING(REPLACE "," ";" LIST_RESULT ${VALUE_RESULT})
        list(FIND LIST_RESULT ${SDK_NAME} FIND_INDEX)
        if(FIND_INDEX GREATER -1)
            list(APPEND TEMP_SDK_LIST ${KEY_RESULT})
        endif()
    endforeach()

    set(${DEPENDING_SDKS_VAR} "${TEMP_SDK_LIST}" PARENT_SCOPE)
endfunction()

