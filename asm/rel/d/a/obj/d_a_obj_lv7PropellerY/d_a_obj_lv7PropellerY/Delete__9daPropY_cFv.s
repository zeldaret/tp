lbl_80C85FB8:
/* 80C85FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C85FBC  7C 08 02 A6 */	mflr r0
/* 80C85FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C85FC4  7C 64 1B 78 */	mr r4, r3
/* 80C85FC8  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80C85FCC  88 04 05 AF */	lbz r0, 0x5af(r4)
/* 80C85FD0  54 00 10 3A */	slwi r0, r0, 2
/* 80C85FD4  3C 80 80 C8 */	lis r4, l_type@ha /* 0x80C86194@ha */
/* 80C85FD8  38 84 61 94 */	addi r4, r4, l_type@l /* 0x80C86194@l */
/* 80C85FDC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C85FE0  4B 3A 70 29 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C85FE4  38 60 00 01 */	li r3, 1
/* 80C85FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C85FEC  7C 08 03 A6 */	mtlr r0
/* 80C85FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C85FF4  4E 80 00 20 */	blr 
