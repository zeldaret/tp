lbl_80BC3E8C:
/* 80BC3E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC3E90  7C 08 02 A6 */	mflr r0
/* 80BC3E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3E98  3C 80 80 BC */	lis r4, d_a_obj_bubblePilar__stringBase0@ha /* 0x80BC40B4@ha */
/* 80BC3E9C  38 84 40 B4 */	addi r4, r4, d_a_obj_bubblePilar__stringBase0@l /* 0x80BC40B4@l */
/* 80BC3EA0  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80BC3EA4  4B 46 91 65 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BC3EA8  38 60 00 01 */	li r3, 1
/* 80BC3EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3EB0  7C 08 03 A6 */	mtlr r0
/* 80BC3EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3EB8  4E 80 00 20 */	blr 
