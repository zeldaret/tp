lbl_807C49B4:
/* 807C49B4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807C49B8  7C 08 02 A6 */	mflr r0
/* 807C49BC  90 01 00 54 */	stw r0, 0x54(r1)
/* 807C49C0  39 61 00 50 */	addi r11, r1, 0x50
/* 807C49C4  4B B9 D8 19 */	bl _savegpr_29
/* 807C49C8  7C 7E 1B 78 */	mr r30, r3
/* 807C49CC  88 03 13 88 */	lbz r0, 0x1388(r3)
/* 807C49D0  28 00 00 00 */	cmplwi r0, 0
/* 807C49D4  40 82 01 68 */	bne lbl_807C4B3C
/* 807C49D8  38 C0 00 00 */	li r6, 0
/* 807C49DC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807C49E0  3C 60 80 7D */	lis r3, lit_5146@ha /* 0x807CED48@ha */
/* 807C49E4  C0 03 ED 48 */	lfs f0, lit_5146@l(r3)  /* 0x807CED48@l */
/* 807C49E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C49EC  40 80 00 08 */	bge lbl_807C49F4
/* 807C49F0  38 C0 00 02 */	li r6, 2
lbl_807C49F4:
/* 807C49F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807C49F8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807C49FC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807C4A00  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807C4A04  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807C4A08  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807C4A0C  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807C4A10  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807C4A14  C0 03 00 08 */	lfs f0, 8(r3)
/* 807C4A18  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807C4A1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807C4A20  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807C4A24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C4A28  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C4A2C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807C4A30  38 00 00 FF */	li r0, 0xff
/* 807C4A34  90 01 00 08 */	stw r0, 8(r1)
/* 807C4A38  38 80 00 00 */	li r4, 0
/* 807C4A3C  90 81 00 0C */	stw r4, 0xc(r1)
/* 807C4A40  38 00 FF FF */	li r0, -1
/* 807C4A44  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C4A48  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C4A4C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C4A50  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807C4A54  3C 9E 00 01 */	addis r4, r30, 1
/* 807C4A58  80 84 0F 78 */	lwz r4, 0xf78(r4)
/* 807C4A5C  38 A0 00 00 */	li r5, 0
/* 807C4A60  54 DD 08 3C */	slwi r29, r6, 1
/* 807C4A64  3C C0 80 7D */	lis r6, va_foot_smoke_id@ha /* 0x807CF174@ha */
/* 807C4A68  38 C6 F1 74 */	addi r6, r6, va_foot_smoke_id@l /* 0x807CF174@l */
/* 807C4A6C  7C C6 EA 2E */	lhzx r6, r6, r29
/* 807C4A70  38 E1 00 2C */	addi r7, r1, 0x2c
/* 807C4A74  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807C4A78  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807C4A7C  39 41 00 20 */	addi r10, r1, 0x20
/* 807C4A80  3D 60 80 7D */	lis r11, lit_3909@ha /* 0x807CECB0@ha */
/* 807C4A84  C0 2B EC B0 */	lfs f1, lit_3909@l(r11)  /* 0x807CECB0@l */
/* 807C4A88  4B 88 8A 45 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C4A8C  3C BE 00 01 */	addis r5, r30, 1
/* 807C4A90  90 65 0F 78 */	stw r3, 0xf78(r5)
/* 807C4A94  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807C4A98  38 00 00 FF */	li r0, 0xff
/* 807C4A9C  90 01 00 08 */	stw r0, 8(r1)
/* 807C4AA0  38 80 00 00 */	li r4, 0
/* 807C4AA4  90 81 00 0C */	stw r4, 0xc(r1)
/* 807C4AA8  38 00 FF FF */	li r0, -1
/* 807C4AAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C4AB0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C4AB4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C4AB8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807C4ABC  80 85 0F 7C */	lwz r4, 0xf7c(r5)
/* 807C4AC0  38 A0 00 00 */	li r5, 0
/* 807C4AC4  3C C0 80 7D */	lis r6, va_foot_smoke_id@ha /* 0x807CF174@ha */
/* 807C4AC8  38 06 F1 74 */	addi r0, r6, va_foot_smoke_id@l /* 0x807CF174@l */
/* 807C4ACC  7C C0 EA 14 */	add r6, r0, r29
/* 807C4AD0  A0 C6 00 02 */	lhz r6, 2(r6)
/* 807C4AD4  38 E1 00 2C */	addi r7, r1, 0x2c
/* 807C4AD8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807C4ADC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807C4AE0  39 41 00 20 */	addi r10, r1, 0x20
/* 807C4AE4  3D 60 80 7D */	lis r11, lit_3909@ha /* 0x807CECB0@ha */
/* 807C4AE8  C0 2B EC B0 */	lfs f1, lit_3909@l(r11)  /* 0x807CECB0@l */
/* 807C4AEC  4B 88 89 E1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C4AF0  3C 9E 00 01 */	addis r4, r30, 1
/* 807C4AF4  90 64 0F 7C */	stw r3, 0xf7c(r4)
/* 807C4AF8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807C4AFC  38 63 02 10 */	addi r3, r3, 0x210
/* 807C4B00  80 84 0F 78 */	lwz r4, 0xf78(r4)
/* 807C4B04  4B 88 6E 15 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807C4B08  28 03 00 00 */	cmplwi r3, 0
/* 807C4B0C  41 82 00 0C */	beq lbl_807C4B18
/* 807C4B10  88 1E 13 79 */	lbz r0, 0x1379(r30)
/* 807C4B14  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_807C4B18:
/* 807C4B18  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807C4B1C  38 63 02 10 */	addi r3, r3, 0x210
/* 807C4B20  3C 9E 00 01 */	addis r4, r30, 1
/* 807C4B24  80 84 0F 7C */	lwz r4, 0xf7c(r4)
/* 807C4B28  4B 88 6D F1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807C4B2C  28 03 00 00 */	cmplwi r3, 0
/* 807C4B30  41 82 00 0C */	beq lbl_807C4B3C
/* 807C4B34  88 1E 13 79 */	lbz r0, 0x1379(r30)
/* 807C4B38  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_807C4B3C:
/* 807C4B3C  39 61 00 50 */	addi r11, r1, 0x50
/* 807C4B40  4B B9 D6 E9 */	bl _restgpr_29
/* 807C4B44  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807C4B48  7C 08 03 A6 */	mtlr r0
/* 807C4B4C  38 21 00 50 */	addi r1, r1, 0x50
/* 807C4B50  4E 80 00 20 */	blr 
