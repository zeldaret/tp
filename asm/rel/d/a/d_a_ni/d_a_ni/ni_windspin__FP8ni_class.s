lbl_8094DD74:
/* 8094DD74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8094DD78  7C 08 02 A6 */	mflr r0
/* 8094DD7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8094DD80  39 61 00 20 */	addi r11, r1, 0x20
/* 8094DD84  4B A1 44 59 */	bl _savegpr_29
/* 8094DD88  7C 7D 1B 78 */	mr r29, r3
/* 8094DD8C  3C 60 80 95 */	lis r3, lit_3958@ha /* 0x809511C0@ha */
/* 8094DD90  3B C3 11 C0 */	addi r30, r3, lit_3958@l /* 0x809511C0@l */
/* 8094DD94  3C 60 80 95 */	lis r3, s_b_sub__FPvPv@ha /* 0x8094DD10@ha */
/* 8094DD98  38 63 DD 10 */	addi r3, r3, s_b_sub__FPvPv@l /* 0x8094DD10@l */
/* 8094DD9C  7F A4 EB 78 */	mr r4, r29
/* 8094DDA0  4B 6D 35 99 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8094DDA4  7C 7F 1B 78 */	mr r31, r3
/* 8094DDA8  A8 1D 05 FC */	lha r0, 0x5fc(r29)
/* 8094DDAC  2C 00 00 01 */	cmpwi r0, 1
/* 8094DDB0  41 82 00 50 */	beq lbl_8094DE00
/* 8094DDB4  40 80 00 60 */	bge lbl_8094DE14
/* 8094DDB8  2C 00 00 00 */	cmpwi r0, 0
/* 8094DDBC  40 80 00 08 */	bge lbl_8094DDC4
/* 8094DDC0  48 00 00 54 */	b lbl_8094DE14
lbl_8094DDC4:
/* 8094DDC4  7F A3 EB 78 */	mr r3, r29
/* 8094DDC8  38 80 00 05 */	li r4, 5
/* 8094DDCC  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8094DDD0  38 A0 00 00 */	li r5, 0
/* 8094DDD4  FC 40 08 90 */	fmr f2, f1
/* 8094DDD8  4B FF DE D1 */	bl anm_init__FP8ni_classifUcf
/* 8094DDDC  A8 7D 05 FC */	lha r3, 0x5fc(r29)
/* 8094DDE0  38 03 00 01 */	addi r0, r3, 1
/* 8094DDE4  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 8094DDE8  7F A3 EB 78 */	mr r3, r29
/* 8094DDEC  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8094DDF0  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8094DDF4  4B FF DF 75 */	bl hane_set__FP8ni_classff
/* 8094DDF8  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8094DDFC  D0 1D 09 FC */	stfs f0, 0x9fc(r29)
lbl_8094DE00:
/* 8094DE00  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8094DE04  38 03 DE 00 */	addi r0, r3, -8704
/* 8094DE08  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8094DE0C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8094DE10  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_8094DE14:
/* 8094DE14  28 1F 00 00 */	cmplwi r31, 0
/* 8094DE18  40 82 00 18 */	bne lbl_8094DE30
/* 8094DE1C  38 00 00 08 */	li r0, 8
/* 8094DE20  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 8094DE24  38 00 00 00 */	li r0, 0
/* 8094DE28  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 8094DE2C  48 00 00 8C */	b lbl_8094DEB8
lbl_8094DE30:
/* 8094DE30  C0 7D 09 FC */	lfs f3, 0x9fc(r29)
/* 8094DE34  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8094DE38  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8094DE3C  4C 41 13 82 */	cror 2, 1, 2
/* 8094DE40  40 82 00 18 */	bne lbl_8094DE58
/* 8094DE44  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8094DE48  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8094DE4C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8094DE50  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8094DE54  48 00 00 3C */	b lbl_8094DE90
lbl_8094DE58:
/* 8094DE58  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8094DE5C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8094DE60  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8094DE64  4B 92 1B D9 */	bl cLib_addCalc2__FPffff
/* 8094DE68  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8094DE6C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8094DE70  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8094DE74  C0 7D 09 FC */	lfs f3, 0x9fc(r29)
/* 8094DE78  4B 92 1B C5 */	bl cLib_addCalc2__FPffff
/* 8094DE7C  38 7D 09 FC */	addi r3, r29, 0x9fc
/* 8094DE80  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8094DE84  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8094DE88  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 8094DE8C  4B 92 1B B1 */	bl cLib_addCalc2__FPffff
lbl_8094DE90:
/* 8094DE90  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8094DE94  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8094DE98  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8094DE9C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8094DEA0  C0 5E 00 C0 */	lfs f2, 0xc0(r30)
/* 8094DEA4  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 8094DEA8  4B 92 1B 95 */	bl cLib_addCalc2__FPffff
/* 8094DEAC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8094DEB0  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8094DEB4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8094DEB8:
/* 8094DEB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8094DEBC  4B A1 43 6D */	bl _restgpr_29
/* 8094DEC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8094DEC4  7C 08 03 A6 */	mtlr r0
/* 8094DEC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8094DECC  4E 80 00 20 */	blr 
