lbl_80CB3C74:
/* 80CB3C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB3C78  7C 08 02 A6 */	mflr r0
/* 80CB3C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3C80  3C 80 80 CB */	lis r4, d_a_obj_poFire__stringBase0@ha /* 0x80CB3F3C@ha */
/* 80CB3C84  38 84 3F 3C */	addi r4, r4, d_a_obj_poFire__stringBase0@l /* 0x80CB3F3C@l */
/* 80CB3C88  38 63 05 84 */	addi r3, r3, 0x584
/* 80CB3C8C  4B 37 93 7D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CB3C90  38 60 00 01 */	li r3, 1
/* 80CB3C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB3C98  7C 08 03 A6 */	mtlr r0
/* 80CB3C9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB3CA0  4E 80 00 20 */	blr 
