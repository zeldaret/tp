lbl_80C2CADC:
/* 80C2CADC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C2CAE0  7C 08 02 A6 */	mflr r0
/* 80C2CAE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C2CAE8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C2CAEC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C2CAF0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C2CAF4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C2CAF8  7C 7F 1B 78 */	mr r31, r3
/* 80C2CAFC  C0 43 07 78 */	lfs f2, 0x778(r3)
/* 80C2CB00  80 03 07 7C */	lwz r0, 0x77c(r3)
/* 80C2CB04  3C 60 80 C3 */	lis r3, lit_4545@ha
/* 80C2CB08  C8 23 E1 F0 */	lfd f1, lit_4545@l(r3)
/* 80C2CB0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C2CB10  3C 00 43 30 */	lis r0, 0x4330
/* 80C2CB14  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C2CB18  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C2CB1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C2CB20  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C2CB24  40 81 00 20 */	ble lbl_80C2CB44
/* 80C2CB28  38 7F 07 80 */	addi r3, r31, 0x780
/* 80C2CB2C  3C 80 80 C3 */	lis r4, lit_3933@ha
/* 80C2CB30  C0 24 E1 64 */	lfs f1, lit_3933@l(r4)
/* 80C2CB34  3C 80 80 C3 */	lis r4, lit_3896@ha
/* 80C2CB38  C0 44 E1 60 */	lfs f2, lit_3896@l(r4)
/* 80C2CB3C  4B 64 3C 04 */	b cLib_chaseF__FPfff
/* 80C2CB40  48 00 00 18 */	b lbl_80C2CB58
lbl_80C2CB44:
/* 80C2CB44  38 7F 07 80 */	addi r3, r31, 0x780
/* 80C2CB48  C0 3F 07 84 */	lfs f1, 0x784(r31)
/* 80C2CB4C  3C 80 80 C3 */	lis r4, lit_3896@ha
/* 80C2CB50  C0 44 E1 60 */	lfs f2, lit_3896@l(r4)
/* 80C2CB54  4B 64 3B EC */	b cLib_chaseF__FPfff
lbl_80C2CB58:
/* 80C2CB58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2CB5C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80C2CB60  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C2CB64  38 00 00 FF */	li r0, 0xff
/* 80C2CB68  90 01 00 08 */	stw r0, 8(r1)
/* 80C2CB6C  38 80 00 00 */	li r4, 0
/* 80C2CB70  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C2CB74  38 00 FF FF */	li r0, -1
/* 80C2CB78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C2CB7C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C2CB80  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C2CB84  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C2CB88  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C2CB8C  38 A0 00 00 */	li r5, 0
/* 80C2CB90  38 C0 0A 1B */	li r6, 0xa1b
/* 80C2CB94  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C2CB98  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C2CB9C  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C2CBA0  39 40 00 00 */	li r10, 0
/* 80C2CBA4  3D 60 80 C3 */	lis r11, lit_3896@ha
/* 80C2CBA8  C0 2B E1 60 */	lfs f1, lit_3896@l(r11)
/* 80C2CBAC  4B 42 09 20 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C2CBB0  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C2CBB4  C3 FF 07 80 */	lfs f31, 0x780(r31)
/* 80C2CBB8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C2CBBC  38 63 02 10 */	addi r3, r3, 0x210
/* 80C2CBC0  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C2CBC4  4B 41 ED 54 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80C2CBC8  28 03 00 00 */	cmplwi r3, 0
/* 80C2CBCC  41 82 00 0C */	beq lbl_80C2CBD8
/* 80C2CBD0  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 80C2CBD4  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_80C2CBD8:
/* 80C2CBD8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C2CBDC  38 63 02 10 */	addi r3, r3, 0x210
/* 80C2CBE0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C2CBE4  4B 41 ED 34 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80C2CBE8  28 03 00 00 */	cmplwi r3, 0
/* 80C2CBEC  41 82 00 0C */	beq lbl_80C2CBF8
/* 80C2CBF0  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 80C2CBF4  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_80C2CBF8:
/* 80C2CBF8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C2CBFC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C2CC00  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C2CC04  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C2CC08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C2CC0C  7C 08 03 A6 */	mtlr r0
/* 80C2CC10  38 21 00 40 */	addi r1, r1, 0x40
/* 80C2CC14  4E 80 00 20 */	blr 
