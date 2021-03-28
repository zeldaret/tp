lbl_80C85098:
/* 80C85098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8509C  7C 08 02 A6 */	mflr r0
/* 80C850A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C850A4  7C 64 1B 78 */	mr r4, r3
/* 80C850A8  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80C850AC  88 04 05 AE */	lbz r0, 0x5ae(r4)
/* 80C850B0  54 00 10 3A */	slwi r0, r0, 2
/* 80C850B4  3C 80 80 C8 */	lis r4, l_type@ha
/* 80C850B8  38 84 52 64 */	addi r4, r4, l_type@l
/* 80C850BC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C850C0  4B 3A 7F 48 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C850C4  38 60 00 01 */	li r3, 1
/* 80C850C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C850CC  7C 08 03 A6 */	mtlr r0
/* 80C850D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C850D4  4E 80 00 20 */	blr 
