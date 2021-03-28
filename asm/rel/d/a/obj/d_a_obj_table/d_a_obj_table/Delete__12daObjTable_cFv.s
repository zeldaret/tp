lbl_80D06BC8:
/* 80D06BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D06BCC  7C 08 02 A6 */	mflr r0
/* 80D06BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D06BD4  3C 80 80 D0 */	lis r4, l_arcName@ha
/* 80D06BD8  38 84 6C 1C */	addi r4, r4, l_arcName@l
/* 80D06BDC  80 84 00 00 */	lwz r4, 0(r4)
/* 80D06BE0  38 63 05 A4 */	addi r3, r3, 0x5a4
/* 80D06BE4  4B 32 64 24 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D06BE8  38 60 00 01 */	li r3, 1
/* 80D06BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D06BF0  7C 08 03 A6 */	mtlr r0
/* 80D06BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D06BF8  4E 80 00 20 */	blr 
