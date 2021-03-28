lbl_80020E38:
/* 80020E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020E3C  7C 08 02 A6 */	mflr r0
/* 80020E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020E44  7C 64 1B 78 */	mr r4, r3
/* 80020E48  3C 60 80 3A */	lis r3, g_fpcCtTg_Queue@ha
/* 80020E4C  38 63 39 90 */	addi r3, r3, g_fpcCtTg_Queue@l
/* 80020E50  48 24 5B 95 */	bl cTg_Addition__FP15node_list_classP16create_tag_class
/* 80020E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020E58  7C 08 03 A6 */	mtlr r0
/* 80020E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80020E60  4E 80 00 20 */	blr 
