lbl_80C3A990:
/* 80C3A990  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C3A994  7C 08 02 A6 */	mflr r0
/* 80C3A998  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C3A99C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C3A9A0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C3A9A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C3A9A8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C3A9AC  7C 7F 1B 78 */	mr r31, r3
/* 80C3A9B0  C0 43 08 00 */	lfs f2, 0x800(r3)
/* 80C3A9B4  80 03 08 04 */	lwz r0, 0x804(r3)
/* 80C3A9B8  3C 60 80 C4 */	lis r3, lit_4258@ha /* 0x80C3C71C@ha */
/* 80C3A9BC  C8 23 C7 1C */	lfd f1, lit_4258@l(r3)  /* 0x80C3C71C@l */
/* 80C3A9C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C3A9C4  3C 00 43 30 */	lis r0, 0x4330
/* 80C3A9C8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C3A9CC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C3A9D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C3A9D4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C3A9D8  40 81 00 24 */	ble lbl_80C3A9FC
/* 80C3A9DC  38 7F 08 0C */	addi r3, r31, 0x80c
/* 80C3A9E0  3C 80 80 C4 */	lis r4, lit_3959@ha /* 0x80C3C6CC@ha */
/* 80C3A9E4  C0 24 C6 CC */	lfs f1, lit_3959@l(r4)  /* 0x80C3C6CC@l */
/* 80C3A9E8  3C 80 80 C4 */	lis r4, lit_3775@ha /* 0x80C3C674@ha */
/* 80C3A9EC  C0 44 C6 74 */	lfs f2, lit_3775@l(r4)  /* 0x80C3C674@l */
/* 80C3A9F0  FC 60 10 90 */	fmr f3, f2
/* 80C3A9F4  4B 63 50 49 */	bl cLib_addCalc2__FPffff
/* 80C3A9F8  48 00 00 1C */	b lbl_80C3AA14
lbl_80C3A9FC:
/* 80C3A9FC  38 7F 08 0C */	addi r3, r31, 0x80c
/* 80C3AA00  3C 80 80 C4 */	lis r4, lit_3775@ha /* 0x80C3C674@ha */
/* 80C3AA04  C0 24 C6 74 */	lfs f1, lit_3775@l(r4)  /* 0x80C3C674@l */
/* 80C3AA08  FC 40 08 90 */	fmr f2, f1
/* 80C3AA0C  FC 60 08 90 */	fmr f3, f1
/* 80C3AA10  4B 63 50 2D */	bl cLib_addCalc2__FPffff
lbl_80C3AA14:
/* 80C3AA14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3AA18  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3AA1C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C3AA20  38 00 00 FF */	li r0, 0xff
/* 80C3AA24  90 01 00 08 */	stw r0, 8(r1)
/* 80C3AA28  38 80 00 00 */	li r4, 0
/* 80C3AA2C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C3AA30  38 00 FF FF */	li r0, -1
/* 80C3AA34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C3AA38  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C3AA3C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C3AA40  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C3AA44  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C3AA48  38 A0 00 00 */	li r5, 0
/* 80C3AA4C  38 C0 0A 1B */	li r6, 0xa1b
/* 80C3AA50  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C3AA54  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C3AA58  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C3AA5C  39 40 00 00 */	li r10, 0
/* 80C3AA60  3D 60 80 C4 */	lis r11, lit_3775@ha /* 0x80C3C674@ha */
/* 80C3AA64  C0 2B C6 74 */	lfs f1, lit_3775@l(r11)  /* 0x80C3C674@l */
/* 80C3AA68  4B 41 2A 65 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C3AA6C  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C3AA70  C3 FF 08 0C */	lfs f31, 0x80c(r31)
/* 80C3AA74  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C3AA78  38 63 02 10 */	addi r3, r3, 0x210
/* 80C3AA7C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C3AA80  4B 41 0E 99 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80C3AA84  28 03 00 00 */	cmplwi r3, 0
/* 80C3AA88  41 82 00 0C */	beq lbl_80C3AA94
/* 80C3AA8C  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 80C3AA90  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_80C3AA94:
/* 80C3AA94  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C3AA98  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C3AA9C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C3AAA0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C3AAA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C3AAA8  7C 08 03 A6 */	mtlr r0
/* 80C3AAAC  38 21 00 40 */	addi r1, r1, 0x40
/* 80C3AAB0  4E 80 00 20 */	blr 
