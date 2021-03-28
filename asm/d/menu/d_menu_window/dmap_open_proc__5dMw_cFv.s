lbl_801FB3AC:
/* 801FB3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB3B0  7C 08 02 A6 */	mflr r0
/* 801FB3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB3B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB3BC  7C 7F 1B 78 */	mr r31, r3
/* 801FB3C0  88 03 01 53 */	lbz r0, 0x153(r3)
/* 801FB3C4  28 00 00 00 */	cmplwi r0, 0
/* 801FB3C8  40 82 00 10 */	bne lbl_801FB3D8
/* 801FB3CC  38 00 00 01 */	li r0, 1
/* 801FB3D0  98 1F 01 53 */	stb r0, 0x153(r31)
/* 801FB3D4  48 02 36 01 */	bl dMeter2Info_set2DVibrationM__Fv
lbl_801FB3D8:
/* 801FB3D8  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 801FB3DC  4B FC 2F 4D */	bl isOpen__12dMenu_Dmap_cFv
/* 801FB3E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB3E4  41 82 00 0C */	beq lbl_801FB3F0
/* 801FB3E8  38 00 00 0B */	li r0, 0xb
/* 801FB3EC  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB3F0:
/* 801FB3F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB3F8  7C 08 03 A6 */	mtlr r0
/* 801FB3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB400  4E 80 00 20 */	blr 
