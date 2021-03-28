lbl_8001AAE0:
/* 8001AAE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001AAE4  7C 08 02 A6 */	mflr r0
/* 8001AAE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001AAEC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8001AAF0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8001AAF4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8001AAF8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8001AAFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8001AB00  48 34 76 D5 */	bl _savegpr_27
/* 8001AB04  7C 7B 1B 78 */	mr r27, r3
/* 8001AB08  7C 9C 23 78 */	mr r28, r4
/* 8001AB0C  7C BD 2B 78 */	mr r29, r5
/* 8001AB10  FF C0 20 90 */	fmr f30, f4
/* 8001AB14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001AB18  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8001AB1C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8001AB20  7C 9E 23 78 */	mr r30, r4
/* 8001AB24  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8001AB28  7C 04 18 40 */	cmplw r4, r3
/* 8001AB2C  41 82 00 0C */	beq lbl_8001AB38
/* 8001AB30  38 60 00 00 */	li r3, 0
/* 8001AB34  48 00 00 E4 */	b lbl_8001AC18
lbl_8001AB38:
/* 8001AB38  C0 02 82 20 */	lfs f0, lit_4922(r2)
/* 8001AB3C  EF E0 08 2A */	fadds f31, f0, f1
/* 8001AB40  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8001AB44  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8001AB48  41 82 00 0C */	beq lbl_8001AB54
/* 8001AB4C  C0 02 82 24 */	lfs f0, lit_4923(r2)
/* 8001AB50  EF FF 00 2A */	fadds f31, f31, f0
lbl_8001AB54:
/* 8001AB54  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 8001AB58  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8001AB5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001AB60  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8001AB64  40 81 00 B0 */	ble lbl_8001AC14
/* 8001AB68  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8001AB6C  40 80 00 A8 */	bge lbl_8001AC14
/* 8001AB70  7F C3 F3 78 */	mr r3, r30
/* 8001AB74  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8001AB78  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8001AB7C  7D 89 03 A6 */	mtctr r12
/* 8001AB80  4E 80 04 21 */	bctrl 
/* 8001AB84  2C 03 00 00 */	cmpwi r3, 0
/* 8001AB88  40 82 00 20 */	bne lbl_8001ABA8
/* 8001AB8C  7F C3 F3 78 */	mr r3, r30
/* 8001AB90  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8001AB94  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8001AB98  7D 89 03 A6 */	mtctr r12
/* 8001AB9C  4E 80 04 21 */	bctrl 
/* 8001ABA0  2C 03 00 00 */	cmpwi r3, 0
/* 8001ABA4  41 82 00 70 */	beq lbl_8001AC14
lbl_8001ABA8:
/* 8001ABA8  7F 63 DB 78 */	mr r3, r27
/* 8001ABAC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8001ABB0  4B FF FE E5 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8001ABB4  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 8001ABB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001ABBC  40 80 00 58 */	bge lbl_8001AC14
/* 8001ABC0  7F 63 DB 78 */	mr r3, r27
/* 8001ABC4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8001ABC8  4B FF FB 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8001ABCC  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 8001ABD0  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 8001ABD4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8001ABD8  7C 03 00 50 */	subf r0, r3, r0
/* 8001ABDC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8001ABE0  7C 64 02 14 */	add r3, r4, r0
/* 8001ABE4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001ABE8  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8001ABEC  40 80 00 28 */	bge lbl_8001AC14
/* 8001ABF0  7F C3 F3 78 */	mr r3, r30
/* 8001ABF4  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 8001ABF8  7F A5 EB 78 */	mr r5, r29
/* 8001ABFC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8001AC00  81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8001AC04  7D 89 03 A6 */	mtctr r12
/* 8001AC08  4E 80 04 21 */	bctrl 
/* 8001AC0C  38 60 00 01 */	li r3, 1
/* 8001AC10  48 00 00 08 */	b lbl_8001AC18
lbl_8001AC14:
/* 8001AC14  38 60 00 00 */	li r3, 0
lbl_8001AC18:
/* 8001AC18  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8001AC1C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8001AC20  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8001AC24  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8001AC28  39 61 00 20 */	addi r11, r1, 0x20
/* 8001AC2C  48 34 75 F5 */	bl _restgpr_27
/* 8001AC30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001AC34  7C 08 03 A6 */	mtlr r0
/* 8001AC38  38 21 00 40 */	addi r1, r1, 0x40
/* 8001AC3C  4E 80 00 20 */	blr 
