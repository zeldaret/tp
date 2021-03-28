lbl_801354C8:
/* 801354C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801354CC  7C 08 02 A6 */	mflr r0
/* 801354D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801354D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801354D8  7C 7F 1B 78 */	mr r31, r3
/* 801354DC  4B FF FF 7D */	bl setWolfHangGroundY__9daAlink_cFv
/* 801354E0  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 801354E4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 801354E8  41 82 00 2C */	beq lbl_80135514
/* 801354EC  C0 3F 33 B4 */	lfs f1, 0x33b4(r31)
/* 801354F0  C0 1F 33 D8 */	lfs f0, 0x33d8(r31)
/* 801354F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801354F8  40 81 00 1C */	ble lbl_80135514
/* 801354FC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha
/* 80135500  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l
/* 80135504  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 80135508  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 8013550C  EC 21 00 2A */	fadds f1, f1, f0
/* 80135510  48 00 00 10 */	b lbl_80135520
lbl_80135514:
/* 80135514  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlWallHang_c0@ha
/* 80135518  38 63 F1 A0 */	addi r3, r3, m__24daAlinkHIO_wlWallHang_c0@l
/* 8013551C  C0 23 00 88 */	lfs f1, 0x88(r3)
lbl_80135520:
/* 80135520  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80135524  C0 1F 33 D8 */	lfs f0, 0x33d8(r31)
/* 80135528  EC 20 08 2A */	fadds f1, f0, f1
/* 8013552C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80135530  EC 01 00 28 */	fsubs f0, f1, f0
/* 80135534  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80135538  40 80 00 10 */	bge lbl_80135548
/* 8013553C  7F E3 FB 78 */	mr r3, r31
/* 80135540  4B FF 9B F9 */	bl procWolfLandInit__9daAlink_cFv
/* 80135544  48 00 00 94 */	b lbl_801355D8
lbl_80135548:
/* 80135548  7F E3 FB 78 */	mr r3, r31
/* 8013554C  38 80 00 33 */	li r4, 0x33
/* 80135550  4B F7 DD 01 */	bl setDoStatus__9daAlink_cFUc
/* 80135554  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 80135558  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8013555C  41 82 00 78 */	beq lbl_801355D4
/* 80135560  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80135564  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80135568  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8013556C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80135570  7C 03 04 2E */	lfsx f0, r3, r0
/* 80135574  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80135578  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 8013557C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80135580  EC 01 00 28 */	fsubs f0, f1, f0
/* 80135584  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80135588  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013558C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80135590  7C 63 02 14 */	add r3, r3, r0
/* 80135594  C0 03 00 04 */	lfs f0, 4(r3)
/* 80135598  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8013559C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801355A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801355A4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 801355A8  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 801355AC  60 00 02 00 */	ori r0, r0, 0x200
/* 801355B0  90 1F 05 78 */	stw r0, 0x578(r31)
/* 801355B4  7F E3 FB 78 */	mr r3, r31
/* 801355B8  38 80 00 02 */	li r4, 2
/* 801355BC  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlWallHang_c0@ha
/* 801355C0  38 A5 F1 A0 */	addi r5, r5, m__24daAlinkHIO_wlWallHang_c0@l
/* 801355C4  C0 25 00 98 */	lfs f1, 0x98(r5)
/* 801355C8  4B FF 98 09 */	bl procWolfFallInit__9daAlink_cFif
/* 801355CC  38 60 00 01 */	li r3, 1
/* 801355D0  48 00 00 08 */	b lbl_801355D8
lbl_801355D4:
/* 801355D4  38 60 00 00 */	li r3, 0
lbl_801355D8:
/* 801355D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801355DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801355E0  7C 08 03 A6 */	mtlr r0
/* 801355E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801355E8  4E 80 00 20 */	blr 
