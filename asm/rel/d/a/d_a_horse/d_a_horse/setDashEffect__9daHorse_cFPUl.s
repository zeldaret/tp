lbl_8083DC58:
/* 8083DC58  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8083DC5C  7C 08 02 A6 */	mflr r0
/* 8083DC60  90 01 00 54 */	stw r0, 0x54(r1)
/* 8083DC64  39 61 00 50 */	addi r11, r1, 0x50
/* 8083DC68  4B B2 45 6D */	bl _savegpr_27
/* 8083DC6C  7C 7B 1B 78 */	mr r27, r3
/* 8083DC70  7C 9C 23 78 */	mr r28, r4
/* 8083DC74  3C 60 80 84 */	lis r3, lit_3894@ha /* 0x808454AC@ha */
/* 8083DC78  3B E3 54 AC */	addi r31, r3, lit_3894@l /* 0x808454AC@l */
/* 8083DC7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083DC80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083DC84  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8083DC88  7C 00 07 74 */	extsb r0, r0
/* 8083DC8C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8083DC90  7C 63 02 14 */	add r3, r3, r0
/* 8083DC94  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 8083DC98  3B BE 00 D8 */	addi r29, r30, 0xd8
/* 8083DC9C  7F A3 EB 78 */	mr r3, r29
/* 8083DCA0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8083DCA4  4B B0 96 F9 */	bl PSVECSquareDistance
/* 8083DCA8  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083DCAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083DCB0  40 81 00 58 */	ble lbl_8083DD08
/* 8083DCB4  FC 00 08 34 */	frsqrte f0, f1
/* 8083DCB8  C8 9F 01 60 */	lfd f4, 0x160(r31)
/* 8083DCBC  FC 44 00 32 */	fmul f2, f4, f0
/* 8083DCC0  C8 7F 01 68 */	lfd f3, 0x168(r31)
/* 8083DCC4  FC 00 00 32 */	fmul f0, f0, f0
/* 8083DCC8  FC 01 00 32 */	fmul f0, f1, f0
/* 8083DCCC  FC 03 00 28 */	fsub f0, f3, f0
/* 8083DCD0  FC 02 00 32 */	fmul f0, f2, f0
/* 8083DCD4  FC 44 00 32 */	fmul f2, f4, f0
/* 8083DCD8  FC 00 00 32 */	fmul f0, f0, f0
/* 8083DCDC  FC 01 00 32 */	fmul f0, f1, f0
/* 8083DCE0  FC 03 00 28 */	fsub f0, f3, f0
/* 8083DCE4  FC 02 00 32 */	fmul f0, f2, f0
/* 8083DCE8  FC 44 00 32 */	fmul f2, f4, f0
/* 8083DCEC  FC 00 00 32 */	fmul f0, f0, f0
/* 8083DCF0  FC 01 00 32 */	fmul f0, f1, f0
/* 8083DCF4  FC 03 00 28 */	fsub f0, f3, f0
/* 8083DCF8  FC 02 00 32 */	fmul f0, f2, f0
/* 8083DCFC  FC 21 00 32 */	fmul f1, f1, f0
/* 8083DD00  FC 20 08 18 */	frsp f1, f1
/* 8083DD04  48 00 00 88 */	b lbl_8083DD8C
lbl_8083DD08:
/* 8083DD08  C8 1F 01 70 */	lfd f0, 0x170(r31)
/* 8083DD0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083DD10  40 80 00 10 */	bge lbl_8083DD20
/* 8083DD14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8083DD18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8083DD1C  48 00 00 70 */	b lbl_8083DD8C
lbl_8083DD20:
/* 8083DD20  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8083DD24  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8083DD28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8083DD2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8083DD30  7C 03 00 00 */	cmpw r3, r0
/* 8083DD34  41 82 00 14 */	beq lbl_8083DD48
/* 8083DD38  40 80 00 40 */	bge lbl_8083DD78
/* 8083DD3C  2C 03 00 00 */	cmpwi r3, 0
/* 8083DD40  41 82 00 20 */	beq lbl_8083DD60
/* 8083DD44  48 00 00 34 */	b lbl_8083DD78
lbl_8083DD48:
/* 8083DD48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8083DD4C  41 82 00 0C */	beq lbl_8083DD58
/* 8083DD50  38 00 00 01 */	li r0, 1
/* 8083DD54  48 00 00 28 */	b lbl_8083DD7C
lbl_8083DD58:
/* 8083DD58  38 00 00 02 */	li r0, 2
/* 8083DD5C  48 00 00 20 */	b lbl_8083DD7C
lbl_8083DD60:
/* 8083DD60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8083DD64  41 82 00 0C */	beq lbl_8083DD70
/* 8083DD68  38 00 00 05 */	li r0, 5
/* 8083DD6C  48 00 00 10 */	b lbl_8083DD7C
lbl_8083DD70:
/* 8083DD70  38 00 00 03 */	li r0, 3
/* 8083DD74  48 00 00 08 */	b lbl_8083DD7C
lbl_8083DD78:
/* 8083DD78  38 00 00 04 */	li r0, 4
lbl_8083DD7C:
/* 8083DD7C  2C 00 00 01 */	cmpwi r0, 1
/* 8083DD80  40 82 00 0C */	bne lbl_8083DD8C
/* 8083DD84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8083DD88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8083DD8C:
/* 8083DD8C  C0 1F 02 58 */	lfs f0, 0x258(r31)
/* 8083DD90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083DD94  41 81 01 40 */	bgt lbl_8083DED4
/* 8083DD98  A8 DE 02 32 */	lha r6, 0x232(r30)
/* 8083DD9C  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 8083DDA0  7C 06 28 50 */	subf r0, r6, r5
/* 8083DDA4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8083DDA8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8083DDAC  39 04 00 04 */	addi r8, r4, 4
/* 8083DDB0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8083DDB4  7C 00 1E 70 */	srawi r0, r0, 3
/* 8083DDB8  54 00 18 38 */	slwi r0, r0, 3
/* 8083DDBC  7C 08 04 2E */	lfsx f0, r8, r0
/* 8083DDC0  FC 00 02 10 */	fabs f0, f0
/* 8083DDC4  FC 40 00 18 */	frsp f2, f0
/* 8083DDC8  7C 04 04 2E */	lfsx f0, r4, r0
/* 8083DDCC  FC 00 02 10 */	fabs f0, f0
/* 8083DDD0  FC 20 00 18 */	frsp f1, f0
/* 8083DDD4  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 8083DDD8  EC 20 00 72 */	fmuls f1, f0, f1
/* 8083DDDC  C0 1F 02 5C */	lfs f0, 0x25c(r31)
/* 8083DDE0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8083DDE4  EC 41 00 2A */	fadds f2, f1, f0
/* 8083DDE8  A8 FE 02 30 */	lha r7, 0x230(r30)
/* 8083DDEC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8083DDF0  7C 00 1E 70 */	srawi r0, r0, 3
/* 8083DDF4  54 00 18 38 */	slwi r0, r0, 3
/* 8083DDF8  7C 08 04 2E */	lfsx f0, r8, r0
/* 8083DDFC  EC 62 00 32 */	fmuls f3, f2, f0
/* 8083DE00  80 7F 02 44 */	lwz r3, 0x244(r31)
/* 8083DE04  80 1F 02 48 */	lwz r0, 0x248(r31)
/* 8083DE08  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8083DE0C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8083DE10  80 1F 02 4C */	lwz r0, 0x24c(r31)
/* 8083DE14  90 01 00 34 */	stw r0, 0x34(r1)
/* 8083DE18  54 C0 04 38 */	rlwinm r0, r6, 0, 0x10, 0x1c
/* 8083DE1C  7C 04 04 2E */	lfsx f0, r4, r0
/* 8083DE20  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8083DE24  EC 03 00 32 */	fmuls f0, f3, f0
/* 8083DE28  EC 01 00 2A */	fadds f0, f1, f0
/* 8083DE2C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8083DE30  7C 07 00 D0 */	neg r0, r7
/* 8083DE34  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8083DE38  7C 04 04 2E */	lfsx f0, r4, r0
/* 8083DE3C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8083DE40  EC 02 00 32 */	fmuls f0, f2, f0
/* 8083DE44  EC 01 00 2A */	fadds f0, f1, f0
/* 8083DE48  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8083DE4C  54 C0 04 38 */	rlwinm r0, r6, 0, 0x10, 0x1c
/* 8083DE50  7C 08 04 2E */	lfsx f0, r8, r0
/* 8083DE54  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8083DE58  EC 03 00 32 */	fmuls f0, f3, f0
/* 8083DE5C  EC 01 00 2A */	fadds f0, f1, f0
/* 8083DE60  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8083DE64  80 1F 02 50 */	lwz r0, 0x250(r31)
/* 8083DE68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8083DE6C  A0 1F 02 54 */	lhz r0, 0x254(r31)
/* 8083DE70  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8083DE74  B0 A1 00 26 */	sth r5, 0x26(r1)
/* 8083DE78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083DE7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083DE80  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8083DE84  38 00 00 FF */	li r0, 0xff
/* 8083DE88  90 01 00 08 */	stw r0, 8(r1)
/* 8083DE8C  38 80 00 00 */	li r4, 0
/* 8083DE90  90 81 00 0C */	stw r4, 0xc(r1)
/* 8083DE94  38 00 FF FF */	li r0, -1
/* 8083DE98  90 01 00 10 */	stw r0, 0x10(r1)
/* 8083DE9C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8083DEA0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8083DEA4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8083DEA8  80 9C 00 00 */	lwz r4, 0(r28)
/* 8083DEAC  38 A0 00 00 */	li r5, 0
/* 8083DEB0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008657@ha */
/* 8083DEB4  38 C6 86 57 */	addi r6, r6, 0x8657 /* 0x00008657@l */
/* 8083DEB8  38 E1 00 2C */	addi r7, r1, 0x2c
/* 8083DEBC  39 1B 01 0C */	addi r8, r27, 0x10c
/* 8083DEC0  39 21 00 24 */	addi r9, r1, 0x24
/* 8083DEC4  39 40 00 00 */	li r10, 0
/* 8083DEC8  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8083DECC  4B 80 F6 01 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8083DED0  90 7C 00 00 */	stw r3, 0(r28)
lbl_8083DED4:
/* 8083DED4  39 61 00 50 */	addi r11, r1, 0x50
/* 8083DED8  4B B2 43 49 */	bl _restgpr_27
/* 8083DEDC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8083DEE0  7C 08 03 A6 */	mtlr r0
/* 8083DEE4  38 21 00 50 */	addi r1, r1, 0x50
/* 8083DEE8  4E 80 00 20 */	blr 
