lbl_8009DA60:
/* 8009DA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009DA64  7C 08 02 A6 */	mflr r0
/* 8009DA68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009DA6C  7C 64 1B 78 */	mr r4, r3
/* 8009DA70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009DA74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009DA78  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8009DA7C  48 2C AF 19 */	bl strcmp
/* 8009DA80  7C 60 00 34 */	cntlzw r0, r3
/* 8009DA84  54 03 D9 7E */	srwi r3, r0, 5
/* 8009DA88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009DA8C  7C 08 03 A6 */	mtlr r0
/* 8009DA90  38 21 00 10 */	addi r1, r1, 0x10
/* 8009DA94  4E 80 00 20 */	blr 
