lbl_8071DBA0:
/* 8071DBA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8071DBA4  7C 08 02 A6 */	mflr r0
/* 8071DBA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8071DBAC  39 61 00 40 */	addi r11, r1, 0x40
/* 8071DBB0  4B C4 46 2D */	bl _savegpr_29
/* 8071DBB4  7C 7D 1B 78 */	mr r29, r3
/* 8071DBB8  3C 60 80 72 */	lis r3, lit_3776@ha /* 0x8071F640@ha */
/* 8071DBBC  3B C3 F6 40 */	addi r30, r3, lit_3776@l /* 0x8071F640@l */
/* 8071DBC0  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 8071DBC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8071DBC8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8071DBCC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8071DBD0  38 81 00 0C */	addi r4, r1, 0xc
/* 8071DBD4  4B 8F BC 25 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8071DBD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8071DBDC  40 82 00 0C */	bne lbl_8071DBE8
/* 8071DBE0  38 60 00 02 */	li r3, 2
/* 8071DBE4  48 00 03 08 */	b lbl_8071DEEC
lbl_8071DBE8:
/* 8071DBE8  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 8071DBEC  2C 00 00 01 */	cmpwi r0, 1
/* 8071DBF0  41 82 00 48 */	beq lbl_8071DC38
/* 8071DBF4  40 80 02 78 */	bge lbl_8071DE6C
/* 8071DBF8  2C 00 00 00 */	cmpwi r0, 0
/* 8071DBFC  40 80 00 08 */	bge lbl_8071DC04
/* 8071DC00  48 00 02 6C */	b lbl_8071DE6C
lbl_8071DC04:
/* 8071DC04  38 00 00 01 */	li r0, 1
/* 8071DC08  98 1D 09 98 */	stb r0, 0x998(r29)
/* 8071DC0C  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 8071DC10  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8071DC14  38 03 D0 00 */	addi r0, r3, -12288
/* 8071DC18  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8071DC1C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8071DC20  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 8071DC24  38 00 00 41 */	li r0, 0x41
/* 8071DC28  B0 1D 05 F4 */	sth r0, 0x5f4(r29)
/* 8071DC2C  38 00 00 1E */	li r0, 0x1e
/* 8071DC30  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 8071DC34  48 00 02 38 */	b lbl_8071DE6C
lbl_8071DC38:
/* 8071DC38  A8 1D 05 F4 */	lha r0, 0x5f4(r29)
/* 8071DC3C  2C 00 00 00 */	cmpwi r0, 0
/* 8071DC40  41 82 00 28 */	beq lbl_8071DC68
/* 8071DC44  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8071DC48  A8 1D 05 EE */	lha r0, 0x5ee(r29)
/* 8071DC4C  7C 03 02 14 */	add r0, r3, r0
/* 8071DC50  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8071DC54  38 00 01 5E */	li r0, 0x15e
/* 8071DC58  B0 1D 05 EE */	sth r0, 0x5ee(r29)
/* 8071DC5C  38 00 06 A4 */	li r0, 0x6a4
/* 8071DC60  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8071DC64  48 00 02 08 */	b lbl_8071DE6C
lbl_8071DC68:
/* 8071DC68  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8071DC6C  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 8071DC70  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8071DC74  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8071DC78  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8071DC7C  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 8071DC80  C0 3D 05 E4 */	lfs f1, 0x5e4(r29)
/* 8071DC84  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8071DC88  EC 01 00 2A */	fadds f0, f1, f0
/* 8071DC8C  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8071DC90  38 61 00 10 */	addi r3, r1, 0x10
/* 8071DC94  38 9D 05 E0 */	addi r4, r29, 0x5e0
/* 8071DC98  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8071DC9C  4B B4 8E 99 */	bl __mi__4cXyzCFRC3Vec
/* 8071DCA0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8071DCA4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8071DCA8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8071DCAC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8071DCB0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8071DCB4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8071DCB8  4B B4 99 BD */	bl cM_atan2s__Fff
/* 8071DCBC  7C 64 1B 78 */	mr r4, r3
/* 8071DCC0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8071DCC4  38 A0 00 01 */	li r5, 1
/* 8071DCC8  A8 DD 05 EC */	lha r6, 0x5ec(r29)
/* 8071DCCC  4B B5 29 3D */	bl cLib_addCalcAngleS2__FPssss
/* 8071DCD0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8071DCD4  EC 20 00 32 */	fmuls f1, f0, f0
/* 8071DCD8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8071DCDC  EC 00 00 32 */	fmuls f0, f0, f0
/* 8071DCE0  EC 41 00 2A */	fadds f2, f1, f0
/* 8071DCE4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8071DCE8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8071DCEC  40 81 00 0C */	ble lbl_8071DCF8
/* 8071DCF0  FC 00 10 34 */	frsqrte f0, f2
/* 8071DCF4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8071DCF8:
/* 8071DCF8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8071DCFC  4B B4 99 79 */	bl cM_atan2s__Fff
/* 8071DD00  7C 03 00 D0 */	neg r0, r3
/* 8071DD04  7C 04 07 34 */	extsh r4, r0
/* 8071DD08  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8071DD0C  38 A0 00 01 */	li r5, 1
/* 8071DD10  A8 DD 05 EC */	lha r6, 0x5ec(r29)
/* 8071DD14  4B B5 28 F5 */	bl cLib_addCalcAngleS2__FPssss
/* 8071DD18  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 8071DD1C  A8 9D 05 EE */	lha r4, 0x5ee(r29)
/* 8071DD20  38 A0 00 01 */	li r5, 1
/* 8071DD24  38 C0 00 40 */	li r6, 0x40
/* 8071DD28  4B B5 28 E1 */	bl cLib_addCalcAngleS2__FPssss
/* 8071DD2C  38 7D 05 EE */	addi r3, r29, 0x5ee
/* 8071DD30  38 80 20 00 */	li r4, 0x2000
/* 8071DD34  38 A0 00 01 */	li r5, 1
/* 8071DD38  38 C0 00 04 */	li r6, 4
/* 8071DD3C  4B B5 28 CD */	bl cLib_addCalcAngleS2__FPssss
/* 8071DD40  38 61 00 1C */	addi r3, r1, 0x1c
/* 8071DD44  4B C2 93 F5 */	bl PSVECSquareMag
/* 8071DD48  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8071DD4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071DD50  40 81 00 58 */	ble lbl_8071DDA8
/* 8071DD54  FC 00 08 34 */	frsqrte f0, f1
/* 8071DD58  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8071DD5C  FC 44 00 32 */	fmul f2, f4, f0
/* 8071DD60  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8071DD64  FC 00 00 32 */	fmul f0, f0, f0
/* 8071DD68  FC 01 00 32 */	fmul f0, f1, f0
/* 8071DD6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8071DD70  FC 02 00 32 */	fmul f0, f2, f0
/* 8071DD74  FC 44 00 32 */	fmul f2, f4, f0
/* 8071DD78  FC 00 00 32 */	fmul f0, f0, f0
/* 8071DD7C  FC 01 00 32 */	fmul f0, f1, f0
/* 8071DD80  FC 03 00 28 */	fsub f0, f3, f0
/* 8071DD84  FC 02 00 32 */	fmul f0, f2, f0
/* 8071DD88  FC 44 00 32 */	fmul f2, f4, f0
/* 8071DD8C  FC 00 00 32 */	fmul f0, f0, f0
/* 8071DD90  FC 01 00 32 */	fmul f0, f1, f0
/* 8071DD94  FC 03 00 28 */	fsub f0, f3, f0
/* 8071DD98  FC 02 00 32 */	fmul f0, f2, f0
/* 8071DD9C  FC 21 00 32 */	fmul f1, f1, f0
/* 8071DDA0  FC 20 08 18 */	frsp f1, f1
/* 8071DDA4  48 00 00 88 */	b lbl_8071DE2C
lbl_8071DDA8:
/* 8071DDA8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8071DDAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071DDB0  40 80 00 10 */	bge lbl_8071DDC0
/* 8071DDB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8071DDB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8071DDBC  48 00 00 70 */	b lbl_8071DE2C
lbl_8071DDC0:
/* 8071DDC0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8071DDC4  80 81 00 08 */	lwz r4, 8(r1)
/* 8071DDC8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8071DDCC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8071DDD0  7C 03 00 00 */	cmpw r3, r0
/* 8071DDD4  41 82 00 14 */	beq lbl_8071DDE8
/* 8071DDD8  40 80 00 40 */	bge lbl_8071DE18
/* 8071DDDC  2C 03 00 00 */	cmpwi r3, 0
/* 8071DDE0  41 82 00 20 */	beq lbl_8071DE00
/* 8071DDE4  48 00 00 34 */	b lbl_8071DE18
lbl_8071DDE8:
/* 8071DDE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071DDEC  41 82 00 0C */	beq lbl_8071DDF8
/* 8071DDF0  38 00 00 01 */	li r0, 1
/* 8071DDF4  48 00 00 28 */	b lbl_8071DE1C
lbl_8071DDF8:
/* 8071DDF8  38 00 00 02 */	li r0, 2
/* 8071DDFC  48 00 00 20 */	b lbl_8071DE1C
lbl_8071DE00:
/* 8071DE00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071DE04  41 82 00 0C */	beq lbl_8071DE10
/* 8071DE08  38 00 00 05 */	li r0, 5
/* 8071DE0C  48 00 00 10 */	b lbl_8071DE1C
lbl_8071DE10:
/* 8071DE10  38 00 00 03 */	li r0, 3
/* 8071DE14  48 00 00 08 */	b lbl_8071DE1C
lbl_8071DE18:
/* 8071DE18  38 00 00 04 */	li r0, 4
lbl_8071DE1C:
/* 8071DE1C  2C 00 00 01 */	cmpwi r0, 1
/* 8071DE20  40 82 00 0C */	bne lbl_8071DE2C
/* 8071DE24  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8071DE28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8071DE2C:
/* 8071DE2C  A8 1D 05 F6 */	lha r0, 0x5f6(r29)
/* 8071DE30  2C 00 00 00 */	cmpwi r0, 0
/* 8071DE34  40 82 00 24 */	bne lbl_8071DE58
/* 8071DE38  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8071DE3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071DE40  40 80 00 18 */	bge lbl_8071DE58
/* 8071DE44  38 00 00 01 */	li r0, 1
/* 8071DE48  98 1D 06 00 */	stb r0, 0x600(r29)
/* 8071DE4C  38 00 00 03 */	li r0, 3
/* 8071DE50  98 1F 07 07 */	stb r0, 0x707(r31)
/* 8071DE54  48 00 00 18 */	b lbl_8071DE6C
lbl_8071DE58:
/* 8071DE58  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8071DE5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071DE60  40 80 00 0C */	bge lbl_8071DE6C
/* 8071DE64  38 00 00 02 */	li r0, 2
/* 8071DE68  98 1F 07 07 */	stb r0, 0x707(r31)
lbl_8071DE6C:
/* 8071DE6C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8071DE70  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8071DE74  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8071DE78  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8071DE7C  80 63 00 00 */	lwz r3, 0(r3)
/* 8071DE80  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8071DE84  4B 8E E5 59 */	bl mDoMtx_YrotS__FPA4_fs
/* 8071DE88  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8071DE8C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8071DE90  80 63 00 00 */	lwz r3, 0(r3)
/* 8071DE94  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 8071DE98  4B 8E E5 05 */	bl mDoMtx_XrotM__FPA4_fs
/* 8071DE9C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8071DEA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8071DEA4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8071DEA8  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8071DEAC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8071DEB0  38 61 00 1C */	addi r3, r1, 0x1c
/* 8071DEB4  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8071DEB8  4B B5 30 35 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8071DEBC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8071DEC0  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8071DEC4  7C 65 1B 78 */	mr r5, r3
/* 8071DEC8  4B C2 91 C9 */	bl PSVECAdd
/* 8071DECC  38 00 E8 00 */	li r0, -6144
/* 8071DED0  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 8071DED4  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 8071DED8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8071DEDC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8071DEE0  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8071DEE4  4B B5 1B 59 */	bl cLib_addCalc2__FPffff
/* 8071DEE8  38 60 00 02 */	li r3, 2
lbl_8071DEEC:
/* 8071DEEC  39 61 00 40 */	addi r11, r1, 0x40
/* 8071DEF0  4B C4 43 39 */	bl _restgpr_29
/* 8071DEF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8071DEF8  7C 08 03 A6 */	mtlr r0
/* 8071DEFC  38 21 00 40 */	addi r1, r1, 0x40
/* 8071DF00  4E 80 00 20 */	blr 
