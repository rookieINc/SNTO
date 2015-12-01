
/************************************************************
 * Copyright(C), 2015-2016, QTPAY
 * 
 * FileName:    flow_parse.h
 * Author:      rookieINc
 * Version:     v0.1.0
 * Date:        2015-12-01 15:19
 * Description: flow_parse.h
 * History:     
 ***********************************************************/


#ifndef _FLOW_PARSE_H_INCLUDED_
#define _FLOW_PARSE_H_INCLUDED_

#define PROCESS_NOR_STATUS      0
#define PROCESS_PRE_STATUS      1
#define PROCESS_ERR_STATUS      2
#define PROCESS_ERR_NOR_STATUS  3

#define WORK_ID_LEN    3
#define FLOW_ID_LEN    6

struct work_flow_node_s
{
    kdk_char32                  work_id[WORK_ID_LEN + 1];
    struct work_flow_node_s    *node_next;
    struct work_flow_branch_s  *branch_flow;
};

typedef struct work_flow_node_s work_flow_node_t;

struct work_flow_branch_s
{
    /* config */
    kdk_char32                  flow_id[FLOW_ID_LEN + 1];
    kdk_uint32                  work_id_count;
    struct work_flow_node_s    *node_flow;
    struct work_flow_branch_s  *branch_next;
    /* runtime */
    struct work_flow_node_s    *node_current;
    struct work_flow_branch_s  *branch_current;
    kdk_uint32                  step;
};

typedef struct work_flow_branch_s work_flow_branch_t; 

struct work_flow_data_s
{
    kdk_uint32 test;
};

typedef struct work_flow_data_s work_flow_data_t;

#endif /* _FLOW_PARSE_H_INCLUDED_ */
