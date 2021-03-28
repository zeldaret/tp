lbl_809E1F10:
/* 809E1F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E1F14  7C 08 02 A6 */	mflr r0
/* 809E1F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E1F1C  38 63 0D D4 */	addi r3, r3, 0xdd4
/* 809E1F20  4B 98 01 28 */	b __ptmf_cmpr
/* 809E1F24  7C 60 00 34 */	cntlzw r0, r3
/* 809E1F28  54 03 D9 7E */	srwi r3, r0, 5
/* 809E1F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E1F30  7C 08 03 A6 */	mtlr r0
/* 809E1F34  38 21 00 10 */	addi r1, r1, 0x10
/* 809E1F38  4E 80 00 20 */	blr 
