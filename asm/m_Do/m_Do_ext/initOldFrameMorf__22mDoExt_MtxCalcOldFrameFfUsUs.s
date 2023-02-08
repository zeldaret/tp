lbl_8000F848:
/* 8000F848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000F84C  7C 08 02 A6 */	mflr r0
/* 8000F850  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000F854  39 61 00 20 */	addi r11, r1, 0x20
/* 8000F858  48 35 29 85 */	bl _savegpr_29
/* 8000F85C  7C 7D 1B 78 */	mr r29, r3
/* 8000F860  7C 9E 23 78 */	mr r30, r4
/* 8000F864  7C BF 2B 78 */	mr r31, r5
/* 8000F868  C0 02 81 1C */	lfs f0, lit_3876(r2)
/* 8000F86C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8000F870  40 81 00 28 */	ble lbl_8000F898
/* 8000F874  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8000F878  C0 42 81 18 */	lfs f2, lit_3847(r2)
/* 8000F87C  EC 02 08 24 */	fdivs f0, f2, f1
/* 8000F880  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8000F884  D0 5D 00 0C */	stfs f2, 0xc(r29)
/* 8000F888  D0 5D 00 10 */	stfs f2, 0x10(r29)
/* 8000F88C  D0 5D 00 14 */	stfs f2, 0x14(r29)
/* 8000F890  48 00 00 3D */	bl decOldFrameMorfCounter__22mDoExt_MtxCalcOldFrameFv
/* 8000F894  48 00 00 18 */	b lbl_8000F8AC
lbl_8000F898:
/* 8000F898  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8000F89C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8000F8A0  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8000F8A4  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8000F8A8  D0 1D 00 14 */	stfs f0, 0x14(r29)
lbl_8000F8AC:
/* 8000F8AC  B3 DD 00 18 */	sth r30, 0x18(r29)
/* 8000F8B0  B3 FD 00 1A */	sth r31, 0x1a(r29)
/* 8000F8B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8000F8B8  48 35 29 71 */	bl _restgpr_29
/* 8000F8BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000F8C0  7C 08 03 A6 */	mtlr r0
/* 8000F8C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8000F8C8  4E 80 00 20 */	blr 
