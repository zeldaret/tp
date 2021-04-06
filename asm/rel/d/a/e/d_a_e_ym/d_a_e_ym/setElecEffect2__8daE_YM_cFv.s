lbl_808089DC:
/* 808089DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 808089E0  7C 08 02 A6 */	mflr r0
/* 808089E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 808089E8  39 61 00 50 */	addi r11, r1, 0x50
/* 808089EC  4B B5 97 F1 */	bl _savegpr_29
/* 808089F0  7C 7E 1B 78 */	mr r30, r3
/* 808089F4  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 808089F8  3B E3 59 94 */	addi r31, r3, lit_3925@l /* 0x80815994@l */
/* 808089FC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80808A00  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 80808A04  EC 21 00 32 */	fmuls f1, f1, f0
/* 80808A08  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80808A0C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80808A10  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80808A14  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80808A18  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80808A1C  88 1E 06 CA */	lbz r0, 0x6ca(r30)
/* 80808A20  28 00 00 01 */	cmplwi r0, 1
/* 80808A24  40 82 00 20 */	bne lbl_80808A44
/* 80808A28  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80808A2C  80 63 00 04 */	lwz r3, 4(r3)
/* 80808A30  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80808A34  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80808A38  38 03 01 80 */	addi r0, r3, 0x180
/* 80808A3C  7C 03 03 78 */	mr r3, r0
/* 80808A40  48 00 00 14 */	b lbl_80808A54
lbl_80808A44:
/* 80808A44  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80808A48  80 63 00 04 */	lwz r3, 4(r3)
/* 80808A4C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80808A50  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_80808A54:
/* 80808A54  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 80808A58  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80808A5C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80808A60  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80808A64  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80808A68  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80808A6C  7F C3 F3 78 */	mr r3, r30
/* 80808A70  4B FF FE 15 */	bl setElecEffect1__8daE_YM_cFv
/* 80808A74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80808A78  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80808A7C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80808A80  38 00 00 FF */	li r0, 0xff
/* 80808A84  90 01 00 08 */	stw r0, 8(r1)
/* 80808A88  38 80 00 00 */	li r4, 0
/* 80808A8C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80808A90  38 00 FF FF */	li r0, -1
/* 80808A94  90 01 00 10 */	stw r0, 0x10(r1)
/* 80808A98  90 81 00 14 */	stw r4, 0x14(r1)
/* 80808A9C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80808AA0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80808AA4  80 9E 0A E0 */	lwz r4, 0xae0(r30)
/* 80808AA8  38 A0 00 00 */	li r5, 0
/* 80808AAC  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008395@ha */
/* 80808AB0  38 C6 83 95 */	addi r6, r6, 0x8395 /* 0x00008395@l */
/* 80808AB4  38 E1 00 20 */	addi r7, r1, 0x20
/* 80808AB8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80808ABC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80808AC0  39 41 00 2C */	addi r10, r1, 0x2c
/* 80808AC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80808AC8  4B 84 4A 05 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80808ACC  90 7E 0A E0 */	stw r3, 0xae0(r30)
/* 80808AD0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80808AD4  38 00 00 FF */	li r0, 0xff
/* 80808AD8  90 01 00 08 */	stw r0, 8(r1)
/* 80808ADC  38 80 00 00 */	li r4, 0
/* 80808AE0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80808AE4  38 00 FF FF */	li r0, -1
/* 80808AE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80808AEC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80808AF0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80808AF4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80808AF8  80 9E 0A E4 */	lwz r4, 0xae4(r30)
/* 80808AFC  38 A0 00 00 */	li r5, 0
/* 80808B00  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008396@ha */
/* 80808B04  38 C6 83 96 */	addi r6, r6, 0x8396 /* 0x00008396@l */
/* 80808B08  38 E1 00 20 */	addi r7, r1, 0x20
/* 80808B0C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80808B10  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80808B14  39 41 00 2C */	addi r10, r1, 0x2c
/* 80808B18  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80808B1C  4B 84 49 B1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80808B20  90 7E 0A E4 */	stw r3, 0xae4(r30)
/* 80808B24  39 61 00 50 */	addi r11, r1, 0x50
/* 80808B28  4B B5 97 01 */	bl _restgpr_29
/* 80808B2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80808B30  7C 08 03 A6 */	mtlr r0
/* 80808B34  38 21 00 50 */	addi r1, r1, 0x50
/* 80808B38  4E 80 00 20 */	blr 
