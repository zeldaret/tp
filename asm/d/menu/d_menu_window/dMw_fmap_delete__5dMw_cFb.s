lbl_801FC264:
/* 801FC264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC268  7C 08 02 A6 */	mflr r0
/* 801FC26C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC270  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC274  7C 7F 1B 78 */	mr r31, r3
/* 801FC278  80 63 01 1C */	lwz r3, 0x11c(r3)
/* 801FC27C  28 03 00 00 */	cmplwi r3, 0
/* 801FC280  41 82 00 84 */	beq lbl_801FC304
/* 801FC284  4B FC B8 79 */	bl isSync__12dMenu_Fmap_cFv
/* 801FC288  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FC28C  40 82 00 0C */	bne lbl_801FC298
/* 801FC290  38 60 00 00 */	li r3, 0
/* 801FC294  48 00 00 A8 */	b lbl_801FC33C
lbl_801FC298:
/* 801FC298  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 801FC29C  4B FC EF 41 */	bl getProcess__12dMenu_Fmap_cFv
/* 801FC2A0  98 7F 01 4E */	stb r3, 0x14e(r31)
/* 801FC2A4  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 801FC2A8  4B FC EF 59 */	bl getRegionCursor__12dMenu_Fmap_cFv
/* 801FC2AC  98 7F 01 4F */	stb r3, 0x14f(r31)
/* 801FC2B0  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 801FC2B4  4B FC EF 7D */	bl getStageCursor__12dMenu_Fmap_cFv
/* 801FC2B8  98 7F 01 50 */	stb r3, 0x150(r31)
/* 801FC2BC  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 801FC2C0  4B FC EF A1 */	bl getStageTransX__12dMenu_Fmap_cFv
/* 801FC2C4  D0 3F 01 3C */	stfs f1, 0x13c(r31)
/* 801FC2C8  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 801FC2CC  4B FC EF C5 */	bl getStageTransZ__12dMenu_Fmap_cFv
/* 801FC2D0  D0 3F 01 40 */	stfs f1, 0x140(r31)
/* 801FC2D4  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 801FC2D8  4B FC B1 CD */	bl _delete__12dMenu_Fmap_cFv
/* 801FC2DC  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 801FC2E0  28 03 00 00 */	cmplwi r3, 0
/* 801FC2E4  41 82 00 18 */	beq lbl_801FC2FC
/* 801FC2E8  38 80 00 01 */	li r4, 1
/* 801FC2EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801FC2F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801FC2F4  7D 89 03 A6 */	mtctr r12
/* 801FC2F8  4E 80 04 21 */	bctrl 
lbl_801FC2FC:
/* 801FC2FC  38 00 00 00 */	li r0, 0
/* 801FC300  90 1F 01 1C */	stw r0, 0x11c(r31)
lbl_801FC304:
/* 801FC304  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 801FC308  28 03 00 00 */	cmplwi r3, 0
/* 801FC30C  41 82 00 24 */	beq lbl_801FC330
/* 801FC310  41 82 00 18 */	beq lbl_801FC328
/* 801FC314  38 80 00 01 */	li r4, 1
/* 801FC318  81 83 00 00 */	lwz r12, 0(r3)
/* 801FC31C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FC320  7D 89 03 A6 */	mtctr r12
/* 801FC324  4E 80 04 21 */	bctrl 
lbl_801FC328:
/* 801FC328  38 00 00 00 */	li r0, 0
/* 801FC32C  90 1F 01 0C */	stw r0, 0x10c(r31)
lbl_801FC330:
/* 801FC330  7F E3 FB 78 */	mr r3, r31
/* 801FC334  48 00 0D A1 */	bl checkMemSize__5dMw_cFv
/* 801FC338  38 60 00 01 */	li r3, 1
lbl_801FC33C:
/* 801FC33C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC344  7C 08 03 A6 */	mtlr r0
/* 801FC348  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC34C  4E 80 00 20 */	blr 
