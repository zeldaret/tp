lbl_8094D60C:
/* 8094D60C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8094D610  7C 08 02 A6 */	mflr r0
/* 8094D614  90 01 00 24 */	stw r0, 0x24(r1)
/* 8094D618  39 61 00 20 */	addi r11, r1, 0x20
/* 8094D61C  4B A1 4B BD */	bl _savegpr_28
/* 8094D620  7C 7E 1B 78 */	mr r30, r3
/* 8094D624  3C 60 80 95 */	lis r3, lit_3958@ha /* 0x809511C0@ha */
/* 8094D628  3B E3 11 C0 */	addi r31, r3, lit_3958@l /* 0x809511C0@l */
/* 8094D62C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8094D630  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094D634  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094D638  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8094D63C  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 8094D640  38 A0 00 01 */	li r5, 1
/* 8094D644  38 C0 20 00 */	li r6, 0x2000
/* 8094D648  4B 92 2F C1 */	bl cLib_addCalcAngleS2__FPssss
/* 8094D64C  80 1E 08 B4 */	lwz r0, 0x8b4(r30)
/* 8094D650  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8094D654  90 1E 08 B4 */	stw r0, 0x8b4(r30)
/* 8094D658  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094D65C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8094D660  3B A0 00 00 */	li r29, 0
/* 8094D664  A8 1E 05 FC */	lha r0, 0x5fc(r30)
/* 8094D668  2C 00 00 01 */	cmpwi r0, 1
/* 8094D66C  41 82 00 38 */	beq lbl_8094D6A4
/* 8094D670  40 80 00 44 */	bge lbl_8094D6B4
/* 8094D674  2C 00 00 00 */	cmpwi r0, 0
/* 8094D678  40 80 00 08 */	bge lbl_8094D680
/* 8094D67C  48 00 00 38 */	b lbl_8094D6B4
lbl_8094D680:
/* 8094D680  7F C3 F3 78 */	mr r3, r30
/* 8094D684  38 80 00 09 */	li r4, 9
/* 8094D688  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094D68C  38 A0 00 02 */	li r5, 2
/* 8094D690  FC 40 08 90 */	fmr f2, f1
/* 8094D694  4B FF E6 15 */	bl anm_init__FP8ni_classifUcf
/* 8094D698  A8 7E 05 FC */	lha r3, 0x5fc(r30)
/* 8094D69C  38 03 00 01 */	addi r0, r3, 1
/* 8094D6A0  B0 1E 05 FC */	sth r0, 0x5fc(r30)
lbl_8094D6A4:
/* 8094D6A4  7F C3 F3 78 */	mr r3, r30
/* 8094D6A8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8094D6AC  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8094D6B0  4B FF E6 B9 */	bl hane_set__FP8ni_classff
lbl_8094D6B4:
/* 8094D6B4  3C 60 80 95 */	lis r3, l_HIO@ha /* 0x8095159C@ha */
/* 8094D6B8  38 63 15 9C */	addi r3, r3, l_HIO@l /* 0x8095159C@l */
/* 8094D6BC  88 03 00 38 */	lbz r0, 0x38(r3)
/* 8094D6C0  28 00 00 00 */	cmplwi r0, 0
/* 8094D6C4  41 82 00 58 */	beq lbl_8094D71C
/* 8094D6C8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 8094D6CC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8094D6D0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8094D6D4  7D 89 03 A6 */	mtctr r12
/* 8094D6D8  4E 80 04 21 */	bctrl 
/* 8094D6DC  28 03 00 00 */	cmplwi r3, 0
/* 8094D6E0  41 82 00 0C */	beq lbl_8094D6EC
/* 8094D6E4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8094D6E8  48 00 00 08 */	b lbl_8094D6F0
lbl_8094D6EC:
/* 8094D6EC  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
lbl_8094D6F0:
/* 8094D6F0  A8 1E 05 F8 */	lha r0, 0x5f8(r30)
/* 8094D6F4  1C 00 23 28 */	mulli r0, r0, 0x2328
/* 8094D6F8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8094D6FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8094D700  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8094D704  7C 03 04 2E */	lfsx f0, r3, r0
/* 8094D708  EC 01 00 32 */	fmuls f0, f1, f0
/* 8094D70C  FC 00 00 1E */	fctiwz f0, f0
/* 8094D710  D8 01 00 08 */	stfd f0, 8(r1)
/* 8094D714  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8094D718  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
lbl_8094D71C:
/* 8094D71C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8094D720  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8094D724  40 82 00 7C */	bne lbl_8094D7A0
/* 8094D728  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8094D72C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094D730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094D734  40 81 00 34 */	ble lbl_8094D768
/* 8094D738  38 80 00 00 */	li r4, 0
/* 8094D73C  B0 9E 05 FC */	sth r4, 0x5fc(r30)
/* 8094D740  3C 60 80 95 */	lis r3, l_HIO@ha /* 0x8095159C@ha */
/* 8094D744  38 63 15 9C */	addi r3, r3, l_HIO@l /* 0x8095159C@l */
/* 8094D748  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8094D74C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8094D750  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8094D754  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8094D758  38 00 00 04 */	li r0, 4
/* 8094D75C  B0 1E 05 FA */	sth r0, 0x5fa(r30)
/* 8094D760  B0 9E 05 FC */	sth r4, 0x5fc(r30)
/* 8094D764  48 00 00 30 */	b lbl_8094D794
lbl_8094D768:
/* 8094D768  88 1E 05 F0 */	lbz r0, 0x5f0(r30)
/* 8094D76C  2C 00 00 03 */	cmpwi r0, 3
/* 8094D770  40 82 00 14 */	bne lbl_8094D784
/* 8094D774  38 00 00 00 */	li r0, 0
/* 8094D778  B0 1E 05 FA */	sth r0, 0x5fa(r30)
/* 8094D77C  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8094D780  48 00 00 14 */	b lbl_8094D794
lbl_8094D784:
/* 8094D784  38 00 00 01 */	li r0, 1
/* 8094D788  B0 1E 05 FA */	sth r0, 0x5fa(r30)
/* 8094D78C  38 00 00 00 */	li r0, 0
/* 8094D790  B0 1E 05 FC */	sth r0, 0x5fc(r30)
lbl_8094D794:
/* 8094D794  7F C3 F3 78 */	mr r3, r30
/* 8094D798  4B 6C FA 65 */	bl fopAcM_carryOffRevise__FP10fopAc_ac_c
/* 8094D79C  3B A0 00 01 */	li r29, 1
lbl_8094D7A0:
/* 8094D7A0  7F A3 EB 78 */	mr r3, r29
/* 8094D7A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8094D7A8  4B A1 4A 7D */	bl _restgpr_28
/* 8094D7AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8094D7B0  7C 08 03 A6 */	mtlr r0
/* 8094D7B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8094D7B8  4E 80 00 20 */	blr 
