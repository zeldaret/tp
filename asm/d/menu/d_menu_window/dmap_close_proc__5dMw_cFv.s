lbl_801FB5DC:
/* 801FB5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB5E0  7C 08 02 A6 */	mflr r0
/* 801FB5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB5E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB5EC  7C 7F 1B 78 */	mr r31, r3
/* 801FB5F0  80 63 01 18 */	lwz r3, 0x118(r3)
/* 801FB5F4  4B FC 30 7D */	bl isClose__12dMenu_Dmap_cFv
/* 801FB5F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB5FC  41 82 00 0C */	beq lbl_801FB608
/* 801FB600  38 00 00 00 */	li r0, 0
/* 801FB604  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB608:
/* 801FB608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB60C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB610  7C 08 03 A6 */	mtlr r0
/* 801FB614  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB618  4E 80 00 20 */	blr 
