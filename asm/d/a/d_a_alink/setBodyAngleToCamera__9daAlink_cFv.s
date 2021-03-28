lbl_800CE8A0:
/* 800CE8A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800CE8A4  7C 08 02 A6 */	mflr r0
/* 800CE8A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800CE8AC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800CE8B0  7C 7F 1B 78 */	mr r31, r3
/* 800CE8B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CE8B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CE8BC  80 1F 31 7C */	lwz r0, 0x317c(r31)
/* 800CE8C0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800CE8C4  7C 63 02 14 */	add r3, r3, r0
/* 800CE8C8  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 800CE8CC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800CE8D0  41 82 02 0C */	beq lbl_800CEADC
/* 800CE8D4  A8 1F 31 0A */	lha r0, 0x310a(r31)
/* 800CE8D8  B0 1F 31 0E */	sth r0, 0x310e(r31)
/* 800CE8DC  A8 1F 31 0C */	lha r0, 0x310c(r31)
/* 800CE8E0  B0 1F 31 10 */	sth r0, 0x3110(r31)
/* 800CE8E4  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 800CE8E8  60 00 00 20 */	ori r0, r0, 0x20
/* 800CE8EC  90 1F 05 90 */	stw r0, 0x590(r31)
/* 800CE8F0  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800CE8F4  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800CE8F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CE8FC  40 81 01 08 */	ble lbl_800CEA04
/* 800CE900  C0 02 92 A8 */	lfs f0, lit_6022(r2)
/* 800CE904  EC 00 00 72 */	fmuls f0, f0, f1
/* 800CE908  EC 80 00 72 */	fmuls f4, f0, f1
/* 800CE90C  A8 1F 30 AC */	lha r0, 0x30ac(r31)
/* 800CE910  2C 00 00 00 */	cmpwi r0, 0
/* 800CE914  41 82 00 0C */	beq lbl_800CE920
/* 800CE918  C0 02 92 AC */	lfs f0, lit_6023(r2)
/* 800CE91C  EC 84 00 32 */	fmuls f4, f4, f0
lbl_800CE920:
/* 800CE920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CE924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CE928  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800CE92C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 800CE930  41 82 00 18 */	beq lbl_800CE948
/* 800CE934  80 1F 31 7C */	lwz r0, 0x317c(r31)
/* 800CE938  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800CE93C  7C 63 02 14 */	add r3, r3, r0
/* 800CE940  C0 03 5D 80 */	lfs f0, 0x5d80(r3)
/* 800CE944  EC 84 00 24 */	fdivs f4, f4, f0
lbl_800CE948:
/* 800CE948  A8 1F 2F E0 */	lha r0, 0x2fe0(r31)
/* 800CE94C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800CE950  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800CE954  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800CE958  7C 63 04 2E */	lfsx f3, r3, r0
/* 800CE95C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800CE960  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800CE964  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CE968  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CE96C  3C 80 43 30 */	lis r4, 0x4330
/* 800CE970  90 81 00 10 */	stw r4, 0x10(r1)
/* 800CE974  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800CE978  EC 20 10 28 */	fsubs f1, f0, f2
/* 800CE97C  EC 04 00 F2 */	fmuls f0, f4, f3
/* 800CE980  EC 01 00 2A */	fadds f0, f1, f0
/* 800CE984  FC 00 00 1E */	fctiwz f0, f0
/* 800CE988  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800CE98C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800CE990  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800CE994  A8 1F 2F E0 */	lha r0, 0x2fe0(r31)
/* 800CE998  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800CE99C  7C 63 02 14 */	add r3, r3, r0
/* 800CE9A0  C0 63 00 04 */	lfs f3, 4(r3)
/* 800CE9A4  A8 1F 05 9C */	lha r0, 0x59c(r31)
/* 800CE9A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CE9AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CE9B0  90 81 00 20 */	stw r4, 0x20(r1)
/* 800CE9B4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800CE9B8  EC 20 10 28 */	fsubs f1, f0, f2
/* 800CE9BC  EC 04 00 F2 */	fmuls f0, f4, f3
/* 800CE9C0  EC 01 00 2A */	fadds f0, f1, f0
/* 800CE9C4  FC 00 00 1E */	fctiwz f0, f0
/* 800CE9C8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800CE9CC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800CE9D0  B0 01 00 08 */	sth r0, 8(r1)
/* 800CE9D4  7F E3 FB 78 */	mr r3, r31
/* 800CE9D8  4B FE 31 91 */	bl checkNotItemSinkLimit__9daAlink_cFv
/* 800CE9DC  2C 03 00 00 */	cmpwi r3, 0
/* 800CE9E0  41 82 00 2C */	beq lbl_800CEA0C
/* 800CE9E4  A8 61 00 08 */	lha r3, 8(r1)
/* 800CE9E8  7C 60 07 35 */	extsh. r0, r3
/* 800CE9EC  40 81 00 20 */	ble lbl_800CEA0C
/* 800CE9F0  A8 1F 05 9C */	lha r0, 0x59c(r31)
/* 800CE9F4  7C 03 00 00 */	cmpw r3, r0
/* 800CE9F8  40 81 00 14 */	ble lbl_800CEA0C
/* 800CE9FC  B0 01 00 08 */	sth r0, 8(r1)
/* 800CEA00  48 00 00 0C */	b lbl_800CEA0C
lbl_800CEA04:
/* 800CEA04  A8 1F 05 9C */	lha r0, 0x59c(r31)
/* 800CEA08  B0 01 00 08 */	sth r0, 8(r1)
lbl_800CEA0C:
/* 800CEA0C  7F E3 FB 78 */	mr r3, r31
/* 800CEA10  4B FE 31 59 */	bl checkNotItemSinkLimit__9daAlink_cFv
/* 800CEA14  2C 03 00 00 */	cmpwi r3, 0
/* 800CEA18  41 82 00 28 */	beq lbl_800CEA40
/* 800CEA1C  A8 01 00 08 */	lha r0, 8(r1)
/* 800CEA20  2C 00 00 00 */	cmpwi r0, 0
/* 800CEA24  40 81 00 1C */	ble lbl_800CEA40
/* 800CEA28  38 61 00 08 */	addi r3, r1, 8
/* 800CEA2C  38 80 00 00 */	li r4, 0
/* 800CEA30  38 A0 00 05 */	li r5, 5
/* 800CEA34  38 C0 10 00 */	li r6, 0x1000
/* 800CEA38  38 E0 04 00 */	li r7, 0x400
/* 800CEA3C  48 1A 1B 05 */	bl cLib_addCalcAngleS__FPsssss
lbl_800CEA40:
/* 800CEA40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CEA44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CEA48  80 83 5F 18 */	lwz r4, 0x5f18(r3)
/* 800CEA4C  3C 60 00 20 */	lis r3, 0x0020 /* 0x00202000@ha */
/* 800CEA50  38 03 20 00 */	addi r0, r3, 0x2000 /* 0x00202000@l */
/* 800CEA54  7C 80 00 39 */	and. r0, r4, r0
/* 800CEA58  40 82 00 18 */	bne lbl_800CEA70
/* 800CEA5C  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800CEA60  28 00 00 42 */	cmplwi r0, 0x42
/* 800CEA64  40 82 00 0C */	bne lbl_800CEA70
/* 800CEA68  38 C0 D8 F0 */	li r6, -10000
/* 800CEA6C  48 00 00 10 */	b lbl_800CEA7C
lbl_800CEA70:
/* 800CEA70  3C 60 80 39 */	lis r3, m__18daAlinkHIO_item_c0@ha
/* 800CEA74  38 63 EB 50 */	addi r3, r3, m__18daAlinkHIO_item_c0@l
/* 800CEA78  A8 C3 00 2C */	lha r6, 0x2c(r3)
lbl_800CEA7C:
/* 800CEA7C  3C 60 80 39 */	lis r3, m__18daAlinkHIO_item_c0@ha
/* 800CEA80  38 63 EB 50 */	addi r3, r3, m__18daAlinkHIO_item_c0@l
/* 800CEA84  A8 A3 00 2A */	lha r5, 0x2a(r3)
/* 800CEA88  A8 81 00 08 */	lha r4, 8(r1)
/* 800CEA8C  7C C0 07 34 */	extsh r0, r6
/* 800CEA90  7C 04 00 00 */	cmpw r4, r0
/* 800CEA94  40 80 00 0C */	bge lbl_800CEAA0
/* 800CEA98  7C C4 33 78 */	mr r4, r6
/* 800CEA9C  48 00 00 18 */	b lbl_800CEAB4
lbl_800CEAA0:
/* 800CEAA0  7C 83 07 34 */	extsh r3, r4
/* 800CEAA4  7C A0 07 34 */	extsh r0, r5
/* 800CEAA8  7C 03 00 00 */	cmpw r3, r0
/* 800CEAAC  40 81 00 08 */	ble lbl_800CEAB4
/* 800CEAB0  7C A4 2B 78 */	mr r4, r5
lbl_800CEAB4:
/* 800CEAB4  B0 9F 05 9C */	sth r4, 0x59c(r31)
/* 800CEAB8  7F E3 FB 78 */	mr r3, r31
/* 800CEABC  A8 9F 05 9C */	lha r4, 0x59c(r31)
/* 800CEAC0  4B FF FC 69 */	bl checkBodyAngleX__9daAlink_cFs
/* 800CEAC4  A8 1F 05 9C */	lha r0, 0x59c(r31)
/* 800CEAC8  B0 1F 31 0A */	sth r0, 0x310a(r31)
/* 800CEACC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800CEAD0  B0 1F 31 0C */	sth r0, 0x310c(r31)
/* 800CEAD4  38 60 00 01 */	li r3, 1
/* 800CEAD8  48 00 00 08 */	b lbl_800CEAE0
lbl_800CEADC:
/* 800CEADC  38 60 00 00 */	li r3, 0
lbl_800CEAE0:
/* 800CEAE0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800CEAE4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800CEAE8  7C 08 03 A6 */	mtlr r0
/* 800CEAEC  38 21 00 40 */	addi r1, r1, 0x40
/* 800CEAF0  4E 80 00 20 */	blr 
