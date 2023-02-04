lbl_8003FBD0:
/* 8003FBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003FBD4  7C 08 02 A6 */	mflr r0
/* 8003FBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003FBDC  88 0D 80 B6 */	lbz r0, data_80450636(r13)
/* 8003FBE0  28 00 00 00 */	cmplwi r0, 0
/* 8003FBE4  41 82 00 7C */	beq lbl_8003FC60
/* 8003FBE8  38 C0 00 00 */	li r6, 0
/* 8003FBEC  38 60 00 00 */	li r3, 0
/* 8003FBF0  38 A0 00 00 */	li r5, 0
lbl_8003FBF4:
/* 8003FBF4  38 80 00 00 */	li r4, 0
/* 8003FBF8  38 00 00 02 */	li r0, 2
/* 8003FBFC  7C 09 03 A6 */	mtctr r0
lbl_8003FC00:
/* 8003FC00  80 0D 88 E4 */	lwz r0, mLayerList__8dMpath_c(r13)
/* 8003FC04  7C 00 22 14 */	add r0, r0, r4
/* 8003FC08  7C A3 01 2E */	stwx r5, r3, r0
/* 8003FC0C  38 84 01 00 */	addi r4, r4, 0x100
/* 8003FC10  42 00 FF F0 */	bdnz lbl_8003FC00
/* 8003FC14  38 C6 00 01 */	addi r6, r6, 1
/* 8003FC18  2C 06 00 40 */	cmpwi r6, 0x40
/* 8003FC1C  38 63 00 04 */	addi r3, r3, 4
/* 8003FC20  41 80 FF D4 */	blt lbl_8003FBF4
/* 8003FC24  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 8003FC28  C0 23 0A E8 */	lfs f1, __float_max@l(r3)  /* 0x80450AE8@l */
/* 8003FC2C  D0 2D 88 E8 */	stfs f1, mMinX__8dMpath_c(r13)
/* 8003FC30  FC 00 08 50 */	fneg f0, f1
/* 8003FC34  D0 0D 88 EC */	stfs f0, mMaxX__8dMpath_c(r13)
/* 8003FC38  D0 2D 88 F0 */	stfs f1, mMinZ__8dMpath_c(r13)
/* 8003FC3C  D0 0D 88 F4 */	stfs f0, mMaxZ__8dMpath_c(r13)
/* 8003FC40  38 00 00 7F */	li r0, 0x7f
/* 8003FC44  98 0D 80 B4 */	stb r0, mBottomFloorNo__8dMpath_c+0x0(r13)
/* 8003FC48  38 00 FF 80 */	li r0, -128
/* 8003FC4C  98 0D 80 B5 */	stb r0, mBottomFloorNo__8dMpath_c+0x1(r13)
/* 8003FC50  38 00 00 00 */	li r0, 0
/* 8003FC54  98 0D 80 B6 */	stb r0, data_80450636(r13)
/* 8003FC58  98 0D 89 08 */	stb r0, data_80450E88(r13)
/* 8003FC5C  4B FF FA B9 */	bl reset__10dMapInfo_cFv
lbl_8003FC60:
/* 8003FC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003FC64  7C 08 03 A6 */	mtlr r0
/* 8003FC68  38 21 00 10 */	addi r1, r1, 0x10
/* 8003FC6C  4E 80 00 20 */	blr 
