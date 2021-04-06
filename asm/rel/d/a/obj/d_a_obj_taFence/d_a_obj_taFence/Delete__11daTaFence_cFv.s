lbl_80D05EFC:
/* 80D05EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D05F00  7C 08 02 A6 */	mflr r0
/* 80D05F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D05F08  3C 80 80 D0 */	lis r4, d_a_obj_taFence__stringBase0@ha /* 0x80D06198@ha */
/* 80D05F0C  38 84 61 98 */	addi r4, r4, d_a_obj_taFence__stringBase0@l /* 0x80D06198@l */
/* 80D05F10  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80D05F14  4B 32 70 F5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D05F18  38 60 00 01 */	li r3, 1
/* 80D05F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D05F20  7C 08 03 A6 */	mtlr r0
/* 80D05F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80D05F28  4E 80 00 20 */	blr 
