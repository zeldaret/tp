lbl_80A8CA20:
/* 80A8CA20  94 21 FE 10 */	stwu r1, -0x1f0(r1)
/* 80A8CA24  7C 08 02 A6 */	mflr r0
/* 80A8CA28  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 80A8CA2C  DB E1 01 E0 */	stfd f31, 0x1e0(r1)
/* 80A8CA30  F3 E1 01 E8 */	psq_st f31, 488(r1), 0, 0 /* qr0 */
/* 80A8CA34  39 61 01 E0 */	addi r11, r1, 0x1e0
/* 80A8CA38  4B 8D 57 9C */	b _savegpr_27
/* 80A8CA3C  7C 7B 1B 78 */	mr r27, r3
/* 80A8CA40  7C 9C 23 78 */	mr r28, r4
/* 80A8CA44  3C 60 80 A9 */	lis r3, lit_3990@ha
/* 80A8CA48  3B C3 24 1C */	addi r30, r3, lit_3990@l
/* 80A8CA4C  C3 FE 00 18 */	lfs f31, 0x18(r30)
/* 80A8CA50  38 60 00 00 */	li r3, 0
/* 80A8CA54  7C 65 1B 78 */	mr r5, r3
/* 80A8CA58  38 81 00 30 */	addi r4, r1, 0x30
/* 80A8CA5C  38 00 00 64 */	li r0, 0x64
/* 80A8CA60  7C 09 03 A6 */	mtctr r0
lbl_80A8CA64:
/* 80A8CA64  7C A4 19 2E */	stwx r5, r4, r3
/* 80A8CA68  38 63 00 04 */	addi r3, r3, 4
/* 80A8CA6C  42 00 FF F8 */	bdnz lbl_80A8CA64
/* 80A8CA70  3B A0 00 00 */	li r29, 0
/* 80A8CA74  3C 60 80 A9 */	lis r3, home_path@ha
/* 80A8CA78  3B E3 25 F0 */	addi r31, r3, home_path@l
/* 80A8CA7C  48 00 01 BC */	b lbl_80A8CC38
lbl_80A8CA80:
/* 80A8CA80  57 A0 20 36 */	slwi r0, r29, 4
/* 80A8CA84  7C BF 02 14 */	add r5, r31, r0
/* 80A8CA88  80 85 00 00 */	lwz r4, 0(r5)
/* 80A8CA8C  2C 04 00 00 */	cmpwi r4, 0
/* 80A8CA90  41 80 01 84 */	blt lbl_80A8CC14
/* 80A8CA94  7C 04 E0 00 */	cmpw r4, r28
/* 80A8CA98  41 80 01 9C */	blt lbl_80A8CC34
/* 80A8CA9C  80 1B 06 FC */	lwz r0, 0x6fc(r27)
/* 80A8CAA0  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 80A8CAA4  41 82 00 20 */	beq lbl_80A8CAC4
/* 80A8CAA8  54 00 20 36 */	slwi r0, r0, 4
/* 80A8CAAC  3C 60 80 A9 */	lis r3, home_path@ha
/* 80A8CAB0  38 63 25 F0 */	addi r3, r3, home_path@l
/* 80A8CAB4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A8CAB8  38 04 00 01 */	addi r0, r4, 1
/* 80A8CABC  7C 03 00 00 */	cmpw r3, r0
/* 80A8CAC0  40 82 01 74 */	bne lbl_80A8CC34
lbl_80A8CAC4:
/* 80A8CAC4  57 A0 10 3A */	slwi r0, r29, 2
/* 80A8CAC8  38 61 00 30 */	addi r3, r1, 0x30
/* 80A8CACC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A8CAD0  2C 00 00 00 */	cmpwi r0, 0
/* 80A8CAD4  40 82 01 60 */	bne lbl_80A8CC34
/* 80A8CAD8  C0 05 00 04 */	lfs f0, 4(r5)
/* 80A8CADC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A8CAE0  C0 05 00 08 */	lfs f0, 8(r5)
/* 80A8CAE4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8CAE8  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80A8CAEC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A8CAF0  38 61 00 0C */	addi r3, r1, 0xc
/* 80A8CAF4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80A8CAF8  38 A1 00 18 */	addi r5, r1, 0x18
/* 80A8CAFC  4B 7D A0 38 */	b __mi__4cXyzCFRC3Vec
/* 80A8CB00  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A8CB04  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A8CB08  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A8CB0C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A8CB10  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A8CB14  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A8CB18  38 61 00 24 */	addi r3, r1, 0x24
/* 80A8CB1C  4B 8B A6 1C */	b PSVECSquareMag
/* 80A8CB20  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A8CB24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8CB28  40 81 00 58 */	ble lbl_80A8CB80
/* 80A8CB2C  FC 00 08 34 */	frsqrte f0, f1
/* 80A8CB30  C8 9E 00 C8 */	lfd f4, 0xc8(r30)
/* 80A8CB34  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8CB38  C8 7E 00 D0 */	lfd f3, 0xd0(r30)
/* 80A8CB3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8CB40  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8CB44  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8CB48  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8CB4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8CB50  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8CB54  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8CB58  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8CB5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8CB60  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8CB64  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8CB68  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8CB6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8CB70  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8CB74  FC 21 00 32 */	fmul f1, f1, f0
/* 80A8CB78  FC 20 08 18 */	frsp f1, f1
/* 80A8CB7C  48 00 00 88 */	b lbl_80A8CC04
lbl_80A8CB80:
/* 80A8CB80  C8 1E 00 D8 */	lfd f0, 0xd8(r30)
/* 80A8CB84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8CB88  40 80 00 10 */	bge lbl_80A8CB98
/* 80A8CB8C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A8CB90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A8CB94  48 00 00 70 */	b lbl_80A8CC04
lbl_80A8CB98:
/* 80A8CB98  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A8CB9C  80 81 00 08 */	lwz r4, 8(r1)
/* 80A8CBA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A8CBA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A8CBA8  7C 03 00 00 */	cmpw r3, r0
/* 80A8CBAC  41 82 00 14 */	beq lbl_80A8CBC0
/* 80A8CBB0  40 80 00 40 */	bge lbl_80A8CBF0
/* 80A8CBB4  2C 03 00 00 */	cmpwi r3, 0
/* 80A8CBB8  41 82 00 20 */	beq lbl_80A8CBD8
/* 80A8CBBC  48 00 00 34 */	b lbl_80A8CBF0
lbl_80A8CBC0:
/* 80A8CBC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8CBC4  41 82 00 0C */	beq lbl_80A8CBD0
/* 80A8CBC8  38 00 00 01 */	li r0, 1
/* 80A8CBCC  48 00 00 28 */	b lbl_80A8CBF4
lbl_80A8CBD0:
/* 80A8CBD0  38 00 00 02 */	li r0, 2
/* 80A8CBD4  48 00 00 20 */	b lbl_80A8CBF4
lbl_80A8CBD8:
/* 80A8CBD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8CBDC  41 82 00 0C */	beq lbl_80A8CBE8
/* 80A8CBE0  38 00 00 05 */	li r0, 5
/* 80A8CBE4  48 00 00 10 */	b lbl_80A8CBF4
lbl_80A8CBE8:
/* 80A8CBE8  38 00 00 03 */	li r0, 3
/* 80A8CBEC  48 00 00 08 */	b lbl_80A8CBF4
lbl_80A8CBF0:
/* 80A8CBF0  38 00 00 04 */	li r0, 4
lbl_80A8CBF4:
/* 80A8CBF4  2C 00 00 01 */	cmpwi r0, 1
/* 80A8CBF8  40 82 00 0C */	bne lbl_80A8CC04
/* 80A8CBFC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A8CC00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A8CC04:
/* 80A8CC04  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A8CC08  40 80 00 2C */	bge lbl_80A8CC34
/* 80A8CC0C  7F A3 EB 78 */	mr r3, r29
/* 80A8CC10  48 00 00 34 */	b lbl_80A8CC44
lbl_80A8CC14:
/* 80A8CC14  3B A0 FF FF */	li r29, -1
/* 80A8CC18  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80A8CC1C  EF FF 00 2A */	fadds f31, f31, f0
/* 80A8CC20  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80A8CC24  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A8CC28  40 81 00 0C */	ble lbl_80A8CC34
/* 80A8CC2C  38 60 FF FF */	li r3, -1
/* 80A8CC30  48 00 00 14 */	b lbl_80A8CC44
lbl_80A8CC34:
/* 80A8CC34  3B BD 00 01 */	addi r29, r29, 1
lbl_80A8CC38:
/* 80A8CC38  2C 1D 00 64 */	cmpwi r29, 0x64
/* 80A8CC3C  41 80 FE 44 */	blt lbl_80A8CA80
/* 80A8CC40  38 60 FF FF */	li r3, -1
lbl_80A8CC44:
/* 80A8CC44  E3 E1 01 E8 */	psq_l f31, 488(r1), 0, 0 /* qr0 */
/* 80A8CC48  CB E1 01 E0 */	lfd f31, 0x1e0(r1)
/* 80A8CC4C  39 61 01 E0 */	addi r11, r1, 0x1e0
/* 80A8CC50  4B 8D 55 D0 */	b _restgpr_27
/* 80A8CC54  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 80A8CC58  7C 08 03 A6 */	mtlr r0
/* 80A8CC5C  38 21 01 F0 */	addi r1, r1, 0x1f0
/* 80A8CC60  4E 80 00 20 */	blr 
