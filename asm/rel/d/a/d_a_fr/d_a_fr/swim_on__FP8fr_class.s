lbl_8051A904:
/* 8051A904  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051A908  7C 08 02 A6 */	mflr r0
/* 8051A90C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051A910  39 61 00 20 */	addi r11, r1, 0x20
/* 8051A914  4B E4 78 C9 */	bl _savegpr_29
/* 8051A918  7C 7E 1B 78 */	mr r30, r3
/* 8051A91C  3C 60 80 52 */	lis r3, lit_3649@ha /* 0x8051B9C8@ha */
/* 8051A920  3B E3 B9 C8 */	addi r31, r3, lit_3649@l /* 0x8051B9C8@l */
/* 8051A924  88 1E 05 EC */	lbz r0, 0x5ec(r30)
/* 8051A928  7C 00 07 75 */	extsb. r0, r0
/* 8051A92C  40 82 00 14 */	bne lbl_8051A940
/* 8051A930  38 00 00 00 */	li r0, 0
/* 8051A934  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 8051A938  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8051A93C  48 00 01 48 */	b lbl_8051AA84
lbl_8051A940:
/* 8051A940  C0 1E 05 F0 */	lfs f0, 0x5f0(r30)
/* 8051A944  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8051A948  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8051A94C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8051A950  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8051A954  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 8051A958  1C 04 05 DC */	mulli r0, r4, 0x5dc
/* 8051A95C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8051A960  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8051A964  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8051A968  7C 23 04 2E */	lfsx f1, r3, r0
/* 8051A96C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8051A970  EC 20 00 72 */	fmuls f1, f0, f1
/* 8051A974  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 8051A978  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8051A97C  C0 BE 04 EC */	lfs f5, 0x4ec(r30)
/* 8051A980  EC 00 01 72 */	fmuls f0, f0, f5
/* 8051A984  EC 03 00 32 */	fmuls f0, f3, f0
/* 8051A988  EC 21 00 28 */	fsubs f1, f1, f0
/* 8051A98C  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 8051A990  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8051A994  40 82 00 40 */	bne lbl_8051A9D4
/* 8051A998  1C 04 02 BC */	mulli r0, r4, 0x2bc
/* 8051A99C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8051A9A0  7C 83 04 2E */	lfsx f4, r3, r0
/* 8051A9A4  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 8051A9A8  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8051A9AC  EC 00 01 32 */	fmuls f0, f0, f4
/* 8051A9B0  EC 02 00 2A */	fadds f0, f2, f0
/* 8051A9B4  FC 00 00 1E */	fctiwz f0, f0
/* 8051A9B8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051A9BC  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8051A9C0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8051A9C4  EC 00 01 72 */	fmuls f0, f0, f5
/* 8051A9C8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8051A9CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8051A9D0  48 00 00 08 */	b lbl_8051A9D8
lbl_8051A9D4:
/* 8051A9D4  3B A0 00 00 */	li r29, 0
lbl_8051A9D8:
/* 8051A9D8  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 8051A9DC  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8051A9E0  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 8051A9E4  4B D5 50 59 */	bl cLib_addCalc2__FPffff
/* 8051A9E8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8051A9EC  7F A4 EB 78 */	mr r4, r29
/* 8051A9F0  38 A0 00 10 */	li r5, 0x10
/* 8051A9F4  38 C0 01 00 */	li r6, 0x100
/* 8051A9F8  4B D5 5C 11 */	bl cLib_addCalcAngleS2__FPssss
/* 8051A9FC  A8 1E 05 D0 */	lha r0, 0x5d0(r30)
/* 8051AA00  1C 00 02 58 */	mulli r0, r0, 0x258
/* 8051AA04  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8051AA08  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8051AA0C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8051AA10  7C 23 04 2E */	lfsx f1, r3, r0
/* 8051AA14  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8051AA18  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051AA1C  FC 00 00 1E */	fctiwz f0, f0
/* 8051AA20  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051AA24  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051AA28  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8051AA2C  A8 1E 09 94 */	lha r0, 0x994(r30)
/* 8051AA30  2C 00 FF FF */	cmpwi r0, -1
/* 8051AA34  41 82 00 1C */	beq lbl_8051AA50
/* 8051AA38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051AA3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051AA40  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8051AA44  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8051AA48  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8051AA4C  40 82 00 38 */	bne lbl_8051AA84
lbl_8051AA50:
/* 8051AA50  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 8051AA54  2C 00 00 28 */	cmpwi r0, 0x28
/* 8051AA58  41 82 00 2C */	beq lbl_8051AA84
/* 8051AA5C  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 8051AA60  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x8051BC20@ha */
/* 8051AA64  38 63 BC 20 */	addi r3, r3, l_HIO@l /* 0x8051BC20@l */
/* 8051AA68  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8051AA6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051AA70  40 80 00 14 */	bge lbl_8051AA84
/* 8051AA74  38 00 00 28 */	li r0, 0x28
/* 8051AA78  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 8051AA7C  38 00 00 00 */	li r0, 0
/* 8051AA80  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
lbl_8051AA84:
/* 8051AA84  39 61 00 20 */	addi r11, r1, 0x20
/* 8051AA88  4B E4 77 A1 */	bl _restgpr_29
/* 8051AA8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051AA90  7C 08 03 A6 */	mtlr r0
/* 8051AA94  38 21 00 20 */	addi r1, r1, 0x20
/* 8051AA98  4E 80 00 20 */	blr 
