lbl_807AE968:
/* 807AE968  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807AE96C  7C 08 02 A6 */	mflr r0
/* 807AE970  90 01 00 24 */	stw r0, 0x24(r1)
/* 807AE974  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807AE978  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807AE97C  7C 7E 1B 78 */	mr r30, r3
/* 807AE980  3C 80 80 7B */	lis r4, lit_3909@ha
/* 807AE984  3B E4 FD 2C */	addi r31, r4, lit_3909@l
/* 807AE988  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807AE98C  2C 00 00 01 */	cmpwi r0, 1
/* 807AE990  41 82 00 4C */	beq lbl_807AE9DC
/* 807AE994  40 80 01 5C */	bge lbl_807AEAF0
/* 807AE998  2C 00 00 00 */	cmpwi r0, 0
/* 807AE99C  40 80 00 08 */	bge lbl_807AE9A4
/* 807AE9A0  48 00 01 50 */	b lbl_807AEAF0
lbl_807AE9A4:
/* 807AE9A4  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 807AE9A8  2C 00 00 00 */	cmpwi r0, 0
/* 807AE9AC  40 82 01 44 */	bne lbl_807AEAF0
/* 807AE9B0  38 80 00 0B */	li r4, 0xb
/* 807AE9B4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 807AE9B8  38 A0 00 00 */	li r5, 0
/* 807AE9BC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AE9C0  4B FF 8A A1 */	bl bckSet__8daE_SW_cFifUcf
/* 807AE9C4  7F C3 F3 78 */	mr r3, r30
/* 807AE9C8  4B FF 90 F9 */	bl setHideEffect__8daE_SW_cFv
/* 807AE9CC  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 807AE9D0  38 03 00 01 */	addi r0, r3, 1
/* 807AE9D4  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AE9D8  48 00 01 18 */	b lbl_807AEAF0
lbl_807AE9DC:
/* 807AE9DC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AE9E0  38 63 00 0C */	addi r3, r3, 0xc
/* 807AE9E4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807AE9E8  4B B7 9A 44 */	b checkPass__12J3DFrameCtrlFf
/* 807AE9EC  2C 03 00 00 */	cmpwi r3, 0
/* 807AE9F0  41 82 00 30 */	beq lbl_807AEA20
/* 807AE9F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035D@ha */
/* 807AE9F8  38 03 03 5D */	addi r0, r3, 0x035D /* 0x0007035D@l */
/* 807AE9FC  90 01 00 08 */	stw r0, 8(r1)
/* 807AEA00  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807AEA04  38 81 00 08 */	addi r4, r1, 8
/* 807AEA08  88 BE 06 E9 */	lbz r5, 0x6e9(r30)
/* 807AEA0C  38 C0 FF FF */	li r6, -1
/* 807AEA10  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807AEA14  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807AEA18  7D 89 03 A6 */	mtctr r12
/* 807AEA1C  4E 80 04 21 */	bctrl 
lbl_807AEA20:
/* 807AEA20  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AEA24  38 63 00 0C */	addi r3, r3, 0xc
/* 807AEA28  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807AEA2C  4B B7 9A 00 */	b checkPass__12J3DFrameCtrlFf
/* 807AEA30  2C 03 00 00 */	cmpwi r3, 0
/* 807AEA34  41 82 00 0C */	beq lbl_807AEA40
/* 807AEA38  38 00 00 01 */	li r0, 1
/* 807AEA3C  98 1E 06 E4 */	stb r0, 0x6e4(r30)
lbl_807AEA40:
/* 807AEA40  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AEA44  38 80 00 01 */	li r4, 1
/* 807AEA48  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807AEA4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807AEA50  40 82 00 18 */	bne lbl_807AEA68
/* 807AEA54  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AEA58  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807AEA5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807AEA60  41 82 00 08 */	beq lbl_807AEA68
/* 807AEA64  38 80 00 00 */	li r4, 0
lbl_807AEA68:
/* 807AEA68  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807AEA6C  41 82 00 48 */	beq lbl_807AEAB4
/* 807AEA70  38 00 00 01 */	li r0, 1
/* 807AEA74  98 1E 06 E5 */	stb r0, 0x6e5(r30)
/* 807AEA78  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 807AEA7C  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 807AEA80  3C 60 80 7B */	lis r3, lit_6959@ha
/* 807AEA84  38 83 01 08 */	addi r4, r3, lit_6959@l
/* 807AEA88  80 64 00 00 */	lwz r3, 0(r4)
/* 807AEA8C  80 04 00 04 */	lwz r0, 4(r4)
/* 807AEA90  90 61 00 0C */	stw r3, 0xc(r1)
/* 807AEA94  90 01 00 10 */	stw r0, 0x10(r1)
/* 807AEA98  80 04 00 08 */	lwz r0, 8(r4)
/* 807AEA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AEAA0  7F C3 F3 78 */	mr r3, r30
/* 807AEAA4  38 81 00 0C */	addi r4, r1, 0xc
/* 807AEAA8  4B FF DF 99 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807AEAAC  48 00 00 08 */	b lbl_807AEAB4
/* 807AEAB0  48 00 00 40 */	b lbl_807AEAF0
lbl_807AEAB4:
/* 807AEAB4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807AEAB8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AEABC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AEAC0  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 807AEAC4  4B AC 0F 78 */	b cLib_addCalc2__FPffff
/* 807AEAC8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807AEACC  A8 9E 06 9E */	lha r4, 0x69e(r30)
/* 807AEAD0  38 A0 00 04 */	li r5, 4
/* 807AEAD4  38 C0 00 00 */	li r6, 0
/* 807AEAD8  4B AC 1B 30 */	b cLib_addCalcAngleS2__FPssss
/* 807AEADC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807AEAE0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 807AEAE4  38 A0 00 08 */	li r5, 8
/* 807AEAE8  38 C0 04 00 */	li r6, 0x400
/* 807AEAEC  4B AC 1B 1C */	b cLib_addCalcAngleS2__FPssss
lbl_807AEAF0:
/* 807AEAF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807AEAF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807AEAF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807AEAFC  7C 08 03 A6 */	mtlr r0
/* 807AEB00  38 21 00 20 */	addi r1, r1, 0x20
/* 807AEB04  4E 80 00 20 */	blr 
