lbl_80838AC4:
/* 80838AC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80838AC8  7C 08 02 A6 */	mflr r0
/* 80838ACC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80838AD0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80838AD4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80838AD8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80838ADC  7C 7F 1B 78 */	mr r31, r3
/* 80838AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80838AE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80838AE8  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 80838AEC  C3 E4 00 00 */	lfs f31, 0(r4)
/* 80838AF0  88 1F 04 96 */	lbz r0, 0x496(r31)
/* 80838AF4  28 00 00 02 */	cmplwi r0, 2
/* 80838AF8  40 82 00 60 */	bne lbl_80838B58
/* 80838AFC  A8 1F 00 08 */	lha r0, 8(r31)
/* 80838B00  2C 00 01 FD */	cmpwi r0, 0x1fd
/* 80838B04  41 82 00 54 */	beq lbl_80838B58
/* 80838B08  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80838B0C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80838B10  D0 01 00 08 */	stfs f0, 8(r1)
/* 80838B14  3C 60 80 84 */	lis r3, lit_4306@ha /* 0x808455FC@ha */
/* 80838B18  C0 23 55 FC */	lfs f1, lit_4306@l(r3)  /* 0x808455FC@l */
/* 80838B1C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80838B20  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80838B24  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80838B28  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80838B2C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80838B30  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80838B34  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80838B38  38 61 00 08 */	addi r3, r1, 8
/* 80838B3C  38 81 00 14 */	addi r4, r1, 0x14
/* 80838B40  4B B0 E8 5D */	bl PSVECSquareDistance
/* 80838B44  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 80838B48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80838B4C  40 80 00 0C */	bge lbl_80838B58
/* 80838B50  7F E3 FB 78 */	mr r3, r31
/* 80838B54  48 00 00 08 */	b lbl_80838B5C
lbl_80838B58:
/* 80838B58  38 60 00 00 */	li r3, 0
lbl_80838B5C:
/* 80838B5C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80838B60  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80838B64  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80838B68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80838B6C  7C 08 03 A6 */	mtlr r0
/* 80838B70  38 21 00 40 */	addi r1, r1, 0x40
/* 80838B74  4E 80 00 20 */	blr 
