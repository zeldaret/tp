#ifndef F_F_OP_SCENE_REQ_H_
#define F_F_OP_SCENE_REQ_H_

extern "C" {
void fopScnRq_Handler(void);
void fopScnRq_ReRequest(void);
}

u32 fopScnRq_Request(int,scene_class*,s16,void*,s16,u16);

#endif