lbl_8014B024:
/* 8014B024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014B028  7C 08 02 A6 */	mflr r0
/* 8014B02C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014B030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014B034  93 C1 00 08 */	stw r30, 8(r1)
/* 8014B038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014B03C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8014B040  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 8014B044  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8014B048  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8014B04C  41 82 00 60 */	beq lbl_8014B0AC
/* 8014B050  3B E0 00 00 */	li r31, 0
/* 8014B054  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 8014B058  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8014B05C  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8014B060  7D 89 03 A6 */	mtctr r12
/* 8014B064  4E 80 04 21 */	bctrl 
/* 8014B068  2C 03 00 00 */	cmpwi r3, 0
/* 8014B06C  40 82 00 38 */	bne lbl_8014B0A4
/* 8014B070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014B074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8014B078  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8014B07C  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 8014B080  40 82 00 24 */	bne lbl_8014B0A4
/* 8014B084  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 8014B088  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8014B08C  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8014B090  7D 89 03 A6 */	mtctr r12
/* 8014B094  4E 80 04 21 */	bctrl 
/* 8014B098  2C 03 00 00 */	cmpwi r3, 0
/* 8014B09C  40 82 00 08 */	bne lbl_8014B0A4
/* 8014B0A0  3B E0 00 01 */	li r31, 1
lbl_8014B0A4:
/* 8014B0A4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8014B0A8  48 00 00 08 */	b lbl_8014B0B0
lbl_8014B0AC:
/* 8014B0AC  38 60 00 00 */	li r3, 0
lbl_8014B0B0:
/* 8014B0B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014B0B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014B0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014B0BC  7C 08 03 A6 */	mtlr r0
/* 8014B0C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8014B0C4  4E 80 00 20 */	blr 
