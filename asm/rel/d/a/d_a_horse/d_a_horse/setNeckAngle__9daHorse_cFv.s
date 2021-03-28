lbl_8083E8A4:
/* 8083E8A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8083E8A8  7C 08 02 A6 */	mflr r0
/* 8083E8AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8083E8B0  39 61 00 30 */	addi r11, r1, 0x30
/* 8083E8B4  4B B2 39 28 */	b _savegpr_29
/* 8083E8B8  7C 7E 1B 78 */	mr r30, r3
/* 8083E8BC  3B E0 00 00 */	li r31, 0
/* 8083E8C0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8083E8C4  28 00 00 01 */	cmplwi r0, 1
/* 8083E8C8  40 82 00 24 */	bne lbl_8083E8EC
/* 8083E8CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8083E8D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8083E8D4  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 8083E8D8  4B 7D BE 38 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8083E8DC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8083E8E0  7C 00 18 50 */	subf r0, r0, r3
/* 8083E8E4  B0 1E 16 F2 */	sth r0, 0x16f2(r30)
/* 8083E8E8  48 00 01 28 */	b lbl_8083EA10
lbl_8083E8EC:
/* 8083E8EC  A8 9E 17 02 */	lha r4, 0x1702(r30)
/* 8083E8F0  7C 80 07 35 */	extsh. r0, r4
/* 8083E8F4  41 82 00 24 */	beq lbl_8083E918
/* 8083E8F8  38 7E 16 F0 */	addi r3, r30, 0x16f0
/* 8083E8FC  1C 04 00 03 */	mulli r0, r4, 3
/* 8083E900  7C 04 07 34 */	extsh r4, r0
/* 8083E904  38 A0 00 03 */	li r5, 3
/* 8083E908  38 C0 04 00 */	li r6, 0x400
/* 8083E90C  38 E0 01 00 */	li r7, 0x100
/* 8083E910  4B A3 1C 30 */	b cLib_addCalcAngleS__FPsssss
/* 8083E914  48 00 01 4C */	b lbl_8083EA60
lbl_8083E918:
/* 8083E918  A8 7E 16 FA */	lha r3, 0x16fa(r30)
/* 8083E91C  7C 60 07 35 */	extsh. r0, r3
/* 8083E920  41 82 00 0C */	beq lbl_8083E92C
/* 8083E924  B0 7E 16 F0 */	sth r3, 0x16f0(r30)
/* 8083E928  48 00 01 38 */	b lbl_8083EA60
lbl_8083E92C:
/* 8083E92C  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 8083E930  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083E934  40 82 00 D4 */	bne lbl_8083EA08
/* 8083E938  80 1E 17 48 */	lwz r0, 0x1748(r30)
/* 8083E93C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8083E940  40 82 00 C8 */	bne lbl_8083EA08
/* 8083E944  88 1E 16 B4 */	lbz r0, 0x16b4(r30)
/* 8083E948  28 00 00 00 */	cmplwi r0, 0
/* 8083E94C  40 82 00 BC */	bne lbl_8083EA08
/* 8083E950  A0 1E 16 C4 */	lhz r0, 0x16c4(r30)
/* 8083E954  28 00 00 1B */	cmplwi r0, 0x1b
/* 8083E958  40 82 00 B0 */	bne lbl_8083EA08
/* 8083E95C  3B E0 00 01 */	li r31, 1
/* 8083E960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083E964  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8083E968  80 9D 5D B4 */	lwz r4, 0x5db4(r29)
/* 8083E96C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8083E970  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8083E974  D0 01 00 08 */	stfs f0, 8(r1)
/* 8083E978  3C 60 80 84 */	lis r3, lit_4306@ha
/* 8083E97C  C0 23 55 FC */	lfs f1, lit_4306@l(r3)
/* 8083E980  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8083E984  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8083E988  C0 44 04 D8 */	lfs f2, 0x4d8(r4)
/* 8083E98C  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8083E990  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8083E994  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8083E998  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8083E99C  38 61 00 08 */	addi r3, r1, 8
/* 8083E9A0  38 81 00 14 */	addi r4, r1, 0x14
/* 8083E9A4  4B B0 89 F8 */	b PSVECSquareDistance
/* 8083E9A8  3C 60 80 84 */	lis r3, lit_7848@ha
/* 8083E9AC  C0 03 57 3C */	lfs f0, lit_7848@l(r3)
/* 8083E9B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083E9B4  40 80 00 48 */	bge lbl_8083E9FC
/* 8083E9B8  38 7E 05 38 */	addi r3, r30, 0x538
/* 8083E9BC  4B 92 0B 34 */	b setLookPos__9daPy_py_cFP4cXyz
/* 8083E9C0  7F C3 F3 78 */	mr r3, r30
/* 8083E9C4  80 9D 5D B4 */	lwz r4, 0x5db4(r29)
/* 8083E9C8  4B 7D BD 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8083E9CC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8083E9D0  7C 00 18 50 */	subf r0, r0, r3
/* 8083E9D4  7C 1D 07 34 */	extsh r29, r0
/* 8083E9D8  7F A3 EB 78 */	mr r3, r29
/* 8083E9DC  4B B2 66 F4 */	b abs
/* 8083E9E0  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8083E9E4  40 80 00 0C */	bge lbl_8083E9F0
/* 8083E9E8  B3 BE 16 F2 */	sth r29, 0x16f2(r30)
/* 8083E9EC  48 00 00 24 */	b lbl_8083EA10
lbl_8083E9F0:
/* 8083E9F0  38 00 00 00 */	li r0, 0
/* 8083E9F4  B0 1E 16 F2 */	sth r0, 0x16f2(r30)
/* 8083E9F8  48 00 00 18 */	b lbl_8083EA10
lbl_8083E9FC:
/* 8083E9FC  38 00 00 00 */	li r0, 0
/* 8083EA00  B0 1E 16 F2 */	sth r0, 0x16f2(r30)
/* 8083EA04  48 00 00 0C */	b lbl_8083EA10
lbl_8083EA08:
/* 8083EA08  38 00 00 00 */	li r0, 0
/* 8083EA0C  B0 1E 16 F2 */	sth r0, 0x16f2(r30)
lbl_8083EA10:
/* 8083EA10  2C 1F 00 00 */	cmpwi r31, 0
/* 8083EA14  41 82 00 10 */	beq lbl_8083EA24
/* 8083EA18  38 C0 01 00 */	li r6, 0x100
/* 8083EA1C  38 E0 00 40 */	li r7, 0x40
/* 8083EA20  48 00 00 30 */	b lbl_8083EA50
lbl_8083EA24:
/* 8083EA24  A8 7E 16 F2 */	lha r3, 0x16f2(r30)
/* 8083EA28  7C 60 07 35 */	extsh. r0, r3
/* 8083EA2C  41 82 00 10 */	beq lbl_8083EA3C
/* 8083EA30  A8 1E 16 F0 */	lha r0, 0x16f0(r30)
/* 8083EA34  7C 03 01 D7 */	mullw. r0, r3, r0
/* 8083EA38  40 80 00 10 */	bge lbl_8083EA48
lbl_8083EA3C:
/* 8083EA3C  38 C0 10 00 */	li r6, 0x1000
/* 8083EA40  38 E0 01 00 */	li r7, 0x100
/* 8083EA44  48 00 00 0C */	b lbl_8083EA50
lbl_8083EA48:
/* 8083EA48  38 C0 02 00 */	li r6, 0x200
/* 8083EA4C  38 E0 00 40 */	li r7, 0x40
lbl_8083EA50:
/* 8083EA50  38 7E 16 F0 */	addi r3, r30, 0x16f0
/* 8083EA54  A8 9E 16 F2 */	lha r4, 0x16f2(r30)
/* 8083EA58  38 A0 00 03 */	li r5, 3
/* 8083EA5C  4B A3 1A E4 */	b cLib_addCalcAngleS__FPsssss
lbl_8083EA60:
/* 8083EA60  39 61 00 30 */	addi r11, r1, 0x30
/* 8083EA64  4B B2 37 C4 */	b _restgpr_29
/* 8083EA68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8083EA6C  7C 08 03 A6 */	mtlr r0
/* 8083EA70  38 21 00 30 */	addi r1, r1, 0x30
/* 8083EA74  4E 80 00 20 */	blr 
