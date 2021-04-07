lbl_80C36E34:
/* 80C36E34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C36E38  7C 08 02 A6 */	mflr r0
/* 80C36E3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C36E40  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C36E44  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C36E48  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C36E4C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C36E50  7C 7F 1B 78 */	mr r31, r3
/* 80C36E54  C0 43 09 B8 */	lfs f2, 0x9b8(r3)
/* 80C36E58  80 03 09 BC */	lwz r0, 0x9bc(r3)
/* 80C36E5C  3C 60 80 C4 */	lis r3, lit_4516@ha /* 0x80C384D0@ha */
/* 80C36E60  C8 23 84 D0 */	lfd f1, lit_4516@l(r3)  /* 0x80C384D0@l */
/* 80C36E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C36E68  3C 00 43 30 */	lis r0, 0x4330
/* 80C36E6C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C36E70  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C36E74  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C36E78  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C36E7C  40 81 00 24 */	ble lbl_80C36EA0
/* 80C36E80  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80C36E84  3C 80 80 C4 */	lis r4, lit_3932@ha /* 0x80C38458@ha */
/* 80C36E88  C0 24 84 58 */	lfs f1, lit_3932@l(r4)  /* 0x80C38458@l */
/* 80C36E8C  3C 80 80 C4 */	lis r4, lit_3895@ha /* 0x80C38454@ha */
/* 80C36E90  C0 44 84 54 */	lfs f2, lit_3895@l(r4)  /* 0x80C38454@l */
/* 80C36E94  FC 60 10 90 */	fmr f3, f2
/* 80C36E98  4B 63 8B A5 */	bl cLib_addCalc2__FPffff
/* 80C36E9C  48 00 00 1C */	b lbl_80C36EB8
lbl_80C36EA0:
/* 80C36EA0  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80C36EA4  C0 3F 09 AC */	lfs f1, 0x9ac(r31)
/* 80C36EA8  3C 80 80 C4 */	lis r4, lit_3895@ha /* 0x80C38454@ha */
/* 80C36EAC  C0 44 84 54 */	lfs f2, lit_3895@l(r4)  /* 0x80C38454@l */
/* 80C36EB0  FC 60 10 90 */	fmr f3, f2
/* 80C36EB4  4B 63 8B 89 */	bl cLib_addCalc2__FPffff
lbl_80C36EB8:
/* 80C36EB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C36EBC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C36EC0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C36EC4  38 00 00 FF */	li r0, 0xff
/* 80C36EC8  90 01 00 08 */	stw r0, 8(r1)
/* 80C36ECC  38 80 00 00 */	li r4, 0
/* 80C36ED0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C36ED4  38 00 FF FF */	li r0, -1
/* 80C36ED8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C36EDC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C36EE0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C36EE4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C36EE8  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C36EEC  38 A0 00 00 */	li r5, 0
/* 80C36EF0  38 C0 0A 1B */	li r6, 0xa1b
/* 80C36EF4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C36EF8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C36EFC  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C36F00  39 40 00 00 */	li r10, 0
/* 80C36F04  3D 60 80 C4 */	lis r11, lit_3895@ha /* 0x80C38454@ha */
/* 80C36F08  C0 2B 84 54 */	lfs f1, lit_3895@l(r11)  /* 0x80C38454@l */
/* 80C36F0C  4B 41 65 C1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C36F10  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C36F14  C3 FF 09 A8 */	lfs f31, 0x9a8(r31)
/* 80C36F18  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C36F1C  38 63 02 10 */	addi r3, r3, 0x210
/* 80C36F20  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C36F24  4B 41 49 F5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80C36F28  28 03 00 00 */	cmplwi r3, 0
/* 80C36F2C  41 82 00 0C */	beq lbl_80C36F38
/* 80C36F30  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 80C36F34  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_80C36F38:
/* 80C36F38  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C36F3C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C36F40  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C36F44  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C36F48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C36F4C  7C 08 03 A6 */	mtlr r0
/* 80C36F50  38 21 00 40 */	addi r1, r1, 0x40
/* 80C36F54  4E 80 00 20 */	blr 
