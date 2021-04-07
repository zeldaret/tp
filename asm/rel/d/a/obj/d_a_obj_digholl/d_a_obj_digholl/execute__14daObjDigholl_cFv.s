lbl_80BDC7D8:
/* 80BDC7D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BDC7DC  7C 08 02 A6 */	mflr r0
/* 80BDC7E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BDC7E4  39 61 00 40 */	addi r11, r1, 0x40
/* 80BDC7E8  4B 78 59 F5 */	bl _savegpr_29
/* 80BDC7EC  7C 7D 1B 78 */	mr r29, r3
/* 80BDC7F0  3C 60 80 BE */	lis r3, lit_3678@ha /* 0x80BDCB3C@ha */
/* 80BDC7F4  3B E3 CB 3C */	addi r31, r3, lit_3678@l /* 0x80BDCB3C@l */
/* 80BDC7F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDC7FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDC800  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 80BDC804  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80BDC808  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80BDC80C  41 82 00 50 */	beq lbl_80BDC85C
/* 80BDC810  88 9D 05 6A */	lbz r4, 0x56a(r29)
/* 80BDC814  28 04 00 FF */	cmplwi r4, 0xff
/* 80BDC818  41 82 00 18 */	beq lbl_80BDC830
/* 80BDC81C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80BDC820  7C 05 07 74 */	extsb r5, r0
/* 80BDC824  4B 45 8B 3D */	bl isSwitch__10dSv_info_cCFii
/* 80BDC828  2C 03 00 00 */	cmpwi r3, 0
/* 80BDC82C  41 82 00 30 */	beq lbl_80BDC85C
lbl_80BDC830:
/* 80BDC830  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80BDC834  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BDC838  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BDC83C  FC 00 02 10 */	fabs f0, f0
/* 80BDC840  FC 20 00 18 */	frsp f1, f0
/* 80BDC844  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BDC848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDC84C  40 80 00 10 */	bge lbl_80BDC85C
/* 80BDC850  38 00 00 80 */	li r0, 0x80
/* 80BDC854  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80BDC858  48 00 00 0C */	b lbl_80BDC864
lbl_80BDC85C:
/* 80BDC85C  38 00 00 00 */	li r0, 0
/* 80BDC860  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_80BDC864:
/* 80BDC864  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 80BDC868  28 00 00 01 */	cmplwi r0, 1
/* 80BDC86C  40 82 00 9C */	bne lbl_80BDC908
/* 80BDC870  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80BDC874  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80BDC878  4B 69 45 AD */	bl cLib_distanceAngleS__Fss
/* 80BDC87C  2C 03 60 00 */	cmpwi r3, 0x6000
/* 80BDC880  40 80 00 1C */	bge lbl_80BDC89C
/* 80BDC884  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80BDC888  3C 63 00 01 */	addis r3, r3, 1
/* 80BDC88C  38 03 80 00 */	addi r0, r3, -32768
/* 80BDC890  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80BDC894  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80BDC898  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_80BDC89C:
/* 80BDC89C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDC8A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDC8A4  88 9D 05 69 */	lbz r4, 0x569(r29)
/* 80BDC8A8  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80BDC8AC  7C 05 07 74 */	extsb r5, r0
/* 80BDC8B0  4B 45 89 51 */	bl onSwitch__10dSv_info_cFii
/* 80BDC8B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDC8B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDC8BC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80BDC8C0  28 00 00 00 */	cmplwi r0, 0
/* 80BDC8C4  41 82 00 30 */	beq lbl_80BDC8F4
/* 80BDC8C8  7F C3 F3 78 */	mr r3, r30
/* 80BDC8CC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80BDC8D0  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80BDC8D4  7D 89 03 A6 */	mtctr r12
/* 80BDC8D8  4E 80 04 21 */	bctrl 
/* 80BDC8DC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BDC8E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDC8E4  40 81 00 90 */	ble lbl_80BDC974
/* 80BDC8E8  38 00 00 01 */	li r0, 1
/* 80BDC8EC  98 1D 05 6B */	stb r0, 0x56b(r29)
/* 80BDC8F0  48 00 00 84 */	b lbl_80BDC974
lbl_80BDC8F4:
/* 80BDC8F4  38 00 00 02 */	li r0, 2
/* 80BDC8F8  98 1D 05 68 */	stb r0, 0x568(r29)
/* 80BDC8FC  38 00 00 01 */	li r0, 1
/* 80BDC900  98 1D 05 6B */	stb r0, 0x56b(r29)
/* 80BDC904  48 00 00 70 */	b lbl_80BDC974
lbl_80BDC908:
/* 80BDC908  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BDC90C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BDC910  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BDC914  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BDC918  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BDC91C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80BDC920  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BDC924  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BDC928  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BDC92C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BDC930  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80BDC934  38 61 00 0C */	addi r3, r1, 0xc
/* 80BDC938  38 81 00 18 */	addi r4, r1, 0x18
/* 80BDC93C  4B 76 AA 61 */	bl PSVECSquareDistance
/* 80BDC940  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80BDC944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDC948  40 80 00 2C */	bge lbl_80BDC974
/* 80BDC94C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80BDC950  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BDC954  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BDC958  FC 00 02 10 */	fabs f0, f0
/* 80BDC95C  FC 20 00 18 */	frsp f1, f0
/* 80BDC960  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BDC964  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDC968  40 80 00 0C */	bge lbl_80BDC974
/* 80BDC96C  38 7D 05 50 */	addi r3, r29, 0x550
/* 80BDC970  4B 58 2B 81 */	bl setLookPos__9daPy_py_cFP4cXyz
lbl_80BDC974:
/* 80BDC974  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BDC978  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BDC97C  4B 76 AA 21 */	bl PSVECSquareDistance
/* 80BDC980  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BDC984  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDC988  40 81 00 58 */	ble lbl_80BDC9E0
/* 80BDC98C  FC 00 08 34 */	frsqrte f0, f1
/* 80BDC990  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 80BDC994  FC 44 00 32 */	fmul f2, f4, f0
/* 80BDC998  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 80BDC99C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BDC9A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BDC9A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BDC9A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BDC9AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BDC9B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BDC9B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BDC9B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BDC9BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BDC9C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BDC9C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BDC9C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BDC9CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BDC9D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BDC9D4  FC 21 00 32 */	fmul f1, f1, f0
/* 80BDC9D8  FC 20 08 18 */	frsp f1, f1
/* 80BDC9DC  48 00 00 88 */	b lbl_80BDCA64
lbl_80BDC9E0:
/* 80BDC9E0  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 80BDC9E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDC9E8  40 80 00 10 */	bge lbl_80BDC9F8
/* 80BDC9EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BDC9F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BDC9F4  48 00 00 70 */	b lbl_80BDCA64
lbl_80BDC9F8:
/* 80BDC9F8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BDC9FC  80 81 00 08 */	lwz r4, 8(r1)
/* 80BDCA00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BDCA04  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BDCA08  7C 03 00 00 */	cmpw r3, r0
/* 80BDCA0C  41 82 00 14 */	beq lbl_80BDCA20
/* 80BDCA10  40 80 00 40 */	bge lbl_80BDCA50
/* 80BDCA14  2C 03 00 00 */	cmpwi r3, 0
/* 80BDCA18  41 82 00 20 */	beq lbl_80BDCA38
/* 80BDCA1C  48 00 00 34 */	b lbl_80BDCA50
lbl_80BDCA20:
/* 80BDCA20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BDCA24  41 82 00 0C */	beq lbl_80BDCA30
/* 80BDCA28  38 00 00 01 */	li r0, 1
/* 80BDCA2C  48 00 00 28 */	b lbl_80BDCA54
lbl_80BDCA30:
/* 80BDCA30  38 00 00 02 */	li r0, 2
/* 80BDCA34  48 00 00 20 */	b lbl_80BDCA54
lbl_80BDCA38:
/* 80BDCA38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BDCA3C  41 82 00 0C */	beq lbl_80BDCA48
/* 80BDCA40  38 00 00 05 */	li r0, 5
/* 80BDCA44  48 00 00 10 */	b lbl_80BDCA54
lbl_80BDCA48:
/* 80BDCA48  38 00 00 03 */	li r0, 3
/* 80BDCA4C  48 00 00 08 */	b lbl_80BDCA54
lbl_80BDCA50:
/* 80BDCA50  38 00 00 04 */	li r0, 4
lbl_80BDCA54:
/* 80BDCA54  2C 00 00 01 */	cmpwi r0, 1
/* 80BDCA58  40 82 00 0C */	bne lbl_80BDCA64
/* 80BDCA5C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BDCA60  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BDCA64:
/* 80BDCA64  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BDCA68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDCA6C  40 80 00 64 */	bge lbl_80BDCAD0
/* 80BDCA70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDCA74  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDCA78  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BDCA7C  38 80 07 0F */	li r4, 0x70f
/* 80BDCA80  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BDCA84  38 C0 00 00 */	li r6, 0
/* 80BDCA88  38 E0 00 FF */	li r7, 0xff
/* 80BDCA8C  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80BDCA90  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80BDCA94  7D 09 43 78 */	mr r9, r8
/* 80BDCA98  39 40 00 00 */	li r10, 0
/* 80BDCA9C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BDCAA0  4B 47 07 19 */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80BDCAA4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BDCAA8  38 80 07 3D */	li r4, 0x73d
/* 80BDCAAC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BDCAB0  38 C0 00 00 */	li r6, 0
/* 80BDCAB4  38 E0 00 FF */	li r7, 0xff
/* 80BDCAB8  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80BDCABC  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80BDCAC0  7D 09 43 78 */	mr r9, r8
/* 80BDCAC4  39 40 00 00 */	li r10, 0
/* 80BDCAC8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BDCACC  4B 47 06 ED */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
lbl_80BDCAD0:
/* 80BDCAD0  38 60 00 01 */	li r3, 1
/* 80BDCAD4  39 61 00 40 */	addi r11, r1, 0x40
/* 80BDCAD8  4B 78 57 51 */	bl _restgpr_29
/* 80BDCADC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BDCAE0  7C 08 03 A6 */	mtlr r0
/* 80BDCAE4  38 21 00 40 */	addi r1, r1, 0x40
/* 80BDCAE8  4E 80 00 20 */	blr 
