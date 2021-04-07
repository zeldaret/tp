lbl_80630A9C:
/* 80630A9C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80630AA0  7C 08 02 A6 */	mflr r0
/* 80630AA4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80630AA8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80630AAC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80630AB0  7C 7F 1B 78 */	mr r31, r3
/* 80630AB4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80630AB8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80630ABC  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80630AC0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80630AC4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80630AC8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80630ACC  88 03 0F A8 */	lbz r0, 0xfa8(r3)
/* 80630AD0  28 00 00 07 */	cmplwi r0, 7
/* 80630AD4  40 82 00 34 */	bne lbl_80630B08
/* 80630AD8  3C 60 80 64 */	lis r3, lit_4432@ha /* 0x80639850@ha */
/* 80630ADC  C0 03 98 50 */	lfs f0, lit_4432@l(r3)  /* 0x80639850@l */
/* 80630AE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80630AE4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80630AE8  3C 60 80 64 */	lis r3, lit_3795@ha /* 0x80639810@ha */
/* 80630AEC  C0 03 98 10 */	lfs f0, lit_3795@l(r3)  /* 0x80639810@l */
/* 80630AF0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80630AF4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80630AF8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80630AFC  88 7F 0F AB */	lbz r3, 0xfab(r31)
/* 80630B00  38 C3 00 01 */	addi r6, r3, 1
/* 80630B04  48 00 00 28 */	b lbl_80630B2C
lbl_80630B08:
/* 80630B08  3C 60 80 64 */	lis r3, l_HIO@ha /* 0x80639F84@ha */
/* 80630B0C  38 63 9F 84 */	addi r3, r3, l_HIO@l /* 0x80639F84@l */
/* 80630B10  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80630B14  7C 63 02 14 */	add r3, r3, r0
/* 80630B18  C0 03 00 08 */	lfs f0, 8(r3)
/* 80630B1C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80630B20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80630B24  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80630B28  38 C0 00 00 */	li r6, 0
lbl_80630B2C:
/* 80630B2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80630B30  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80630B34  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80630B38  38 00 00 FF */	li r0, 0xff
/* 80630B3C  90 01 00 08 */	stw r0, 8(r1)
/* 80630B40  38 80 00 00 */	li r4, 0
/* 80630B44  90 81 00 0C */	stw r4, 0xc(r1)
/* 80630B48  38 00 FF FF */	li r0, -1
/* 80630B4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80630B50  90 81 00 14 */	stw r4, 0x14(r1)
/* 80630B54  90 81 00 18 */	stw r4, 0x18(r1)
/* 80630B58  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80630B5C  80 9F 1B 64 */	lwz r4, 0x1b64(r31)
/* 80630B60  38 A0 00 00 */	li r5, 0
/* 80630B64  54 C0 08 3C */	slwi r0, r6, 1
/* 80630B68  3C C0 80 64 */	lis r6, chill_effect_id@ha /* 0x80639C90@ha */
/* 80630B6C  38 C6 9C 90 */	addi r6, r6, chill_effect_id@l /* 0x80639C90@l */
/* 80630B70  7C C6 02 2E */	lhzx r6, r6, r0
/* 80630B74  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80630B78  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80630B7C  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80630B80  39 41 00 38 */	addi r10, r1, 0x38
/* 80630B84  3D 60 80 64 */	lis r11, lit_3795@ha /* 0x80639810@ha */
/* 80630B88  C0 2B 98 10 */	lfs f1, lit_3795@l(r11)  /* 0x80639810@l */
/* 80630B8C  4B A1 C9 41 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80630B90  90 7F 1B 64 */	stw r3, 0x1b64(r31)
/* 80630B94  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80630B98  38 63 02 10 */	addi r3, r3, 0x210
/* 80630B9C  80 9F 1B 64 */	lwz r4, 0x1b64(r31)
/* 80630BA0  4B A1 AD 79 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80630BA4  28 03 00 00 */	cmplwi r3, 0
/* 80630BA8  41 82 00 30 */	beq lbl_80630BD8
/* 80630BAC  E0 01 00 38 */	psq_l f0, 56(r1), 0, 0 /* qr0 */
/* 80630BB0  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80630BB4  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 80630BB8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80630BBC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80630BC0  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80630BC4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80630BC8  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80630BCC  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 80630BD0  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 80630BD4  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_80630BD8:
/* 80630BD8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80630BDC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80630BE0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80630BE4  7C 08 03 A6 */	mtlr r0
/* 80630BE8  38 21 00 50 */	addi r1, r1, 0x50
/* 80630BEC  4E 80 00 20 */	blr 
