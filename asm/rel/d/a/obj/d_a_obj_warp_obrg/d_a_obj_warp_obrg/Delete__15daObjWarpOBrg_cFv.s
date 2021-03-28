lbl_80D2B6C0:
/* 80D2B6C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2B6C4  7C 08 02 A6 */	mflr r0
/* 80D2B6C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2B6CC  3C 80 80 D3 */	lis r4, l_arcName@ha
/* 80D2B6D0  38 84 B9 34 */	addi r4, r4, l_arcName@l
/* 80D2B6D4  80 84 00 00 */	lwz r4, 0(r4)
/* 80D2B6D8  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80D2B6DC  4B 30 19 2C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D2B6E0  38 60 00 01 */	li r3, 1
/* 80D2B6E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2B6E8  7C 08 03 A6 */	mtlr r0
/* 80D2B6EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2B6F0  4E 80 00 20 */	blr 
