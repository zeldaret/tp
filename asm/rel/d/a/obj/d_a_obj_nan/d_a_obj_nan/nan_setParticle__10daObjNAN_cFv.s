lbl_80CA1B50:
/* 80CA1B50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CA1B54  7C 08 02 A6 */	mflr r0
/* 80CA1B58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA1B5C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CA1B60  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CA1B64  7C 7F 1B 78 */	mr r31, r3
/* 80CA1B68  C0 23 05 7C */	lfs f1, 0x57c(r3)
/* 80CA1B6C  4B 6C 05 41 */	bl __cvt_fp2unsigned
/* 80CA1B70  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80CA1B74  7C 03 00 40 */	cmplw r3, r0
/* 80CA1B78  40 81 00 20 */	ble lbl_80CA1B98
/* 80CA1B7C  38 7F 07 E8 */	addi r3, r31, 0x7e8
/* 80CA1B80  3C 80 80 CA */	lis r4, lit_3870@ha /* 0x80CA31D8@ha */
/* 80CA1B84  C0 24 31 D8 */	lfs f1, lit_3870@l(r4)  /* 0x80CA31D8@l */
/* 80CA1B88  3C 80 80 CA */	lis r4, lit_3868@ha /* 0x80CA31D0@ha */
/* 80CA1B8C  C0 44 31 D0 */	lfs f2, lit_3868@l(r4)  /* 0x80CA31D0@l */
/* 80CA1B90  4B 5C EB B1 */	bl cLib_chaseF__FPfff
/* 80CA1B94  48 00 00 18 */	b lbl_80CA1BAC
lbl_80CA1B98:
/* 80CA1B98  38 7F 07 E8 */	addi r3, r31, 0x7e8
/* 80CA1B9C  3C 80 80 CA */	lis r4, lit_3868@ha /* 0x80CA31D0@ha */
/* 80CA1BA0  C0 24 31 D0 */	lfs f1, lit_3868@l(r4)  /* 0x80CA31D0@l */
/* 80CA1BA4  FC 40 08 90 */	fmr f2, f1
/* 80CA1BA8  4B 5C EB 99 */	bl cLib_chaseF__FPfff
lbl_80CA1BAC:
/* 80CA1BAC  88 1F 07 FA */	lbz r0, 0x7fa(r31)
/* 80CA1BB0  28 00 00 02 */	cmplwi r0, 2
/* 80CA1BB4  41 82 01 90 */	beq lbl_80CA1D44
/* 80CA1BB8  3C 60 80 CA */	lis r3, d_a_obj_nan__stringBase0@ha /* 0x80CA32A0@ha */
/* 80CA1BBC  38 63 32 A0 */	addi r3, r3, d_a_obj_nan__stringBase0@l /* 0x80CA32A0@l */
/* 80CA1BC0  38 63 00 06 */	addi r3, r3, 6
/* 80CA1BC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA1BC8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA1BCC  3B C4 4E 00 */	addi r30, r4, 0x4e00
/* 80CA1BD0  7F C4 F3 78 */	mr r4, r30
/* 80CA1BD4  4B 6C 6D C1 */	bl strcmp
/* 80CA1BD8  2C 03 00 00 */	cmpwi r3, 0
/* 80CA1BDC  40 82 00 34 */	bne lbl_80CA1C10
/* 80CA1BE0  3C 60 80 CA */	lis r3, d_a_obj_nan__stringBase0@ha /* 0x80CA32A0@ha */
/* 80CA1BE4  38 63 32 A0 */	addi r3, r3, d_a_obj_nan__stringBase0@l /* 0x80CA32A0@l */
/* 80CA1BE8  38 63 00 06 */	addi r3, r3, 6
/* 80CA1BEC  7F C4 F3 78 */	mr r4, r30
/* 80CA1BF0  4B 6C 6D A5 */	bl strcmp
/* 80CA1BF4  2C 03 00 00 */	cmpwi r3, 0
/* 80CA1BF8  40 82 01 4C */	bne lbl_80CA1D44
/* 80CA1BFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA1C00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA1C04  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80CA1C08  2C 00 00 03 */	cmpwi r0, 3
/* 80CA1C0C  41 82 01 38 */	beq lbl_80CA1D44
lbl_80CA1C10:
/* 80CA1C10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA1C14  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA1C18  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CA1C1C  38 00 00 FF */	li r0, 0xff
/* 80CA1C20  90 01 00 08 */	stw r0, 8(r1)
/* 80CA1C24  38 80 00 00 */	li r4, 0
/* 80CA1C28  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CA1C2C  38 00 FF FF */	li r0, -1
/* 80CA1C30  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA1C34  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CA1C38  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CA1C3C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CA1C40  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80CA1C44  38 A0 00 00 */	li r5, 0
/* 80CA1C48  38 C0 0A 1B */	li r6, 0xa1b
/* 80CA1C4C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80CA1C50  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80CA1C54  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80CA1C58  39 40 00 00 */	li r10, 0
/* 80CA1C5C  3D 60 80 CA */	lis r11, lit_3868@ha /* 0x80CA31D0@ha */
/* 80CA1C60  C0 2B 31 D0 */	lfs f1, lit_3868@l(r11)  /* 0x80CA31D0@l */
/* 80CA1C64  4B 3A B8 69 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CA1C68  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80CA1C6C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CA1C70  38 63 02 10 */	addi r3, r3, 0x210
/* 80CA1C74  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80CA1C78  4B 3A 9C A1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80CA1C7C  28 03 00 00 */	cmplwi r3, 0
/* 80CA1C80  41 82 00 18 */	beq lbl_80CA1C98
/* 80CA1C84  C0 3F 07 E8 */	lfs f1, 0x7e8(r31)
/* 80CA1C88  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CA1C8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CA1C90  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80CA1C94  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_80CA1C98:
/* 80CA1C98  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CA1C9C  38 00 00 FF */	li r0, 0xff
/* 80CA1CA0  90 01 00 08 */	stw r0, 8(r1)
/* 80CA1CA4  38 80 00 00 */	li r4, 0
/* 80CA1CA8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CA1CAC  38 00 FF FF */	li r0, -1
/* 80CA1CB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA1CB4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CA1CB8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CA1CBC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CA1CC0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CA1CC4  38 A0 00 00 */	li r5, 0
/* 80CA1CC8  38 C0 0A 1C */	li r6, 0xa1c
/* 80CA1CCC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80CA1CD0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80CA1CD4  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80CA1CD8  39 40 00 00 */	li r10, 0
/* 80CA1CDC  3D 60 80 CA */	lis r11, lit_3868@ha /* 0x80CA31D0@ha */
/* 80CA1CE0  C0 2B 31 D0 */	lfs f1, lit_3868@l(r11)  /* 0x80CA31D0@l */
/* 80CA1CE4  4B 3A B7 E9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CA1CE8  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80CA1CEC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CA1CF0  38 63 02 10 */	addi r3, r3, 0x210
/* 80CA1CF4  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CA1CF8  4B 3A 9C 21 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80CA1CFC  28 03 00 00 */	cmplwi r3, 0
/* 80CA1D00  41 82 00 18 */	beq lbl_80CA1D18
/* 80CA1D04  C0 3F 07 E8 */	lfs f1, 0x7e8(r31)
/* 80CA1D08  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CA1D0C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CA1D10  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80CA1D14  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_80CA1D18:
/* 80CA1D18  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80CA1D1C  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80CA1D20  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CA1D24  38 7F 05 98 */	addi r3, r31, 0x598
/* 80CA1D28  38 81 00 20 */	addi r4, r1, 0x20
/* 80CA1D2C  38 A0 00 00 */	li r5, 0
/* 80CA1D30  38 C0 FF FF */	li r6, -1
/* 80CA1D34  81 9F 05 98 */	lwz r12, 0x598(r31)
/* 80CA1D38  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CA1D3C  7D 89 03 A6 */	mtctr r12
/* 80CA1D40  4E 80 04 21 */	bctrl 
lbl_80CA1D44:
/* 80CA1D44  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CA1D48  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CA1D4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA1D50  7C 08 03 A6 */	mtlr r0
/* 80CA1D54  38 21 00 30 */	addi r1, r1, 0x30
/* 80CA1D58  4E 80 00 20 */	blr 
