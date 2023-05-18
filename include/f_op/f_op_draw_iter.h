#ifndef F_F_OP_DRAW_ITER_H_
#define F_F_OP_DRAW_ITER_H_

typedef struct create_tag_class create_tag_class;

static create_tag_class* fopDwIt_GetTag(void);
create_tag_class* fopDwIt_Begin(void);
create_tag_class* fopDwIt_Next(create_tag_class* pCreateTag);

#endif