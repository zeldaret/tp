lbl_80C8CA78:
/* 80C8CA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8CA7C  7C 08 02 A6 */	mflr r0
/* 80C8CA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8CA84  7C 64 1B 78 */	mr r4, r3
/* 80C8CA88  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80C8CA8C  88 04 05 BB */	lbz r0, 0x5bb(r4)
/* 80C8CA90  54 00 10 3A */	slwi r0, r0, 2
/* 80C8CA94  3C 80 80 C9 */	lis r4, l_resNameIdx@ha
/* 80C8CA98  38 84 CC 64 */	addi r4, r4, l_resNameIdx@l
/* 80C8CA9C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C8CAA0  4B 3A 05 68 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C8CAA4  38 60 00 01 */	li r3, 1
/* 80C8CAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CAAC  7C 08 03 A6 */	mtlr r0
/* 80C8CAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CAB4  4E 80 00 20 */	blr 
