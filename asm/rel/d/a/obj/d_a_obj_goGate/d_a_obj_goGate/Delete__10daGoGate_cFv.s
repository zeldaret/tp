lbl_80BFDE80:
/* 80BFDE80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFDE84  7C 08 02 A6 */	mflr r0
/* 80BFDE88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFDE8C  3C 80 80 C0 */	lis r4, stringBase0@ha
/* 80BFDE90  38 84 E0 08 */	addi r4, r4, stringBase0@l
/* 80BFDE94  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80BFDE98  4B 42 F1 70 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BFDE9C  38 60 00 01 */	li r3, 1
/* 80BFDEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFDEA4  7C 08 03 A6 */	mtlr r0
/* 80BFDEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFDEAC  4E 80 00 20 */	blr 
