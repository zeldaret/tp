lbl_80D2DE84:
/* 80D2DE84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2DE88  7C 08 02 A6 */	mflr r0
/* 80D2DE8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2DE90  3C 80 80 D3 */	lis r4, d_a_obj_waterPillar__stringBase0@ha /* 0x80D2E844@ha */
/* 80D2DE94  38 84 E8 44 */	addi r4, r4, d_a_obj_waterPillar__stringBase0@l /* 0x80D2E844@l */
/* 80D2DE98  38 63 05 84 */	addi r3, r3, 0x584
/* 80D2DE9C  4B 2F F1 6D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D2DEA0  38 60 00 01 */	li r3, 1
/* 80D2DEA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2DEA8  7C 08 03 A6 */	mtlr r0
/* 80D2DEAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2DEB0  4E 80 00 20 */	blr 
