lbl_80BE09F4:
/* 80BE09F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BE09F8  7C 08 02 A6 */	mflr r0
/* 80BE09FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BE0A00  39 61 00 50 */	addi r11, r1, 0x50
/* 80BE0A04  4B 78 17 C9 */	bl _savegpr_25
/* 80BE0A08  7C 7E 1B 78 */	mr r30, r3
/* 80BE0A0C  3C 60 80 BE */	lis r3, l_sizuku_body_effect_list@ha /* 0x80BE1F88@ha */
/* 80BE0A10  3B E3 1F 88 */	addi r31, r3, l_sizuku_body_effect_list@l /* 0x80BE1F88@l */
/* 80BE0A14  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 80BE0A18  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BE0A1C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80BE0A20  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80BE0A24  38 81 00 20 */	addi r4, r1, 0x20
/* 80BE0A28  4B 43 8D D1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80BE0A2C  28 03 00 00 */	cmplwi r3, 0
/* 80BE0A30  41 82 00 4C */	beq lbl_80BE0A7C
/* 80BE0A34  A8 03 00 0E */	lha r0, 0xe(r3)
/* 80BE0A38  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 80BE0A3C  40 82 00 24 */	bne lbl_80BE0A60
/* 80BE0A40  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80BE0A44  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80BE0A48  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80BE0A4C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BE0A50  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80BE0A54  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80BE0A58  38 60 00 01 */	li r3, 1
/* 80BE0A5C  48 00 01 94 */	b lbl_80BE0BF0
lbl_80BE0A60:
/* 80BE0A60  2C 00 01 F6 */	cmpwi r0, 0x1f6
/* 80BE0A64  40 82 00 18 */	bne lbl_80BE0A7C
/* 80BE0A68  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 80BE0A6C  28 00 00 00 */	cmplwi r0, 0
/* 80BE0A70  40 82 00 0C */	bne lbl_80BE0A7C
/* 80BE0A74  38 60 00 01 */	li r3, 1
/* 80BE0A78  48 00 01 78 */	b lbl_80BE0BF0
lbl_80BE0A7C:
/* 80BE0A7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE0A80  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE0A84  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80BE0A88  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80BE0A8C  28 00 00 2C */	cmplwi r0, 0x2c
/* 80BE0A90  40 82 00 1C */	bne lbl_80BE0AAC
/* 80BE0A94  38 00 00 32 */	li r0, 0x32
/* 80BE0A98  98 1E 06 B2 */	stb r0, 0x6b2(r30)
/* 80BE0A9C  38 00 00 03 */	li r0, 3
/* 80BE0AA0  98 1E 06 B0 */	stb r0, 0x6b0(r30)
/* 80BE0AA4  38 60 00 01 */	li r3, 1
/* 80BE0AA8  48 00 01 48 */	b lbl_80BE0BF0
lbl_80BE0AAC:
/* 80BE0AAC  88 1E 06 B2 */	lbz r0, 0x6b2(r30)
/* 80BE0AB0  2C 00 00 01 */	cmpwi r0, 1
/* 80BE0AB4  41 82 00 FC */	beq lbl_80BE0BB0
/* 80BE0AB8  40 80 00 10 */	bge lbl_80BE0AC8
/* 80BE0ABC  2C 00 00 00 */	cmpwi r0, 0
/* 80BE0AC0  40 80 00 14 */	bge lbl_80BE0AD4
/* 80BE0AC4  48 00 01 28 */	b lbl_80BE0BEC
lbl_80BE0AC8:
/* 80BE0AC8  2C 00 00 03 */	cmpwi r0, 3
/* 80BE0ACC  40 80 01 20 */	bge lbl_80BE0BEC
/* 80BE0AD0  48 00 00 FC */	b lbl_80BE0BCC
lbl_80BE0AD4:
/* 80BE0AD4  38 00 00 00 */	li r0, 0
/* 80BE0AD8  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80BE0ADC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80BE0AE0  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80BE0AE4  3B 40 00 00 */	li r26, 0
/* 80BE0AE8  3B 9F 00 0C */	addi r28, r31, 0xc
lbl_80BE0AEC:
/* 80BE0AEC  3B 20 00 00 */	li r25, 0
/* 80BE0AF0  3B A0 00 00 */	li r29, 0
lbl_80BE0AF4:
/* 80BE0AF4  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80BE0AF8  38 80 00 00 */	li r4, 0
/* 80BE0AFC  90 81 00 08 */	stw r4, 8(r1)
/* 80BE0B00  38 00 FF FF */	li r0, -1
/* 80BE0B04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BE0B08  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BE0B0C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE0B10  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE0B14  38 80 00 00 */	li r4, 0
/* 80BE0B18  7C BC EA 2E */	lhzx r5, r28, r29
/* 80BE0B1C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BE0B20  38 E0 00 00 */	li r7, 0
/* 80BE0B24  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80BE0B28  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80BE0B2C  39 40 00 FF */	li r10, 0xff
/* 80BE0B30  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80BE0B34  4B 46 BF 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE0B38  3B 39 00 01 */	addi r25, r25, 1
/* 80BE0B3C  2C 19 00 02 */	cmpwi r25, 2
/* 80BE0B40  3B BD 00 02 */	addi r29, r29, 2
/* 80BE0B44  41 80 FF B0 */	blt lbl_80BE0AF4
/* 80BE0B48  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80BE0B4C  38 03 55 55 */	addi r0, r3, 0x5555
/* 80BE0B50  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80BE0B54  3B 5A 00 01 */	addi r26, r26, 1
/* 80BE0B58  2C 1A 00 03 */	cmpwi r26, 3
/* 80BE0B5C  41 80 FF 90 */	blt lbl_80BE0AEC
/* 80BE0B60  38 00 00 01 */	li r0, 1
/* 80BE0B64  98 1E 06 B2 */	stb r0, 0x6b2(r30)
/* 80BE0B68  38 00 00 28 */	li r0, 0x28
/* 80BE0B6C  98 1E 06 B1 */	stb r0, 0x6b1(r30)
/* 80BE0B70  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BE0B74  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80BE0B78  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE0B7C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BE0B80  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800ED@ha */
/* 80BE0B84  38 03 00 ED */	addi r0, r3, 0x00ED /* 0x000800ED@l */
/* 80BE0B88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE0B8C  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 80BE0B90  38 81 00 24 */	addi r4, r1, 0x24
/* 80BE0B94  38 A0 00 00 */	li r5, 0
/* 80BE0B98  38 C0 FF FF */	li r6, -1
/* 80BE0B9C  81 9E 06 D0 */	lwz r12, 0x6d0(r30)
/* 80BE0BA0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BE0BA4  7D 89 03 A6 */	mtctr r12
/* 80BE0BA8  4E 80 04 21 */	bctrl 
/* 80BE0BAC  48 00 00 40 */	b lbl_80BE0BEC
lbl_80BE0BB0:
/* 80BE0BB0  38 7E 06 B1 */	addi r3, r30, 0x6b1
/* 80BE0BB4  48 00 13 A1 */	bl func_80BE1F54
/* 80BE0BB8  7C 60 07 75 */	extsb. r0, r3
/* 80BE0BBC  40 82 00 30 */	bne lbl_80BE0BEC
/* 80BE0BC0  38 00 00 02 */	li r0, 2
/* 80BE0BC4  98 1E 06 B2 */	stb r0, 0x6b2(r30)
/* 80BE0BC8  48 00 00 24 */	b lbl_80BE0BEC
lbl_80BE0BCC:
/* 80BE0BCC  7F C3 F3 78 */	mr r3, r30
/* 80BE0BD0  4B FF FB AD */	bl createBodyEffect__11daObjDrop_cFv
/* 80BE0BD4  38 00 00 2D */	li r0, 0x2d
/* 80BE0BD8  98 1E 06 B1 */	stb r0, 0x6b1(r30)
/* 80BE0BDC  38 00 00 00 */	li r0, 0
/* 80BE0BE0  98 1E 06 B2 */	stb r0, 0x6b2(r30)
/* 80BE0BE4  38 00 00 03 */	li r0, 3
/* 80BE0BE8  98 1E 06 B0 */	stb r0, 0x6b0(r30)
lbl_80BE0BEC:
/* 80BE0BEC  38 60 00 01 */	li r3, 1
lbl_80BE0BF0:
/* 80BE0BF0  39 61 00 50 */	addi r11, r1, 0x50
/* 80BE0BF4  4B 78 16 25 */	bl _restgpr_25
/* 80BE0BF8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BE0BFC  7C 08 03 A6 */	mtlr r0
/* 80BE0C00  38 21 00 50 */	addi r1, r1, 0x50
/* 80BE0C04  4E 80 00 20 */	blr 
