lbl_8045A2B8:
/* 8045A2B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045A2BC  7C 08 02 A6 */	mflr r0
/* 8045A2C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045A2C4  A0 03 0C D0 */	lhz r0, 0xcd0(r3)
/* 8045A2C8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8045A2CC  3C 80 80 46 */	lis r4, mCreateInitFunc__9daBgObj_c@ha
/* 8045A2D0  38 04 CB CC */	addi r0, r4, mCreateInitFunc__9daBgObj_c@l
/* 8045A2D4  7D 80 2A 14 */	add r12, r0, r5
/* 8045A2D8  4B F0 7D AC */	b __ptmf_scall
/* 8045A2DC  60 00 00 00 */	nop 
/* 8045A2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045A2E4  7C 08 03 A6 */	mtlr r0
/* 8045A2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045A2EC  4E 80 00 20 */	blr 
