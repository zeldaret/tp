lbl_80BAD2D8:
/* 80BAD2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD2DC  7C 08 02 A6 */	mflr r0
/* 80BAD2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD2E4  3C 80 80 BB */	lis r4, l_arcName@ha /* 0x80BAD4D4@ha */
/* 80BAD2E8  38 84 D4 D4 */	addi r4, r4, l_arcName@l /* 0x80BAD4D4@l */
/* 80BAD2EC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BAD2F0  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80BAD2F4  4B 47 FD 15 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BAD2F8  38 60 00 01 */	li r3, 1
/* 80BAD2FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD300  7C 08 03 A6 */	mtlr r0
/* 80BAD304  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD308  4E 80 00 20 */	blr 
