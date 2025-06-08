
#ifndef F_PC_BASE_H_
#define F_PC_BASE_H_

#include "f_pc/f_pc_delete_tag.h"
#include "f_pc/f_pc_layer_tag.h"
#include "f_pc/f_pc_line_tag.h"
#include "f_pc/f_pc_priority.h"

typedef unsigned int fpc_ProcID;

typedef struct create_request create_request;
typedef struct process_method_class process_method_class; 
typedef struct process_profile_definition process_profile_definition;
typedef struct profile_method_class profile_method_class;

typedef struct base_process_class {
    /* 0x00 */ int type;
    /* 0x04 */ fpc_ProcID id;
    /* 0x08 */ s16 name;
    /* 0x0A */ s8 unk_0xA;
    /* 0x0B */ u8 pause_flag;
    /* 0x0C */ s8 init_state;  // maybe inaccurate name
    /* 0x0D */ u8 create_phase;
    /* 0x0E */ s16 profname;
    /* 0x10 */ process_profile_definition* profile;
    /* 0x14 */ struct create_request* create_req;
    /* 0x18 */ layer_management_tag_class layer_tag;
    /* 0x34 */ line_tag line_tag_;
    /* 0x4C */ delete_tag_class delete_tag;
    /* 0x68 */ process_priority_class priority;
    /* 0xA8 */ process_method_class* methods;
    /* 0xAC */ void* append;
    /* 0xB0 */ u32 parameters;
    /* 0xB4 */ int subtype;
} base_process_class;  // Size: 0xB8

BOOL fpcBs_Is_JustOfType(int i_typeA, int i_typeB);
int fpcBs_MakeOfType(int* i_type);
int fpcBs_MakeOfId();
int fpcBs_Execute(base_process_class* i_proc);
void fpcBs_DeleteAppend(base_process_class* i_proc);
int fpcBs_IsDelete(base_process_class* i_proc);
int fpcBs_Delete(base_process_class* i_proc);
base_process_class* fpcBs_Create(s16 i_profname, fpc_ProcID i_procID, void* i_append);
int fpcBs_SubCreate(base_process_class* i_proc);

extern int g_fpcBs_type;

#endif
