lbl_8020D49C:
/* 8020D49C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020D4A0  7C 08 02 A6 */	mflr r0
/* 8020D4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020D4A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020D4AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8020D4B0  3B C0 00 00 */	li r30, 0
/* 8020D4B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020D4B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020D4BC  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8020D4C0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8020D4C4  7D 89 03 A6 */	mtctr r12
/* 8020D4C8  4E 80 04 21 */	bctrl 
/* 8020D4CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8020D4D0  41 82 00 20 */	beq lbl_8020D4F0
/* 8020D4D4  48 00 00 55 */	bl getMapDispSizeTypeNo__11dMeterMap_cFv
/* 8020D4D8  2C 03 00 00 */	cmpwi r3, 0
/* 8020D4DC  41 82 00 14 */	beq lbl_8020D4F0
/* 8020D4E0  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 8020D4E4  54 03 9F 7E */	rlwinm r3, r0, 0x13, 0x1d, 0x1f
/* 8020D4E8  30 03 FF FF */	addic r0, r3, -1
/* 8020D4EC  7F C0 19 10 */	subfe r30, r0, r3
lbl_8020D4F0:
/* 8020D4F0  3B E0 00 00 */	li r31, 0
/* 8020D4F4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8020D4F8  41 82 00 14 */	beq lbl_8020D50C
/* 8020D4FC  4B E3 22 5D */	bl isExistMapPathData__8dMpath_cFv
/* 8020D500  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020D504  41 82 00 08 */	beq lbl_8020D50C
/* 8020D508  3B E0 00 01 */	li r31, 1
lbl_8020D50C:
/* 8020D50C  7F E3 FB 78 */	mr r3, r31
/* 8020D510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020D514  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020D518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020D51C  7C 08 03 A6 */	mtlr r0
/* 8020D520  38 21 00 10 */	addi r1, r1, 0x10
/* 8020D524  4E 80 00 20 */	blr 
