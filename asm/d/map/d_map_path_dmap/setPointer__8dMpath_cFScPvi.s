lbl_8003FA40:
/* 8003FA40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003FA44  7C 08 02 A6 */	mflr r0
/* 8003FA48  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003FA4C  39 61 00 30 */	addi r11, r1, 0x30
/* 8003FA50  48 32 27 89 */	bl _savegpr_28
/* 8003FA54  7C 7C 1B 78 */	mr r28, r3
/* 8003FA58  7C BD 2B 78 */	mr r29, r5
/* 8003FA5C  83 C4 00 04 */	lwz r30, 4(r4)
/* 8003FA60  28 1E 00 00 */	cmplwi r30, 0
/* 8003FA64  41 82 00 F4 */	beq lbl_8003FB58
/* 8003FA68  7F 9F 07 74 */	extsb r31, r28
/* 8003FA6C  48 00 01 65 */	bl reset__8dMpath_cFv
/* 8003FA70  38 00 00 01 */	li r0, 1
/* 8003FA74  98 0D 89 08 */	stb r0, data_80450E88(r13)
/* 8003FA78  7F C3 F3 78 */	mr r3, r30
/* 8003FA7C  38 8D 80 B4 */	la r4, mBottomFloorNo__8dMpath_c+0x0(r13) /* 80450634-_SDA_BASE_ */
/* 8003FA80  38 AD 80 B5 */	la r5, mBottomFloorNo__8dMpath_c+0x1(r13) /* 80450635-_SDA_BASE_ */
/* 8003FA84  4B FF FD 8D */	bl setPointer__8dMpath_cFPQ211dDrawPath_c10room_classPScPSc
/* 8003FA88  C0 02 84 28 */	lfs f0, lit_3796(r2)
/* 8003FA8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8003FA90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8003FA94  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8003FA98  D0 01 00 08 */	stfs f0, 8(r1)
/* 8003FA9C  7F E3 FB 78 */	mr r3, r31
/* 8003FAA0  38 81 00 14 */	addi r4, r1, 0x14
/* 8003FAA4  38 A1 00 0C */	addi r5, r1, 0xc
/* 8003FAA8  38 C1 00 10 */	addi r6, r1, 0x10
/* 8003FAAC  38 E1 00 08 */	addi r7, r1, 8
/* 8003FAB0  4B FF F7 45 */	bl getRoomMinMaxXZ__10dMapInfo_nFiPfPfPfPf
/* 8003FAB4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8003FAB8  C0 0D 88 E8 */	lfs f0, mMinX__8dMpath_c(r13)
/* 8003FABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8003FAC0  40 80 00 08 */	bge lbl_8003FAC8
/* 8003FAC4  D0 2D 88 E8 */	stfs f1, mMinX__8dMpath_c(r13)
lbl_8003FAC8:
/* 8003FAC8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8003FACC  C0 0D 88 EC */	lfs f0, mMaxX__8dMpath_c(r13)
/* 8003FAD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8003FAD4  40 81 00 08 */	ble lbl_8003FADC
/* 8003FAD8  D0 2D 88 EC */	stfs f1, mMaxX__8dMpath_c(r13)
lbl_8003FADC:
/* 8003FADC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8003FAE0  C0 0D 88 F0 */	lfs f0, mMinZ__8dMpath_c(r13)
/* 8003FAE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8003FAE8  40 80 00 08 */	bge lbl_8003FAF0
/* 8003FAEC  D0 2D 88 F0 */	stfs f1, mMinZ__8dMpath_c(r13)
lbl_8003FAF0:
/* 8003FAF0  C0 21 00 08 */	lfs f1, 8(r1)
/* 8003FAF4  C0 0D 88 F4 */	lfs f0, mMaxZ__8dMpath_c(r13)
/* 8003FAF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8003FAFC  40 81 00 08 */	ble lbl_8003FB04
/* 8003FB00  D0 2D 88 F4 */	stfs f1, mMaxZ__8dMpath_c(r13)
lbl_8003FB04:
/* 8003FB04  C0 22 84 2C */	lfs f1, lit_3887(r2)
/* 8003FB08  C0 6D 88 EC */	lfs f3, mMaxX__8dMpath_c(r13)
/* 8003FB0C  C0 4D 88 E8 */	lfs f2, mMinX__8dMpath_c(r13)
/* 8003FB10  EC 03 10 2A */	fadds f0, f3, f2
/* 8003FB14  EC 01 00 32 */	fmuls f0, f1, f0
/* 8003FB18  D0 0D 88 F8 */	stfs f0, mAllCenterX__8dMpath_c(r13)
/* 8003FB1C  C0 AD 88 F4 */	lfs f5, mMaxZ__8dMpath_c(r13)
/* 8003FB20  C0 8D 88 F0 */	lfs f4, mMinZ__8dMpath_c(r13)
/* 8003FB24  EC 05 20 2A */	fadds f0, f5, f4
/* 8003FB28  EC 01 00 32 */	fmuls f0, f1, f0
/* 8003FB2C  D0 0D 88 FC */	stfs f0, mAllCenterZ__8dMpath_c(r13)
/* 8003FB30  EC 03 10 28 */	fsubs f0, f3, f2
/* 8003FB34  D0 0D 89 00 */	stfs f0, mAllSizeX__8dMpath_c(r13)
/* 8003FB38  EC 05 20 28 */	fsubs f0, f5, f4
/* 8003FB3C  D0 0D 89 04 */	stfs f0, mAllSizeZ__8dMpath_c(r13)
/* 8003FB40  80 8D 88 E4 */	lwz r4, mLayerList__8dMpath_c(r13)
/* 8003FB44  57 A3 40 2E */	slwi r3, r29, 8
/* 8003FB48  7F 80 07 74 */	extsb r0, r28
/* 8003FB4C  54 00 10 3A */	slwi r0, r0, 2
/* 8003FB50  7C 03 02 14 */	add r0, r3, r0
/* 8003FB54  7F C4 01 2E */	stwx r30, r4, r0
lbl_8003FB58:
/* 8003FB58  39 61 00 30 */	addi r11, r1, 0x30
/* 8003FB5C  48 32 26 C9 */	bl _restgpr_28
/* 8003FB60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003FB64  7C 08 03 A6 */	mtlr r0
/* 8003FB68  38 21 00 30 */	addi r1, r1, 0x30
/* 8003FB6C  4E 80 00 20 */	blr 
