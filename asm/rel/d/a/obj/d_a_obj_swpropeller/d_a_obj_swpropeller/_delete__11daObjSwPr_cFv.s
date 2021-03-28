lbl_8059B1AC:
/* 8059B1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B1B0  7C 08 02 A6 */	mflr r0
/* 8059B1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B1B8  7C 64 1B 78 */	mr r4, r3
/* 8059B1BC  38 64 05 68 */	addi r3, r4, 0x568
/* 8059B1C0  88 04 08 3E */	lbz r0, 0x83e(r4)
/* 8059B1C4  54 00 10 3A */	slwi r0, r0, 2
/* 8059B1C8  3C 80 80 5A */	lis r4, l_arcName@ha
/* 8059B1CC  38 84 B3 80 */	addi r4, r4, l_arcName@l
/* 8059B1D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 8059B1D4  4B A9 1E 34 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8059B1D8  38 60 00 01 */	li r3, 1
/* 8059B1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B1E0  7C 08 03 A6 */	mtlr r0
/* 8059B1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B1E8  4E 80 00 20 */	blr 
