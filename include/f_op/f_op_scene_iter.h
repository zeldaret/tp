#ifndef F_F_OP_SCENE_ITER_H_
#define F_F_OP_SCENE_ITER_H_

typedef void* (*fop_ScnItFunc)(void* i_scene, void* i_data);
void* fopScnIt_Judge(fop_ScnItFunc i_judgeFunc, void* i_data);

#endif
