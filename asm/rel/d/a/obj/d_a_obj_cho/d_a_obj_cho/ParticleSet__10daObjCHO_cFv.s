lbl_80BCB49C:
/* 80BCB49C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BCB4A0  7C 08 02 A6 */	mflr r0
/* 80BCB4A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BCB4A8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BCB4AC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BCB4B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BCB4B4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BCB4B8  7C 7F 1B 78 */	mr r31, r3
/* 80BCB4BC  C0 43 09 98 */	lfs f2, 0x998(r3)
/* 80BCB4C0  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80BCB4C4  3C 60 80 BD */	lis r3, lit_4300@ha
/* 80BCB4C8  C8 23 C6 58 */	lfd f1, lit_4300@l(r3)
/* 80BCB4CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BCB4D0  3C 00 43 30 */	lis r0, 0x4330
/* 80BCB4D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BCB4D8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BCB4DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BCB4E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BCB4E4  40 81 00 24 */	ble lbl_80BCB508
/* 80BCB4E8  38 7F 09 94 */	addi r3, r31, 0x994
/* 80BCB4EC  3C 80 80 BD */	lis r4, lit_3927@ha
/* 80BCB4F0  C0 24 C5 C4 */	lfs f1, lit_3927@l(r4)
/* 80BCB4F4  3C 80 80 BD */	lis r4, lit_3889@ha
/* 80BCB4F8  C0 44 C5 C0 */	lfs f2, lit_3889@l(r4)
/* 80BCB4FC  FC 60 10 90 */	fmr f3, f2
/* 80BCB500  4B 6A 45 3C */	b cLib_addCalc2__FPffff
/* 80BCB504  48 00 00 1C */	b lbl_80BCB520
lbl_80BCB508:
/* 80BCB508  38 7F 09 94 */	addi r3, r31, 0x994
/* 80BCB50C  3C 80 80 BD */	lis r4, lit_3889@ha
/* 80BCB510  C0 24 C5 C0 */	lfs f1, lit_3889@l(r4)
/* 80BCB514  FC 40 08 90 */	fmr f2, f1
/* 80BCB518  FC 60 08 90 */	fmr f3, f1
/* 80BCB51C  4B 6A 45 20 */	b cLib_addCalc2__FPffff
lbl_80BCB520:
/* 80BCB520  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BCB524  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80BCB528  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BCB52C  38 00 00 FF */	li r0, 0xff
/* 80BCB530  90 01 00 08 */	stw r0, 8(r1)
/* 80BCB534  38 80 00 00 */	li r4, 0
/* 80BCB538  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BCB53C  38 00 FF FF */	li r0, -1
/* 80BCB540  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BCB544  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BCB548  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BCB54C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BCB550  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BCB554  38 A0 00 00 */	li r5, 0
/* 80BCB558  38 C0 0A 1B */	li r6, 0xa1b
/* 80BCB55C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80BCB560  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80BCB564  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80BCB568  39 40 00 00 */	li r10, 0
/* 80BCB56C  3D 60 80 BD */	lis r11, lit_3889@ha
/* 80BCB570  C0 2B C5 C0 */	lfs f1, lit_3889@l(r11)
/* 80BCB574  4B 48 1F 58 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BCB578  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80BCB57C  C3 FF 09 94 */	lfs f31, 0x994(r31)
/* 80BCB580  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BCB584  38 63 02 10 */	addi r3, r3, 0x210
/* 80BCB588  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BCB58C  4B 48 03 8C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80BCB590  28 03 00 00 */	cmplwi r3, 0
/* 80BCB594  41 82 00 0C */	beq lbl_80BCB5A0
/* 80BCB598  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 80BCB59C  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_80BCB5A0:
/* 80BCB5A0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BCB5A4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BCB5A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BCB5AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BCB5B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BCB5B4  7C 08 03 A6 */	mtlr r0
/* 80BCB5B8  38 21 00 40 */	addi r1, r1, 0x40
/* 80BCB5BC  4E 80 00 20 */	blr 
