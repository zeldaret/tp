lbl_800E6914:
/* 800E6914  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E6918  7C 08 02 A6 */	mflr r0
/* 800E691C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E6920  39 61 00 30 */	addi r11, r1, 0x30
/* 800E6924  48 27 B8 B9 */	bl _savegpr_29
/* 800E6928  7C 7D 1B 78 */	mr r29, r3
/* 800E692C  83 E3 28 30 */	lwz r31, 0x2830(r3)
/* 800E6930  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 800E6934  A8 9D 30 10 */	lha r4, 0x3010(r29)
/* 800E6938  38 A0 00 02 */	li r5, 2
/* 800E693C  38 C0 20 00 */	li r6, 0x2000
/* 800E6940  38 E0 08 00 */	li r7, 0x800
/* 800E6944  48 18 9B FD */	bl cLib_addCalcAngleS__FPsssss
/* 800E6948  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800E694C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 800E6950  28 1F 00 00 */	cmplwi r31, 0
/* 800E6954  41 82 00 78 */	beq lbl_800E69CC
/* 800E6958  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800E695C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800E6960  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800E6964  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800E6968  7C 64 02 14 */	add r3, r4, r0
/* 800E696C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800E6970  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800E6974  C0 9D 33 E4 */	lfs f4, 0x33e4(r29)
/* 800E6978  EC 04 00 32 */	fmuls f0, f4, f0
/* 800E697C  EC 61 00 2A */	fadds f3, f1, f0
/* 800E6980  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800E6984  7C 04 04 2E */	lfsx f0, r4, r0
/* 800E6988  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800E698C  EC 04 00 32 */	fmuls f0, f4, f0
/* 800E6990  EC 01 00 2A */	fadds f0, f1, f0
/* 800E6994  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E6998  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800E699C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 800E69A0  7F A3 EB 78 */	mr r3, r29
/* 800E69A4  38 9D 1E 5C */	addi r4, r29, 0x1e5c
/* 800E69A8  38 A1 00 08 */	addi r5, r1, 8
/* 800E69AC  7F E6 FB 78 */	mr r6, r31
/* 800E69B0  4B FF EE 81 */	bl putObjLineCheck__9daAlink_cFR11dBgS_LinChkP4cXyzP10fopAc_ac_c
/* 800E69B4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800E69B8  D0 1D 37 C8 */	stfs f0, 0x37c8(r29)
/* 800E69BC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800E69C0  D0 1D 37 CC */	stfs f0, 0x37cc(r29)
/* 800E69C4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800E69C8  D0 1D 37 D0 */	stfs f0, 0x37d0(r29)
lbl_800E69CC:
/* 800E69CC  3B DD 1F D0 */	addi r30, r29, 0x1fd0
/* 800E69D0  7F C3 F3 78 */	mr r3, r30
/* 800E69D4  48 07 7A F9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E69D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E69DC  41 82 00 28 */	beq lbl_800E6A04
/* 800E69E0  28 1F 00 00 */	cmplwi r31, 0
/* 800E69E4  41 82 00 0C */	beq lbl_800E69F0
/* 800E69E8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E69EC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_800E69F0:
/* 800E69F0  7F A3 EB 78 */	mr r3, r29
/* 800E69F4  4B FF E1 E1 */	bl freeGrabItem__9daAlink_cFv
/* 800E69F8  7F A3 EB 78 */	mr r3, r29
/* 800E69FC  48 00 04 F1 */	bl procGrabStandInit__9daAlink_cFv
/* 800E6A00  48 00 00 80 */	b lbl_800E6A80
lbl_800E6A04:
/* 800E6A04  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 800E6A08  2C 00 00 00 */	cmpwi r0, 0
/* 800E6A0C  41 82 00 4C */	beq lbl_800E6A58
/* 800E6A10  C0 9E 00 10 */	lfs f4, 0x10(r30)
/* 800E6A14  C0 1D 34 78 */	lfs f0, 0x3478(r29)
/* 800E6A18  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 800E6A1C  40 80 00 0C */	bge lbl_800E6A28
/* 800E6A20  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800E6A24  48 00 00 10 */	b lbl_800E6A34
lbl_800E6A28:
/* 800E6A28  C0 3D 34 80 */	lfs f1, 0x3480(r29)
/* 800E6A2C  EC 04 00 28 */	fsubs f0, f4, f0
/* 800E6A30  EC 41 00 32 */	fmuls f2, f1, f0
lbl_800E6A34:
/* 800E6A34  7F A3 EB 78 */	mr r3, r29
/* 800E6A38  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800E6A3C  C0 3D 34 7C */	lfs f1, 0x347c(r29)
/* 800E6A40  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800E6A44  EC 04 00 28 */	fsubs f0, f4, f0
/* 800E6A48  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E6A4C  EC 23 00 28 */	fsubs f1, f3, f0
/* 800E6A50  4B FF E5 59 */	bl setCarryArmAngle__9daAlink_cFff
/* 800E6A54  48 00 00 2C */	b lbl_800E6A80
lbl_800E6A58:
/* 800E6A58  7F A3 EB 78 */	mr r3, r29
/* 800E6A5C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E6A60  C0 7D 34 7C */	lfs f3, 0x347c(r29)
/* 800E6A64  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 800E6A68  3C 80 80 39 */	lis r4, m__18daAlinkHIO_grab_c0@ha
/* 800E6A6C  38 84 EC 48 */	addi r4, r4, m__18daAlinkHIO_grab_c0@l
/* 800E6A70  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 800E6A74  EC 02 00 28 */	fsubs f0, f2, f0
/* 800E6A78  EC 43 00 32 */	fmuls f2, f3, f0
/* 800E6A7C  4B FF E5 2D */	bl setCarryArmAngle__9daAlink_cFff
lbl_800E6A80:
/* 800E6A80  38 60 00 01 */	li r3, 1
/* 800E6A84  39 61 00 30 */	addi r11, r1, 0x30
/* 800E6A88  48 27 B7 A1 */	bl _restgpr_29
/* 800E6A8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E6A90  7C 08 03 A6 */	mtlr r0
/* 800E6A94  38 21 00 30 */	addi r1, r1, 0x30
/* 800E6A98  4E 80 00 20 */	blr 
