lbl_80C6AD40:
/* 80C6AD40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C6AD44  7C 08 02 A6 */	mflr r0
/* 80C6AD48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C6AD4C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C6AD50  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C6AD54  7C 7E 1B 78 */	mr r30, r3
/* 80C6AD58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6AD5C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6AD60  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C6AD64  38 80 00 00 */	li r4, 0
/* 80C6AD68  90 81 00 08 */	stw r4, 8(r1)
/* 80C6AD6C  38 00 FF FF */	li r0, -1
/* 80C6AD70  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C6AD74  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C6AD78  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6AD7C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6AD80  38 80 00 00 */	li r4, 0
/* 80C6AD84  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C01@ha */
/* 80C6AD88  38 A5 8C 01 */	addi r5, r5, 0x8C01 /* 0x00008C01@l */
/* 80C6AD8C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C6AD90  38 E0 00 00 */	li r7, 0
/* 80C6AD94  39 00 00 00 */	li r8, 0
/* 80C6AD98  39 20 00 00 */	li r9, 0
/* 80C6AD9C  39 40 00 FF */	li r10, 0xff
/* 80C6ADA0  3D 60 80 C7 */	lis r11, lit_3656@ha /* 0x80C6B148@ha */
/* 80C6ADA4  C0 2B B1 48 */	lfs f1, lit_3656@l(r11)  /* 0x80C6B148@l */
/* 80C6ADA8  4B 3E 1C E9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6ADAC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C6ADB0  38 80 00 00 */	li r4, 0
/* 80C6ADB4  90 81 00 08 */	stw r4, 8(r1)
/* 80C6ADB8  38 00 FF FF */	li r0, -1
/* 80C6ADBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C6ADC0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C6ADC4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6ADC8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6ADCC  38 80 00 00 */	li r4, 0
/* 80C6ADD0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C02@ha */
/* 80C6ADD4  38 A5 8C 02 */	addi r5, r5, 0x8C02 /* 0x00008C02@l */
/* 80C6ADD8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C6ADDC  38 E0 00 00 */	li r7, 0
/* 80C6ADE0  39 00 00 00 */	li r8, 0
/* 80C6ADE4  39 20 00 00 */	li r9, 0
/* 80C6ADE8  39 40 00 FF */	li r10, 0xff
/* 80C6ADEC  3D 60 80 C7 */	lis r11, lit_3656@ha /* 0x80C6B148@ha */
/* 80C6ADF0  C0 2B B1 48 */	lfs f1, lit_3656@l(r11)  /* 0x80C6B148@l */
/* 80C6ADF4  4B 3E 1C 9D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6ADF8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C6ADFC  38 80 00 00 */	li r4, 0
/* 80C6AE00  90 81 00 08 */	stw r4, 8(r1)
/* 80C6AE04  38 00 FF FF */	li r0, -1
/* 80C6AE08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C6AE0C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C6AE10  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6AE14  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6AE18  38 80 00 00 */	li r4, 0
/* 80C6AE1C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C03@ha */
/* 80C6AE20  38 A5 8C 03 */	addi r5, r5, 0x8C03 /* 0x00008C03@l */
/* 80C6AE24  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C6AE28  38 E0 00 00 */	li r7, 0
/* 80C6AE2C  39 00 00 00 */	li r8, 0
/* 80C6AE30  39 20 00 00 */	li r9, 0
/* 80C6AE34  39 40 00 FF */	li r10, 0xff
/* 80C6AE38  3D 60 80 C7 */	lis r11, lit_3656@ha /* 0x80C6B148@ha */
/* 80C6AE3C  C0 2B B1 48 */	lfs f1, lit_3656@l(r11)  /* 0x80C6B148@l */
/* 80C6AE40  4B 3E 1C 51 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6AE44  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C6AE48  38 80 00 00 */	li r4, 0
/* 80C6AE4C  90 81 00 08 */	stw r4, 8(r1)
/* 80C6AE50  38 00 FF FF */	li r0, -1
/* 80C6AE54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C6AE58  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C6AE5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6AE60  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6AE64  38 80 00 00 */	li r4, 0
/* 80C6AE68  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C04@ha */
/* 80C6AE6C  38 A5 8C 04 */	addi r5, r5, 0x8C04 /* 0x00008C04@l */
/* 80C6AE70  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C6AE74  38 E0 00 00 */	li r7, 0
/* 80C6AE78  39 00 00 00 */	li r8, 0
/* 80C6AE7C  39 20 00 00 */	li r9, 0
/* 80C6AE80  39 40 00 FF */	li r10, 0xff
/* 80C6AE84  3D 60 80 C7 */	lis r11, lit_3656@ha /* 0x80C6B148@ha */
/* 80C6AE88  C0 2B B1 48 */	lfs f1, lit_3656@l(r11)  /* 0x80C6B148@l */
/* 80C6AE8C  4B 3E 1C 05 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6AE90  7F C3 F3 78 */	mr r3, r30
/* 80C6AE94  4B 3A ED E9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C6AE98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C6AE9C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C6AEA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C6AEA4  7C 08 03 A6 */	mtlr r0
/* 80C6AEA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C6AEAC  4E 80 00 20 */	blr 
