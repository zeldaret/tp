lbl_80CB991C:
/* 80CB991C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB9920  7C 08 02 A6 */	mflr r0
/* 80CB9924  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9928  3C 80 80 CC */	lis r4, stringBase0@ha
/* 80CB992C  38 84 9A C0 */	addi r4, r4, stringBase0@l
/* 80CB9930  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80CB9934  4B 37 36 D4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CB9938  38 60 00 01 */	li r3, 1
/* 80CB993C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB9940  7C 08 03 A6 */	mtlr r0
/* 80CB9944  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9948  4E 80 00 20 */	blr 
