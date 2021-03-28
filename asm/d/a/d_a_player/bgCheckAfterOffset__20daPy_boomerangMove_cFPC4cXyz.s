lbl_8015E87C:
/* 8015E87C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8015E880  7C 08 02 A6 */	mflr r0
/* 8015E884  90 01 00 44 */	stw r0, 0x44(r1)
/* 8015E888  39 61 00 40 */	addi r11, r1, 0x40
/* 8015E88C  48 20 39 51 */	bl _savegpr_29
/* 8015E890  7C 7D 1B 78 */	mr r29, r3
/* 8015E894  7C 9E 23 78 */	mr r30, r4
/* 8015E898  48 00 10 39 */	bl getThrowBoomerangActor__9daPy_py_cFv
/* 8015E89C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8015E8A0  41 82 01 54 */	beq lbl_8015E9F4
/* 8015E8A4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8015E8A8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8015E8AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8015E8B0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8015E8B4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8015E8B8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8015E8BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8015E8C0  C0 22 9C 00 */	lfs f1, lit_4215(r2)
/* 8015E8C4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8015E8C8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8015E8CC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8015E8D0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8015E8D4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8015E8D8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8015E8DC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8015E8E0  38 61 00 0C */	addi r3, r1, 0xc
/* 8015E8E4  38 81 00 18 */	addi r4, r1, 0x18
/* 8015E8E8  48 1E 8A B5 */	bl PSVECSquareDistance
/* 8015E8EC  C0 02 9C 00 */	lfs f0, lit_4215(r2)
/* 8015E8F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015E8F4  40 81 00 58 */	ble lbl_8015E94C
/* 8015E8F8  FC 00 08 34 */	frsqrte f0, f1
/* 8015E8FC  C8 82 9C 30 */	lfd f4, lit_4379(r2)
/* 8015E900  FC 44 00 32 */	fmul f2, f4, f0
/* 8015E904  C8 62 9C 38 */	lfd f3, lit_4380(r2)
/* 8015E908  FC 00 00 32 */	fmul f0, f0, f0
/* 8015E90C  FC 01 00 32 */	fmul f0, f1, f0
/* 8015E910  FC 03 00 28 */	fsub f0, f3, f0
/* 8015E914  FC 02 00 32 */	fmul f0, f2, f0
/* 8015E918  FC 44 00 32 */	fmul f2, f4, f0
/* 8015E91C  FC 00 00 32 */	fmul f0, f0, f0
/* 8015E920  FC 01 00 32 */	fmul f0, f1, f0
/* 8015E924  FC 03 00 28 */	fsub f0, f3, f0
/* 8015E928  FC 02 00 32 */	fmul f0, f2, f0
/* 8015E92C  FC 44 00 32 */	fmul f2, f4, f0
/* 8015E930  FC 00 00 32 */	fmul f0, f0, f0
/* 8015E934  FC 01 00 32 */	fmul f0, f1, f0
/* 8015E938  FC 03 00 28 */	fsub f0, f3, f0
/* 8015E93C  FC 02 00 32 */	fmul f0, f2, f0
/* 8015E940  FC 21 00 32 */	fmul f1, f1, f0
/* 8015E944  FC 20 08 18 */	frsp f1, f1
/* 8015E948  48 00 00 88 */	b lbl_8015E9D0
lbl_8015E94C:
/* 8015E94C  C8 02 9C 40 */	lfd f0, lit_4381(r2)
/* 8015E950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015E954  40 80 00 10 */	bge lbl_8015E964
/* 8015E958  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8015E95C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8015E960  48 00 00 70 */	b lbl_8015E9D0
lbl_8015E964:
/* 8015E964  D0 21 00 08 */	stfs f1, 8(r1)
/* 8015E968  80 81 00 08 */	lwz r4, 8(r1)
/* 8015E96C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8015E970  3C 00 7F 80 */	lis r0, 0x7f80
/* 8015E974  7C 03 00 00 */	cmpw r3, r0
/* 8015E978  41 82 00 14 */	beq lbl_8015E98C
/* 8015E97C  40 80 00 40 */	bge lbl_8015E9BC
/* 8015E980  2C 03 00 00 */	cmpwi r3, 0
/* 8015E984  41 82 00 20 */	beq lbl_8015E9A4
/* 8015E988  48 00 00 34 */	b lbl_8015E9BC
lbl_8015E98C:
/* 8015E98C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8015E990  41 82 00 0C */	beq lbl_8015E99C
/* 8015E994  38 00 00 01 */	li r0, 1
/* 8015E998  48 00 00 28 */	b lbl_8015E9C0
lbl_8015E99C:
/* 8015E99C  38 00 00 02 */	li r0, 2
/* 8015E9A0  48 00 00 20 */	b lbl_8015E9C0
lbl_8015E9A4:
/* 8015E9A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8015E9A8  41 82 00 0C */	beq lbl_8015E9B4
/* 8015E9AC  38 00 00 05 */	li r0, 5
/* 8015E9B0  48 00 00 10 */	b lbl_8015E9C0
lbl_8015E9B4:
/* 8015E9B4  38 00 00 03 */	li r0, 3
/* 8015E9B8  48 00 00 08 */	b lbl_8015E9C0
lbl_8015E9BC:
/* 8015E9BC  38 00 00 04 */	li r0, 4
lbl_8015E9C0:
/* 8015E9C0  2C 00 00 01 */	cmpwi r0, 1
/* 8015E9C4  40 82 00 0C */	bne lbl_8015E9D0
/* 8015E9C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8015E9CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8015E9D0:
/* 8015E9D0  D0 3D 00 08 */	stfs f1, 8(r29)
/* 8015E9D4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8015E9D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8015E9DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8015E9E0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8015E9E4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8015E9E8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8015E9EC  48 10 8C 89 */	bl cM_atan2s__Fff
/* 8015E9F0  B0 7D 00 02 */	sth r3, 2(r29)
lbl_8015E9F4:
/* 8015E9F4  39 61 00 40 */	addi r11, r1, 0x40
/* 8015E9F8  48 20 38 31 */	bl _restgpr_29
/* 8015E9FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8015EA00  7C 08 03 A6 */	mtlr r0
/* 8015EA04  38 21 00 40 */	addi r1, r1, 0x40
/* 8015EA08  4E 80 00 20 */	blr 
