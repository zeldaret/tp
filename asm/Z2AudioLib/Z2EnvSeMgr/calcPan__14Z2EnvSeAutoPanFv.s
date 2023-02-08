lbl_802C5F98:
/* 802C5F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5F9C  7C 08 02 A6 */	mflr r0
/* 802C5FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C5FA8  7C 7F 1B 78 */	mr r31, r3
/* 802C5FAC  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802C5FB0  28 00 00 00 */	cmplwi r0, 0
/* 802C5FB4  41 82 00 3C */	beq lbl_802C5FF0
/* 802C5FB8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802C5FBC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 802C5FC0  EC 01 00 2A */	fadds f0, f1, f0
/* 802C5FC4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802C5FC8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802C5FCC  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C5FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C5FD4  40 81 00 50 */	ble lbl_802C6024
/* 802C5FD8  C0 02 C3 70 */	lfs f0, lit_3704(r2)
/* 802C5FDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C5FE0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802C5FE4  38 00 00 00 */	li r0, 0
/* 802C5FE8  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802C5FEC  48 00 00 38 */	b lbl_802C6024
lbl_802C5FF0:
/* 802C5FF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802C5FF4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 802C5FF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 802C5FFC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802C6000  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802C6004  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C6008  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C600C  40 80 00 18 */	bge lbl_802C6024
/* 802C6010  C0 02 C3 74 */	lfs f0, lit_3705(r2)
/* 802C6014  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C6018  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802C601C  38 00 00 01 */	li r0, 1
/* 802C6020  98 1F 00 18 */	stb r0, 0x18(r31)
lbl_802C6024:
/* 802C6024  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 802C6028  28 00 00 00 */	cmplwi r0, 0
/* 802C602C  41 82 00 3C */	beq lbl_802C6068
/* 802C6030  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802C6034  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 802C6038  EC 01 00 2A */	fadds f0, f1, f0
/* 802C603C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802C6040  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802C6044  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C6048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C604C  40 81 00 50 */	ble lbl_802C609C
/* 802C6050  C0 02 C3 70 */	lfs f0, lit_3704(r2)
/* 802C6054  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C6058  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802C605C  38 00 00 00 */	li r0, 0
/* 802C6060  98 1F 00 19 */	stb r0, 0x19(r31)
/* 802C6064  48 00 00 38 */	b lbl_802C609C
lbl_802C6068:
/* 802C6068  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802C606C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 802C6070  EC 01 00 28 */	fsubs f0, f1, f0
/* 802C6074  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802C6078  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802C607C  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C6080  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C6084  40 80 00 18 */	bge lbl_802C609C
/* 802C6088  C0 02 C3 74 */	lfs f0, lit_3705(r2)
/* 802C608C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C6090  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802C6094  38 00 00 01 */	li r0, 1
/* 802C6098  98 1F 00 19 */	stb r0, 0x19(r31)
lbl_802C609C:
/* 802C609C  80 7F 00 04 */	lwz r3, 4(r31)
/* 802C60A0  28 03 00 00 */	cmplwi r3, 0
/* 802C60A4  41 82 00 28 */	beq lbl_802C60CC
/* 802C60A8  38 63 00 48 */	addi r3, r3, 0x48
/* 802C60AC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802C60B0  38 80 00 00 */	li r4, 0
/* 802C60B4  4B FD CE 09 */	bl movePan__18JAISoundParamsMoveFfUl
/* 802C60B8  80 7F 00 04 */	lwz r3, 4(r31)
/* 802C60BC  38 63 00 48 */	addi r3, r3, 0x48
/* 802C60C0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802C60C4  38 80 00 00 */	li r4, 0
/* 802C60C8  4B FD CE 4D */	bl moveDolby__18JAISoundParamsMoveFfUl
lbl_802C60CC:
/* 802C60CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C60D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C60D4  7C 08 03 A6 */	mtlr r0
/* 802C60D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802C60DC  4E 80 00 20 */	blr 
