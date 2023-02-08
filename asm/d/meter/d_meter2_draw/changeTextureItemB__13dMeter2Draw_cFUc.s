lbl_8021A468:
/* 8021A468  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8021A46C  7C 08 02 A6 */	mflr r0
/* 8021A470  90 01 00 54 */	stw r0, 0x54(r1)
/* 8021A474  39 61 00 50 */	addi r11, r1, 0x50
/* 8021A478  48 14 7D 65 */	bl _savegpr_29
/* 8021A47C  7C 7D 1B 78 */	mr r29, r3
/* 8021A480  7C 9E 23 78 */	mr r30, r4
/* 8021A484  3B E0 00 00 */	li r31, 0
/* 8021A488  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8021A48C  28 03 00 58 */	cmplwi r3, 0x58
/* 8021A490  40 82 00 0C */	bne lbl_8021A49C
/* 8021A494  3B E0 00 02 */	li r31, 2
/* 8021A498  48 00 00 28 */	b lbl_8021A4C0
lbl_8021A49C:
/* 8021A49C  38 1E FF D8 */	addi r0, r30, -40
/* 8021A4A0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8021A4A4  28 00 00 01 */	cmplwi r0, 1
/* 8021A4A8  40 81 00 14 */	ble lbl_8021A4BC
/* 8021A4AC  28 03 00 3F */	cmplwi r3, 0x3f
/* 8021A4B0  41 82 00 0C */	beq lbl_8021A4BC
/* 8021A4B4  28 03 00 49 */	cmplwi r3, 0x49
/* 8021A4B8  40 82 00 08 */	bne lbl_8021A4C0
lbl_8021A4BC:
/* 8021A4BC  3B E0 00 01 */	li r31, 1
lbl_8021A4C0:
/* 8021A4C0  88 1D 07 6B */	lbz r0, 0x76b(r29)
/* 8021A4C4  28 00 00 00 */	cmplwi r0, 0
/* 8021A4C8  40 82 00 10 */	bne lbl_8021A4D8
/* 8021A4CC  38 00 00 01 */	li r0, 1
/* 8021A4D0  98 1D 07 6B */	stb r0, 0x76b(r29)
/* 8021A4D4  48 00 00 0C */	b lbl_8021A4E0
lbl_8021A4D8:
/* 8021A4D8  38 00 00 00 */	li r0, 0
/* 8021A4DC  98 1D 07 6B */	stb r0, 0x76b(r29)
lbl_8021A4E0:
/* 8021A4E0  7F A3 EB 78 */	mr r3, r29
/* 8021A4E4  7F C4 F3 78 */	mr r4, r30
/* 8021A4E8  48 00 13 29 */	bl setItemParamB__13dMeter2Draw_cFUc
/* 8021A4EC  80 7D 03 28 */	lwz r3, 0x328(r29)
/* 8021A4F0  80 C3 00 04 */	lwz r6, 4(r3)
/* 8021A4F4  88 1D 07 6B */	lbz r0, 0x76b(r29)
/* 8021A4F8  54 00 18 38 */	slwi r0, r0, 3
/* 8021A4FC  7C FD 02 14 */	add r7, r29, r0
/* 8021A500  80 A7 04 E4 */	lwz r5, 0x4e4(r7)
/* 8021A504  38 00 00 00 */	li r0, 0
/* 8021A508  90 01 00 08 */	stw r0, 8(r1)
/* 8021A50C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8021A510  38 00 FF FF */	li r0, -1
/* 8021A514  90 01 00 10 */	stw r0, 0x10(r1)
/* 8021A518  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8021A51C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8021A520  7F C4 F3 78 */	mr r4, r30
/* 8021A524  80 E7 04 E8 */	lwz r7, 0x4e8(r7)
/* 8021A528  81 1D 05 14 */	lwz r8, 0x514(r29)
/* 8021A52C  39 20 00 00 */	li r9, 0
/* 8021A530  39 40 00 00 */	li r10, 0
/* 8021A534  48 00 29 D5 */	bl readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei
/* 8021A538  2C 03 00 01 */	cmpwi r3, 1
/* 8021A53C  41 81 00 14 */	bgt lbl_8021A550
/* 8021A540  38 00 00 00 */	li r0, 0
/* 8021A544  80 7D 05 14 */	lwz r3, 0x514(r29)
/* 8021A548  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8021A54C  48 00 00 10 */	b lbl_8021A55C
lbl_8021A550:
/* 8021A550  38 00 00 01 */	li r0, 1
/* 8021A554  80 7D 05 14 */	lwz r3, 0x514(r29)
/* 8021A558  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_8021A55C:
/* 8021A55C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021A560  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021A564  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8021A568  28 00 00 01 */	cmplwi r0, 1
/* 8021A56C  40 82 00 2C */	bne lbl_8021A598
/* 8021A570  88 03 05 69 */	lbz r0, 0x569(r3)
/* 8021A574  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 8021A578  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8021A57C  3C 00 43 30 */	lis r0, 0x4330
/* 8021A580  90 01 00 18 */	stw r0, 0x18(r1)
/* 8021A584  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8021A588  EC 20 08 28 */	fsubs f1, f0, f1
/* 8021A58C  C0 02 AE D8 */	lfs f0, lit_8548(r2)
/* 8021A590  EC 81 00 24 */	fdivs f4, f1, f0
/* 8021A594  48 00 00 3C */	b lbl_8021A5D0
lbl_8021A598:
/* 8021A598  3C 60 80 3B */	lis r3, item_resource__10dItem_data@ha /* 0x803AC5A0@ha */
/* 8021A59C  38 63 C5 A0 */	addi r3, r3, item_resource__10dItem_data@l /* 0x803AC5A0@l */
/* 8021A5A0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8021A5A4  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8021A5A8  7C 63 02 14 */	add r3, r3, r0
/* 8021A5AC  88 03 00 12 */	lbz r0, 0x12(r3)
/* 8021A5B0  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 8021A5B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021A5B8  3C 00 43 30 */	lis r0, 0x4330
/* 8021A5BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8021A5C0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8021A5C4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8021A5C8  C0 02 AE D8 */	lfs f0, lit_8548(r2)
/* 8021A5CC  EC 81 00 24 */	fdivs f4, f1, f0
lbl_8021A5D0:
/* 8021A5D0  80 7D 03 28 */	lwz r3, 0x328(r29)
/* 8021A5D4  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 8021A5D8  88 1D 07 6B */	lbz r0, 0x76b(r29)
/* 8021A5DC  54 00 18 38 */	slwi r0, r0, 3
/* 8021A5E0  7C 7D 02 14 */	add r3, r29, r0
/* 8021A5E4  80 63 04 E4 */	lwz r3, 0x4e4(r3)
/* 8021A5E8  A0 03 00 02 */	lhz r0, 2(r3)
/* 8021A5EC  C8 42 AE C0 */	lfd f2, lit_6293(r2)
/* 8021A5F0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8021A5F4  3C 80 43 30 */	lis r4, 0x4330
/* 8021A5F8  90 81 00 28 */	stw r4, 0x28(r1)
/* 8021A5FC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8021A600  EC 00 10 28 */	fsubs f0, f0, f2
/* 8021A604  EC 00 00 72 */	fmuls f0, f0, f1
/* 8021A608  C0 22 AE DC */	lfs f1, lit_8549(r2)
/* 8021A60C  EC 00 08 24 */	fdivs f0, f0, f1
/* 8021A610  EC 04 00 32 */	fmuls f0, f4, f0
/* 8021A614  D0 1D 06 E4 */	stfs f0, 0x6e4(r29)
/* 8021A618  80 7D 03 28 */	lwz r3, 0x328(r29)
/* 8021A61C  C0 63 00 38 */	lfs f3, 0x38(r3)
/* 8021A620  88 1D 07 6B */	lbz r0, 0x76b(r29)
/* 8021A624  54 00 18 38 */	slwi r0, r0, 3
/* 8021A628  7C 7D 02 14 */	add r3, r29, r0
/* 8021A62C  80 63 04 E4 */	lwz r3, 0x4e4(r3)
/* 8021A630  A0 03 00 04 */	lhz r0, 4(r3)
/* 8021A634  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021A638  90 81 00 30 */	stw r4, 0x30(r1)
/* 8021A63C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8021A640  EC 00 10 28 */	fsubs f0, f0, f2
/* 8021A644  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8021A648  EC 00 08 24 */	fdivs f0, f0, f1
/* 8021A64C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8021A650  D0 1D 06 E8 */	stfs f0, 0x6e8(r29)
/* 8021A654  80 7D 03 28 */	lwz r3, 0x328(r29)
/* 8021A658  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8021A65C  C0 22 AE 94 */	lfs f1, lit_4922(r2)
/* 8021A660  C0 1D 06 E4 */	lfs f0, 0x6e4(r29)
/* 8021A664  EC 02 00 28 */	fsubs f0, f2, f0
/* 8021A668  EC 01 00 32 */	fmuls f0, f1, f0
/* 8021A66C  D0 1D 06 DC */	stfs f0, 0x6dc(r29)
/* 8021A670  80 7D 03 28 */	lwz r3, 0x328(r29)
/* 8021A674  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8021A678  C0 1D 06 E8 */	lfs f0, 0x6e8(r29)
/* 8021A67C  EC 02 00 28 */	fsubs f0, f2, f0
/* 8021A680  EC 01 00 32 */	fmuls f0, f1, f0
/* 8021A684  D0 1D 06 E0 */	stfs f0, 0x6e0(r29)
/* 8021A688  80 7D 03 28 */	lwz r3, 0x328(r29)
/* 8021A68C  80 63 00 04 */	lwz r3, 4(r3)
/* 8021A690  C0 3D 06 E4 */	lfs f1, 0x6e4(r29)
/* 8021A694  C0 5D 06 E8 */	lfs f2, 0x6e8(r29)
/* 8021A698  81 83 00 00 */	lwz r12, 0(r3)
/* 8021A69C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021A6A0  7D 89 03 A6 */	mtctr r12
/* 8021A6A4  4E 80 04 21 */	bctrl 
/* 8021A6A8  57 E5 10 3A */	slwi r5, r31, 2
/* 8021A6AC  80 7D 03 28 */	lwz r3, 0x328(r29)
/* 8021A6B0  C0 5D 06 DC */	lfs f2, 0x6dc(r29)
/* 8021A6B4  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021A6B8  38 04 EB C8 */	addi r0, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021A6BC  7C 80 2A 14 */	add r4, r0, r5
/* 8021A6C0  C0 24 01 84 */	lfs f1, 0x184(r4)
/* 8021A6C4  C0 1D 06 EC */	lfs f0, 0x6ec(r29)
/* 8021A6C8  EC 01 00 2A */	fadds f0, f1, f0
/* 8021A6CC  EC 22 00 2A */	fadds f1, f2, f0
/* 8021A6D0  C0 7D 06 E0 */	lfs f3, 0x6e0(r29)
/* 8021A6D4  C0 44 01 90 */	lfs f2, 0x190(r4)
/* 8021A6D8  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 8021A6DC  EC 02 00 2A */	fadds f0, f2, f0
/* 8021A6E0  EC 43 00 2A */	fadds f2, f3, f0
/* 8021A6E4  48 03 9E CD */	bl paneTrans__8CPaneMgrFff
/* 8021A6E8  80 7D 05 14 */	lwz r3, 0x514(r29)
/* 8021A6EC  C0 3D 06 E4 */	lfs f1, 0x6e4(r29)
/* 8021A6F0  C0 5D 06 E8 */	lfs f2, 0x6e8(r29)
/* 8021A6F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8021A6F8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021A6FC  7D 89 03 A6 */	mtctr r12
/* 8021A700  4E 80 04 21 */	bctrl 
/* 8021A704  39 61 00 50 */	addi r11, r1, 0x50
/* 8021A708  48 14 7B 21 */	bl _restgpr_29
/* 8021A70C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8021A710  7C 08 03 A6 */	mtlr r0
/* 8021A714  38 21 00 50 */	addi r1, r1, 0x50
/* 8021A718  4E 80 00 20 */	blr 
