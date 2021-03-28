lbl_802C7E68:
/* 802C7E68  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C7E6C  7C 08 02 A6 */	mflr r0
/* 802C7E70  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C7E74  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802C7E78  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802C7E7C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802C7E80  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 802C7E84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C7E88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C7E8C  7C 7E 1B 78 */	mr r30, r3
/* 802C7E90  7C BF 2B 78 */	mr r31, r5
/* 802C7E94  88 03 00 7C */	lbz r0, 0x7c(r3)
/* 802C7E98  7C 00 07 75 */	extsb. r0, r0
/* 802C7E9C  40 80 00 60 */	bge lbl_802C7EFC
/* 802C7EA0  90 9E 01 10 */	stw r4, 0x110(r30)
/* 802C7EA4  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090029@ha */
/* 802C7EA8  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00090029@l */
/* 802C7EAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C7EB0  38 7E 01 10 */	addi r3, r30, 0x110
/* 802C7EB4  38 81 00 0C */	addi r4, r1, 0xc
/* 802C7EB8  7F E0 07 74 */	extsb r0, r31
/* 802C7EBC  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C7EC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C7EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C7EC8  3C 00 43 30 */	lis r0, 0x4330
/* 802C7ECC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C7ED0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C7ED4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C7ED8  C0 02 C3 F4 */	lfs f0, lit_4260(r2)
/* 802C7EDC  EC 21 00 24 */	fdivs f1, f1, f0
/* 802C7EE0  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C7EE4  C0 62 C3 60 */	lfs f3, lit_3574(r2)
/* 802C7EE8  C0 82 C3 48 */	lfs f4, lit_3503(r2)
/* 802C7EEC  FC A0 10 90 */	fmr f5, f2
/* 802C7EF0  38 A0 00 00 */	li r5, 0
/* 802C7EF4  4B FF DA 15 */	bl startEnvSe__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C7EF8  48 00 00 94 */	b lbl_802C7F8C
lbl_802C7EFC:
/* 802C7EFC  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 802C7F00  C3 C2 C3 44 */	lfs f30, lit_3502(r2)
/* 802C7F04  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802C7F08  40 81 00 08 */	ble lbl_802C7F10
/* 802C7F0C  48 00 00 18 */	b lbl_802C7F24
lbl_802C7F10:
/* 802C7F10  C3 C2 C3 48 */	lfs f30, lit_3503(r2)
/* 802C7F14  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802C7F18  40 80 00 08 */	bge lbl_802C7F20
/* 802C7F1C  48 00 00 08 */	b lbl_802C7F24
lbl_802C7F20:
/* 802C7F20  FF C0 00 90 */	fmr f30, f0
lbl_802C7F24:
/* 802C7F24  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009002B@ha */
/* 802C7F28  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0009002B@l */
/* 802C7F2C  90 01 00 08 */	stw r0, 8(r1)
/* 802C7F30  38 7E 00 64 */	addi r3, r30, 0x64
/* 802C7F34  4B FE 6E 8D */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802C7F38  FF E0 08 90 */	fmr f31, f1
/* 802C7F3C  38 7E 00 64 */	addi r3, r30, 0x64
/* 802C7F40  4B FE 6D A1 */	bl getPanPower__12Z2MultiSeMgrFv
/* 802C7F44  FC 60 08 90 */	fmr f3, f1
/* 802C7F48  38 7E 01 10 */	addi r3, r30, 0x110
/* 802C7F4C  38 81 00 08 */	addi r4, r1, 8
/* 802C7F50  7F E0 07 74 */	extsb r0, r31
/* 802C7F54  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C7F58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C7F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C7F60  3C 00 43 30 */	lis r0, 0x4330
/* 802C7F64  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C7F68  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C7F6C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C7F70  C0 02 C3 F4 */	lfs f0, lit_4260(r2)
/* 802C7F74  EC 21 00 24 */	fdivs f1, f1, f0
/* 802C7F78  FC 40 F0 90 */	fmr f2, f30
/* 802C7F7C  FC 80 F8 90 */	fmr f4, f31
/* 802C7F80  C0 A2 C3 44 */	lfs f5, lit_3502(r2)
/* 802C7F84  38 A0 00 00 */	li r5, 0
/* 802C7F88  4B FF D9 81 */	bl startEnvSe__11Z2EnvSeBaseF10JAISoundIDfffffUl
lbl_802C7F8C:
/* 802C7F8C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802C7F90  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802C7F94  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 802C7F98  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802C7F9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C7FA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C7FA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C7FA8  7C 08 03 A6 */	mtlr r0
/* 802C7FAC  38 21 00 40 */	addi r1, r1, 0x40
/* 802C7FB0  4E 80 00 20 */	blr 
