lbl_80C4BE9C:
/* 80C4BE9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C4BEA0  7C 08 02 A6 */	mflr r0
/* 80C4BEA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C4BEA8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C4BEAC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C4BEB0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C4BEB4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C4BEB8  7C 7F 1B 78 */	mr r31, r3
/* 80C4BEBC  C0 43 09 B8 */	lfs f2, 0x9b8(r3)
/* 80C4BEC0  80 03 09 BC */	lwz r0, 0x9bc(r3)
/* 80C4BEC4  3C 60 80 C5 */	lis r3, lit_4517@ha /* 0x80C4D560@ha */
/* 80C4BEC8  C8 23 D5 60 */	lfd f1, lit_4517@l(r3)  /* 0x80C4D560@l */
/* 80C4BECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C4BED0  3C 00 43 30 */	lis r0, 0x4330
/* 80C4BED4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C4BED8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C4BEDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C4BEE0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C4BEE4  40 81 00 24 */	ble lbl_80C4BF08
/* 80C4BEE8  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80C4BEEC  3C 80 80 C5 */	lis r4, lit_3932@ha /* 0x80C4D4E0@ha */
/* 80C4BEF0  C0 24 D4 E0 */	lfs f1, lit_3932@l(r4)  /* 0x80C4D4E0@l */
/* 80C4BEF4  3C 80 80 C5 */	lis r4, lit_3895@ha /* 0x80C4D4DC@ha */
/* 80C4BEF8  C0 44 D4 DC */	lfs f2, lit_3895@l(r4)  /* 0x80C4D4DC@l */
/* 80C4BEFC  FC 60 10 90 */	fmr f3, f2
/* 80C4BF00  4B 62 3B 3D */	bl cLib_addCalc2__FPffff
/* 80C4BF04  48 00 00 1C */	b lbl_80C4BF20
lbl_80C4BF08:
/* 80C4BF08  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80C4BF0C  C0 3F 09 AC */	lfs f1, 0x9ac(r31)
/* 80C4BF10  3C 80 80 C5 */	lis r4, lit_3895@ha /* 0x80C4D4DC@ha */
/* 80C4BF14  C0 44 D4 DC */	lfs f2, lit_3895@l(r4)  /* 0x80C4D4DC@l */
/* 80C4BF18  FC 60 10 90 */	fmr f3, f2
/* 80C4BF1C  4B 62 3B 21 */	bl cLib_addCalc2__FPffff
lbl_80C4BF20:
/* 80C4BF20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4BF24  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4BF28  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C4BF2C  38 00 00 FF */	li r0, 0xff
/* 80C4BF30  90 01 00 08 */	stw r0, 8(r1)
/* 80C4BF34  38 80 00 00 */	li r4, 0
/* 80C4BF38  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C4BF3C  38 00 FF FF */	li r0, -1
/* 80C4BF40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C4BF44  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C4BF48  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C4BF4C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C4BF50  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C4BF54  38 A0 00 00 */	li r5, 0
/* 80C4BF58  38 C0 0A 1B */	li r6, 0xa1b
/* 80C4BF5C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C4BF60  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C4BF64  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C4BF68  39 40 00 00 */	li r10, 0
/* 80C4BF6C  3D 60 80 C5 */	lis r11, lit_3895@ha /* 0x80C4D4DC@ha */
/* 80C4BF70  C0 2B D4 DC */	lfs f1, lit_3895@l(r11)  /* 0x80C4D4DC@l */
/* 80C4BF74  4B 40 15 59 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C4BF78  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C4BF7C  C3 FF 09 A8 */	lfs f31, 0x9a8(r31)
/* 80C4BF80  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C4BF84  38 63 02 10 */	addi r3, r3, 0x210
/* 80C4BF88  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C4BF8C  4B 3F F9 8D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80C4BF90  28 03 00 00 */	cmplwi r3, 0
/* 80C4BF94  41 82 00 0C */	beq lbl_80C4BFA0
/* 80C4BF98  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 80C4BF9C  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_80C4BFA0:
/* 80C4BFA0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C4BFA4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C4BFA8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C4BFAC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C4BFB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C4BFB4  7C 08 03 A6 */	mtlr r0
/* 80C4BFB8  38 21 00 40 */	addi r1, r1, 0x40
/* 80C4BFBC  4E 80 00 20 */	blr 
