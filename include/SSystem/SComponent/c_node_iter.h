#ifndef C_NODE_ITER_H
#define C_NODE_ITER_H


typedef struct node_class node_class;

typedef int (*cNdIt_MethodFunc)(node_class* pNode, void* pUserData);
int cNdIt_Method(node_class* pNode, cNdIt_MethodFunc pMethod, void* pUserData);

typedef void* (*cNdIt_JudgeFunc)(node_class* pNode, void* pUserData);
void* cNdIt_Judge(node_class* pNode, cNdIt_JudgeFunc pJudge, void* pUserData);

#endif /* C_NODE_ITER_H */
