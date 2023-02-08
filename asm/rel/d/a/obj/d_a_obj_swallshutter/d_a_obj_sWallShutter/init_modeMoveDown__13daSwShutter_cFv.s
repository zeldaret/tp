lbl_80598A04:
/* 80598A04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80598A08  7C 08 02 A6 */	mflr r0
/* 80598A0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80598A10  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80598A14  7C 7F 1B 78 */	mr r31, r3
/* 80598A18  3C 60 80 5A */	lis r3, l_HIO@ha /* 0x805990F4@ha */
/* 80598A1C  38 63 90 F4 */	addi r3, r3, l_HIO@l /* 0x805990F4@l */
/* 80598A20  C0 03 00 04 */	lfs f0, 4(r3)
/* 80598A24  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80598A28  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80598A2C  28 00 00 01 */	cmplwi r0, 1
/* 80598A30  40 82 00 5C */	bne lbl_80598A8C
/* 80598A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80598A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80598A3C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80598A40  38 80 00 00 */	li r4, 0
/* 80598A44  90 81 00 08 */	stw r4, 8(r1)
/* 80598A48  38 00 FF FF */	li r0, -1
/* 80598A4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80598A50  90 81 00 10 */	stw r4, 0x10(r1)
/* 80598A54  90 81 00 14 */	stw r4, 0x14(r1)
/* 80598A58  90 81 00 18 */	stw r4, 0x18(r1)
/* 80598A5C  38 80 00 00 */	li r4, 0
/* 80598A60  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C77@ha */
/* 80598A64  38 A5 8C 77 */	addi r5, r5, 0x8C77 /* 0x00008C77@l */
/* 80598A68  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80598A6C  38 E0 00 00 */	li r7, 0
/* 80598A70  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80598A74  39 20 00 00 */	li r9, 0
/* 80598A78  39 40 00 FF */	li r10, 0xff
/* 80598A7C  3D 60 80 5A */	lis r11, lit_3826@ha /* 0x80598FB0@ha */
/* 80598A80  C0 2B 8F B0 */	lfs f1, lit_3826@l(r11)  /* 0x80598FB0@l */
/* 80598A84  4B AB 40 0D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80598A88  48 00 00 58 */	b lbl_80598AE0
lbl_80598A8C:
/* 80598A8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80598A90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80598A94  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80598A98  38 80 00 00 */	li r4, 0
/* 80598A9C  90 81 00 08 */	stw r4, 8(r1)
/* 80598AA0  38 00 FF FF */	li r0, -1
/* 80598AA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80598AA8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80598AAC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80598AB0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80598AB4  38 80 00 00 */	li r4, 0
/* 80598AB8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000870D@ha */
/* 80598ABC  38 A5 87 0D */	addi r5, r5, 0x870D /* 0x0000870D@l */
/* 80598AC0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80598AC4  38 E0 00 00 */	li r7, 0
/* 80598AC8  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80598ACC  39 20 00 00 */	li r9, 0
/* 80598AD0  39 40 00 FF */	li r10, 0xff
/* 80598AD4  3D 60 80 5A */	lis r11, lit_3826@ha /* 0x80598FB0@ha */
/* 80598AD8  C0 2B 8F B0 */	lfs f1, lit_3826@l(r11)  /* 0x80598FB0@l */
/* 80598ADC  4B AB 3F B5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80598AE0:
/* 80598AE0  38 00 00 02 */	li r0, 2
/* 80598AE4  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 80598AE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80598AEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80598AF0  7C 08 03 A6 */	mtlr r0
/* 80598AF4  38 21 00 30 */	addi r1, r1, 0x30
/* 80598AF8  4E 80 00 20 */	blr 
