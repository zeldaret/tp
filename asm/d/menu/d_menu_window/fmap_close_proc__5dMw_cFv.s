lbl_801FB36C:
/* 801FB36C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB370  7C 08 02 A6 */	mflr r0
/* 801FB374  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB37C  7C 7F 1B 78 */	mr r31, r3
/* 801FB380  80 63 01 1C */	lwz r3, 0x11c(r3)
/* 801FB384  4B FC FC B5 */	bl isClose__12dMenu_Fmap_cFv
/* 801FB388  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB38C  41 82 00 0C */	beq lbl_801FB398
/* 801FB390  38 00 00 00 */	li r0, 0
/* 801FB394  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB398:
/* 801FB398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB3A0  7C 08 03 A6 */	mtlr r0
/* 801FB3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB3A8  4E 80 00 20 */	blr 
