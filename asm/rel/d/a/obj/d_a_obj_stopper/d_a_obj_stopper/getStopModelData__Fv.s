lbl_80CECF0C:
/* 80CECF0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CECF10  7C 08 02 A6 */	mflr r0
/* 80CECF14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CECF18  3C 60 80 CF */	lis r3, d_a_obj_stopper__stringBase0@ha /* 0x80CEEFF0@ha */
/* 80CECF1C  38 63 EF F0 */	addi r3, r3, d_a_obj_stopper__stringBase0@l /* 0x80CEEFF0@l */
/* 80CECF20  4B 34 25 15 */	bl dComIfG_getStageRes__FPCc
/* 80CECF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CECF28  7C 08 03 A6 */	mtlr r0
/* 80CECF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CECF30  4E 80 00 20 */	blr 
