lbl_800FE438:
/* 800FE438  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800FE43C  7C 08 02 A6 */	mflr r0
/* 800FE440  90 01 00 34 */	stw r0, 0x34(r1)
/* 800FE444  39 61 00 30 */	addi r11, r1, 0x30
/* 800FE448  48 26 3D 91 */	bl _savegpr_28
/* 800FE44C  7C 7C 1B 78 */	mr r28, r3
/* 800FE450  7C 9D 23 78 */	mr r29, r4
/* 800FE454  AB C3 30 8C */	lha r30, 0x308c(r3)
/* 800FE458  C0 23 33 AC */	lfs f1, 0x33ac(r3)
/* 800FE45C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800FE460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FE464  40 81 01 14 */	ble lbl_800FE578
/* 800FE468  4B FF FF 5D */	bl getClimbDirectionFromAngle__9daAlink_cFv
/* 800FE46C  98 7C 2F 98 */	stb r3, 0x2f98(r28)
/* 800FE470  88 9C 2F 98 */	lbz r4, 0x2f98(r28)
/* 800FE474  28 04 00 00 */	cmplwi r4, 0
/* 800FE478  41 82 00 0C */	beq lbl_800FE484
/* 800FE47C  28 04 00 01 */	cmplwi r4, 1
/* 800FE480  40 82 00 DC */	bne lbl_800FE55C
lbl_800FE484:
/* 800FE484  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FE488  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FE48C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800FE490  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FE494  7C 64 02 14 */	add r3, r4, r0
/* 800FE498  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FE49C  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 800FE4A0  C0 42 94 64 */	lfs f2, lit_14954(r2)
/* 800FE4A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FE4A8  EC 81 00 28 */	fsubs f4, f1, f0
/* 800FE4AC  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 800FE4B0  C0 1C 05 98 */	lfs f0, 0x598(r28)
/* 800FE4B4  EC 61 00 2A */	fadds f3, f1, f0
/* 800FE4B8  7C 04 04 2E */	lfsx f0, r4, r0
/* 800FE4BC  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 800FE4C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FE4C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FE4C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FE4CC  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 800FE4D0  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 800FE4D4  D0 1C 1D 98 */	stfs f0, 0x1d98(r28)
/* 800FE4D8  D0 7C 1D 9C */	stfs f3, 0x1d9c(r28)
/* 800FE4DC  D0 9C 1D A0 */	stfs f4, 0x1da0(r28)
/* 800FE4E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FE4E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FE4E8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800FE4EC  7F E3 FB 78 */	mr r3, r31
/* 800FE4F0  38 9C 1D 5C */	addi r4, r28, 0x1d5c
/* 800FE4F4  4B F7 6F A9 */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 800FE4F8  88 1C 2F 98 */	lbz r0, 0x2f98(r28)
/* 800FE4FC  28 00 00 00 */	cmplwi r0, 0
/* 800FE500  40 82 00 38 */	bne lbl_800FE538
/* 800FE504  C0 42 95 94 */	lfs f2, lit_25113(r2)
/* 800FE508  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800FE50C  EC 02 00 2A */	fadds f0, f2, f0
/* 800FE510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FE514  40 80 00 24 */	bge lbl_800FE538
/* 800FE518  7F E3 FB 78 */	mr r3, r31
/* 800FE51C  38 9C 1D 5C */	addi r4, r28, 0x1d5c
/* 800FE520  4B F7 68 3D */	bl GetMonkeyBarsCode__4dBgSFRC13cBgS_PolyInfo
/* 800FE524  2C 03 00 00 */	cmpwi r3, 0
/* 800FE528  41 82 00 10 */	beq lbl_800FE538
/* 800FE52C  7F 83 E3 78 */	mr r3, r28
/* 800FE530  48 00 1E B5 */	bl procClimbToRoofInit__9daAlink_cFv
/* 800FE534  48 00 00 50 */	b lbl_800FE584
lbl_800FE538:
/* 800FE538  7F 83 E3 78 */	mr r3, r28
/* 800FE53C  88 9C 2F 98 */	lbz r4, 0x2f98(r28)
/* 800FE540  48 00 00 61 */	bl checkClimbMoveUpDownProc__9daAlink_cFi
/* 800FE544  2C 03 00 00 */	cmpwi r3, 0
/* 800FE548  41 82 00 3C */	beq lbl_800FE584
/* 800FE54C  7F 83 E3 78 */	mr r3, r28
/* 800FE550  7F A4 EB 78 */	mr r4, r29
/* 800FE554  48 00 15 5D */	bl procClimbMoveUpDownInit__9daAlink_cFi
/* 800FE558  48 00 00 2C */	b lbl_800FE584
lbl_800FE55C:
/* 800FE55C  7F 83 E3 78 */	mr r3, r28
/* 800FE560  48 00 01 89 */	bl checkClimbMoveSideProc__9daAlink_cFi
/* 800FE564  2C 03 00 00 */	cmpwi r3, 0
/* 800FE568  41 82 00 1C */	beq lbl_800FE584
/* 800FE56C  7F 83 E3 78 */	mr r3, r28
/* 800FE570  48 00 18 41 */	bl procClimbMoveSideInit__9daAlink_cFv
/* 800FE574  48 00 00 10 */	b lbl_800FE584
lbl_800FE578:
/* 800FE578  38 80 00 01 */	li r4, 1
/* 800FE57C  38 A0 00 00 */	li r5, 0
/* 800FE580  48 00 1B 79 */	bl procClimbWaitInit__9daAlink_cFii
lbl_800FE584:
/* 800FE584  B3 DC 30 8C */	sth r30, 0x308c(r28)
/* 800FE588  39 61 00 30 */	addi r11, r1, 0x30
/* 800FE58C  48 26 3C 99 */	bl _restgpr_28
/* 800FE590  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800FE594  7C 08 03 A6 */	mtlr r0
/* 800FE598  38 21 00 30 */	addi r1, r1, 0x30
/* 800FE59C  4E 80 00 20 */	blr 
