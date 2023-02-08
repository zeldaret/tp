lbl_805B58C8:
/* 805B58C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805B58CC  7C 08 02 A6 */	mflr r0
/* 805B58D0  90 01 00 64 */	stw r0, 0x64(r1)
/* 805B58D4  39 61 00 60 */	addi r11, r1, 0x60
/* 805B58D8  4B DA C8 ED */	bl _savegpr_23
/* 805B58DC  7C 7F 1B 78 */	mr r31, r3
/* 805B58E0  3C 60 80 5C */	lis r3, cNullVec__6Z2Calc@ha /* 0x805BA874@ha */
/* 805B58E4  3B A3 A8 74 */	addi r29, r3, cNullVec__6Z2Calc@l /* 0x805BA874@l */
/* 805B58E8  3C 60 80 5C */	lis r3, lit_3816@ha /* 0x805BA588@ha */
/* 805B58EC  3B C3 A5 88 */	addi r30, r3, lit_3816@l /* 0x805BA588@l */
/* 805B58F0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B58F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805B58F8  FC 00 00 1E */	fctiwz f0, f0
/* 805B58FC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805B5900  83 41 00 2C */	lwz r26, 0x2c(r1)
/* 805B5904  80 1F 06 C4 */	lwz r0, 0x6c4(r31)
/* 805B5908  2C 00 00 07 */	cmpwi r0, 7
/* 805B590C  40 82 01 CC */	bne lbl_805B5AD8
/* 805B5910  2C 1A 00 AF */	cmpwi r26, 0xaf
/* 805B5914  41 80 00 98 */	blt lbl_805B59AC
/* 805B5918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B591C  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B5920  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 805B5924  38 00 00 FF */	li r0, 0xff
/* 805B5928  90 01 00 08 */	stw r0, 8(r1)
/* 805B592C  38 80 00 00 */	li r4, 0
/* 805B5930  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5934  38 00 FF FF */	li r0, -1
/* 805B5938  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B593C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5940  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5944  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5948  80 9F 11 88 */	lwz r4, 0x1188(r31)
/* 805B594C  38 A0 00 00 */	li r5, 0
/* 805B5950  3C C0 00 01 */	lis r6, 0x0001 /* 0x000082BA@ha */
/* 805B5954  38 C6 82 BA */	addi r6, r6, 0x82BA /* 0x000082BA@l */
/* 805B5958  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B595C  39 00 00 00 */	li r8, 0
/* 805B5960  39 20 00 00 */	li r9, 0
/* 805B5964  39 40 00 00 */	li r10, 0
/* 805B5968  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B596C  4B A9 7B 61 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5970  90 7F 11 88 */	stw r3, 0x1188(r31)
/* 805B5974  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 805B5978  38 63 02 10 */	addi r3, r3, 0x210
/* 805B597C  80 9F 11 88 */	lwz r4, 0x1188(r31)
/* 805B5980  4B A9 5F 99 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B5984  7C 65 1B 79 */	or. r5, r3, r3
/* 805B5988  41 82 00 24 */	beq lbl_805B59AC
/* 805B598C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B5990  80 63 00 04 */	lwz r3, 4(r3)
/* 805B5994  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B5998  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B599C  38 63 0A 80 */	addi r3, r3, 0xa80
/* 805B59A0  38 85 00 68 */	addi r4, r5, 0x68
/* 805B59A4  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 805B59A8  4B CC AE 39 */	bl func_802807E0
lbl_805B59AC:
/* 805B59AC  2C 1A 00 B4 */	cmpwi r26, 0xb4
/* 805B59B0  41 80 07 9C */	blt lbl_805B614C
/* 805B59B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B59B8  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B59BC  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B59C0  38 00 00 FF */	li r0, 0xff
/* 805B59C4  90 01 00 08 */	stw r0, 8(r1)
/* 805B59C8  38 80 00 00 */	li r4, 0
/* 805B59CC  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B59D0  38 00 FF FF */	li r0, -1
/* 805B59D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B59D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B59DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B59E0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B59E4  80 9F 11 8C */	lwz r4, 0x118c(r31)
/* 805B59E8  38 A0 00 00 */	li r5, 0
/* 805B59EC  3C C0 00 01 */	lis r6, 0x0001 /* 0x000082B2@ha */
/* 805B59F0  38 C6 82 B2 */	addi r6, r6, 0x82B2 /* 0x000082B2@l */
/* 805B59F4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B59F8  39 00 00 00 */	li r8, 0
/* 805B59FC  39 20 00 00 */	li r9, 0
/* 805B5A00  39 40 00 00 */	li r10, 0
/* 805B5A04  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B5A08  4B A9 7A C5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5A0C  90 7F 11 8C */	stw r3, 0x118c(r31)
/* 805B5A10  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5A14  38 63 02 10 */	addi r3, r3, 0x210
/* 805B5A18  80 9F 11 8C */	lwz r4, 0x118c(r31)
/* 805B5A1C  4B A9 5E FD */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B5A20  7C 65 1B 79 */	or. r5, r3, r3
/* 805B5A24  41 82 00 24 */	beq lbl_805B5A48
/* 805B5A28  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B5A2C  80 63 00 04 */	lwz r3, 4(r3)
/* 805B5A30  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B5A34  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B5A38  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 805B5A3C  38 85 00 68 */	addi r4, r5, 0x68
/* 805B5A40  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 805B5A44  4B CC AD 9D */	bl func_802807E0
lbl_805B5A48:
/* 805B5A48  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5A4C  38 00 00 FF */	li r0, 0xff
/* 805B5A50  90 01 00 08 */	stw r0, 8(r1)
/* 805B5A54  38 80 00 00 */	li r4, 0
/* 805B5A58  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5A5C  38 00 FF FF */	li r0, -1
/* 805B5A60  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B5A64  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5A68  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5A6C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5A70  80 9F 11 90 */	lwz r4, 0x1190(r31)
/* 805B5A74  38 A0 00 00 */	li r5, 0
/* 805B5A78  3C C0 00 01 */	lis r6, 0x0001 /* 0x000082B3@ha */
/* 805B5A7C  38 C6 82 B3 */	addi r6, r6, 0x82B3 /* 0x000082B3@l */
/* 805B5A80  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B5A84  39 00 00 00 */	li r8, 0
/* 805B5A88  39 20 00 00 */	li r9, 0
/* 805B5A8C  39 40 00 00 */	li r10, 0
/* 805B5A90  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B5A94  4B A9 7A 39 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5A98  90 7F 11 90 */	stw r3, 0x1190(r31)
/* 805B5A9C  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5AA0  38 63 02 10 */	addi r3, r3, 0x210
/* 805B5AA4  80 9F 11 90 */	lwz r4, 0x1190(r31)
/* 805B5AA8  4B A9 5E 71 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B5AAC  7C 65 1B 79 */	or. r5, r3, r3
/* 805B5AB0  41 82 06 9C */	beq lbl_805B614C
/* 805B5AB4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B5AB8  80 63 00 04 */	lwz r3, 4(r3)
/* 805B5ABC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B5AC0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B5AC4  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 805B5AC8  38 85 00 68 */	addi r4, r5, 0x68
/* 805B5ACC  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 805B5AD0  4B CC AD 11 */	bl func_802807E0
/* 805B5AD4  48 00 06 78 */	b lbl_805B614C
lbl_805B5AD8:
/* 805B5AD8  2C 00 00 12 */	cmpwi r0, 0x12
/* 805B5ADC  40 82 01 28 */	bne lbl_805B5C04
/* 805B5AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B5AE4  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B5AE8  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5AEC  38 00 00 FF */	li r0, 0xff
/* 805B5AF0  90 01 00 08 */	stw r0, 8(r1)
/* 805B5AF4  38 80 00 00 */	li r4, 0
/* 805B5AF8  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5AFC  38 00 FF FF */	li r0, -1
/* 805B5B00  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B5B04  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5B08  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5B0C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5B10  80 9F 11 88 */	lwz r4, 0x1188(r31)
/* 805B5B14  38 A0 00 00 */	li r5, 0
/* 805B5B18  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008322@ha */
/* 805B5B1C  38 C6 83 22 */	addi r6, r6, 0x8322 /* 0x00008322@l */
/* 805B5B20  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B5B24  39 00 00 00 */	li r8, 0
/* 805B5B28  39 20 00 00 */	li r9, 0
/* 805B5B2C  39 40 00 00 */	li r10, 0
/* 805B5B30  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B5B34  4B A9 79 99 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5B38  90 7F 11 88 */	stw r3, 0x1188(r31)
/* 805B5B3C  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5B40  38 63 02 10 */	addi r3, r3, 0x210
/* 805B5B44  80 9F 11 88 */	lwz r4, 0x1188(r31)
/* 805B5B48  4B A9 5D D1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B5B4C  7C 65 1B 79 */	or. r5, r3, r3
/* 805B5B50  41 82 00 24 */	beq lbl_805B5B74
/* 805B5B54  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B5B58  80 63 00 04 */	lwz r3, 4(r3)
/* 805B5B5C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B5B60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B5B64  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 805B5B68  38 85 00 68 */	addi r4, r5, 0x68
/* 805B5B6C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 805B5B70  4B CC AC 71 */	bl func_802807E0
lbl_805B5B74:
/* 805B5B74  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5B78  38 00 00 FF */	li r0, 0xff
/* 805B5B7C  90 01 00 08 */	stw r0, 8(r1)
/* 805B5B80  38 80 00 00 */	li r4, 0
/* 805B5B84  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5B88  38 00 FF FF */	li r0, -1
/* 805B5B8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B5B90  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5B94  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5B98  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5B9C  80 9F 11 8C */	lwz r4, 0x118c(r31)
/* 805B5BA0  38 A0 00 00 */	li r5, 0
/* 805B5BA4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008323@ha */
/* 805B5BA8  38 C6 83 23 */	addi r6, r6, 0x8323 /* 0x00008323@l */
/* 805B5BAC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B5BB0  39 00 00 00 */	li r8, 0
/* 805B5BB4  39 20 00 00 */	li r9, 0
/* 805B5BB8  39 40 00 00 */	li r10, 0
/* 805B5BBC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B5BC0  4B A9 79 0D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5BC4  90 7F 11 8C */	stw r3, 0x118c(r31)
/* 805B5BC8  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5BCC  38 63 02 10 */	addi r3, r3, 0x210
/* 805B5BD0  80 9F 11 8C */	lwz r4, 0x118c(r31)
/* 805B5BD4  4B A9 5D 45 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B5BD8  7C 65 1B 79 */	or. r5, r3, r3
/* 805B5BDC  41 82 05 70 */	beq lbl_805B614C
/* 805B5BE0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B5BE4  80 63 00 04 */	lwz r3, 4(r3)
/* 805B5BE8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B5BEC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B5BF0  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 805B5BF4  38 85 00 68 */	addi r4, r5, 0x68
/* 805B5BF8  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 805B5BFC  4B CC AB E5 */	bl func_802807E0
/* 805B5C00  48 00 05 4C */	b lbl_805B614C
lbl_805B5C04:
/* 805B5C04  2C 00 00 13 */	cmpwi r0, 0x13
/* 805B5C08  40 82 01 28 */	bne lbl_805B5D30
/* 805B5C0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B5C10  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B5C14  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5C18  38 00 00 FF */	li r0, 0xff
/* 805B5C1C  90 01 00 08 */	stw r0, 8(r1)
/* 805B5C20  38 80 00 00 */	li r4, 0
/* 805B5C24  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5C28  38 00 FF FF */	li r0, -1
/* 805B5C2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B5C30  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5C34  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5C38  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5C3C  80 9F 11 88 */	lwz r4, 0x1188(r31)
/* 805B5C40  38 A0 00 00 */	li r5, 0
/* 805B5C44  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008324@ha */
/* 805B5C48  38 C6 83 24 */	addi r6, r6, 0x8324 /* 0x00008324@l */
/* 805B5C4C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B5C50  39 00 00 00 */	li r8, 0
/* 805B5C54  39 20 00 00 */	li r9, 0
/* 805B5C58  39 40 00 00 */	li r10, 0
/* 805B5C5C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B5C60  4B A9 78 6D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5C64  90 7F 11 88 */	stw r3, 0x1188(r31)
/* 805B5C68  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5C6C  38 63 02 10 */	addi r3, r3, 0x210
/* 805B5C70  80 9F 11 88 */	lwz r4, 0x1188(r31)
/* 805B5C74  4B A9 5C A5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B5C78  7C 65 1B 79 */	or. r5, r3, r3
/* 805B5C7C  41 82 00 24 */	beq lbl_805B5CA0
/* 805B5C80  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B5C84  80 63 00 04 */	lwz r3, 4(r3)
/* 805B5C88  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B5C8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B5C90  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 805B5C94  38 85 00 68 */	addi r4, r5, 0x68
/* 805B5C98  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 805B5C9C  4B CC AB 45 */	bl func_802807E0
lbl_805B5CA0:
/* 805B5CA0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5CA4  38 00 00 FF */	li r0, 0xff
/* 805B5CA8  90 01 00 08 */	stw r0, 8(r1)
/* 805B5CAC  38 80 00 00 */	li r4, 0
/* 805B5CB0  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5CB4  38 00 FF FF */	li r0, -1
/* 805B5CB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B5CBC  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5CC0  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5CC4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5CC8  80 9F 11 8C */	lwz r4, 0x118c(r31)
/* 805B5CCC  38 A0 00 00 */	li r5, 0
/* 805B5CD0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008325@ha */
/* 805B5CD4  38 C6 83 25 */	addi r6, r6, 0x8325 /* 0x00008325@l */
/* 805B5CD8  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B5CDC  39 00 00 00 */	li r8, 0
/* 805B5CE0  39 20 00 00 */	li r9, 0
/* 805B5CE4  39 40 00 00 */	li r10, 0
/* 805B5CE8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B5CEC  4B A9 77 E1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5CF0  90 7F 11 8C */	stw r3, 0x118c(r31)
/* 805B5CF4  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5CF8  38 63 02 10 */	addi r3, r3, 0x210
/* 805B5CFC  80 9F 11 8C */	lwz r4, 0x118c(r31)
/* 805B5D00  4B A9 5C 19 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B5D04  7C 65 1B 79 */	or. r5, r3, r3
/* 805B5D08  41 82 04 44 */	beq lbl_805B614C
/* 805B5D0C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B5D10  80 63 00 04 */	lwz r3, 4(r3)
/* 805B5D14  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B5D18  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B5D1C  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 805B5D20  38 85 00 68 */	addi r4, r5, 0x68
/* 805B5D24  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 805B5D28  4B CC AA B9 */	bl func_802807E0
/* 805B5D2C  48 00 04 20 */	b lbl_805B614C
lbl_805B5D30:
/* 805B5D30  2C 00 00 0C */	cmpwi r0, 0xc
/* 805B5D34  40 82 01 B4 */	bne lbl_805B5EE8
/* 805B5D38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B5D3C  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B5D40  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5D44  38 00 00 FF */	li r0, 0xff
/* 805B5D48  90 01 00 08 */	stw r0, 8(r1)
/* 805B5D4C  38 80 00 00 */	li r4, 0
/* 805B5D50  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5D54  38 00 FF FF */	li r0, -1
/* 805B5D58  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B5D5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5D60  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5D64  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5D68  80 9F 11 88 */	lwz r4, 0x1188(r31)
/* 805B5D6C  38 A0 00 00 */	li r5, 0
/* 805B5D70  3C C0 00 01 */	lis r6, 0x0001 /* 0x000082FA@ha */
/* 805B5D74  38 C6 82 FA */	addi r6, r6, 0x82FA /* 0x000082FA@l */
/* 805B5D78  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B5D7C  39 00 00 00 */	li r8, 0
/* 805B5D80  39 20 00 00 */	li r9, 0
/* 805B5D84  39 40 00 00 */	li r10, 0
/* 805B5D88  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B5D8C  4B A9 77 41 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5D90  90 7F 11 88 */	stw r3, 0x1188(r31)
/* 805B5D94  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5D98  38 63 02 10 */	addi r3, r3, 0x210
/* 805B5D9C  80 9F 11 88 */	lwz r4, 0x1188(r31)
/* 805B5DA0  4B A9 5B 79 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B5DA4  7C 65 1B 79 */	or. r5, r3, r3
/* 805B5DA8  41 82 00 24 */	beq lbl_805B5DCC
/* 805B5DAC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B5DB0  80 63 00 04 */	lwz r3, 4(r3)
/* 805B5DB4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B5DB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B5DBC  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 805B5DC0  38 85 00 68 */	addi r4, r5, 0x68
/* 805B5DC4  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 805B5DC8  4B CC AA 19 */	bl func_802807E0
lbl_805B5DCC:
/* 805B5DCC  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5DD0  38 00 00 FF */	li r0, 0xff
/* 805B5DD4  90 01 00 08 */	stw r0, 8(r1)
/* 805B5DD8  38 80 00 00 */	li r4, 0
/* 805B5DDC  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5DE0  38 00 FF FF */	li r0, -1
/* 805B5DE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B5DE8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5DEC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5DF0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5DF4  80 9F 11 8C */	lwz r4, 0x118c(r31)
/* 805B5DF8  38 A0 00 00 */	li r5, 0
/* 805B5DFC  3C C0 00 01 */	lis r6, 0x0001 /* 0x000082FB@ha */
/* 805B5E00  38 C6 82 FB */	addi r6, r6, 0x82FB /* 0x000082FB@l */
/* 805B5E04  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B5E08  39 00 00 00 */	li r8, 0
/* 805B5E0C  39 20 00 00 */	li r9, 0
/* 805B5E10  39 40 00 00 */	li r10, 0
/* 805B5E14  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B5E18  4B A9 76 B5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5E1C  90 7F 11 8C */	stw r3, 0x118c(r31)
/* 805B5E20  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5E24  38 63 02 10 */	addi r3, r3, 0x210
/* 805B5E28  80 9F 11 8C */	lwz r4, 0x118c(r31)
/* 805B5E2C  4B A9 5A ED */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B5E30  7C 65 1B 79 */	or. r5, r3, r3
/* 805B5E34  41 82 00 24 */	beq lbl_805B5E58
/* 805B5E38  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B5E3C  80 63 00 04 */	lwz r3, 4(r3)
/* 805B5E40  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B5E44  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B5E48  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 805B5E4C  38 85 00 68 */	addi r4, r5, 0x68
/* 805B5E50  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 805B5E54  4B CC A9 8D */	bl func_802807E0
lbl_805B5E58:
/* 805B5E58  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5E5C  38 00 00 FF */	li r0, 0xff
/* 805B5E60  90 01 00 08 */	stw r0, 8(r1)
/* 805B5E64  38 80 00 00 */	li r4, 0
/* 805B5E68  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5E6C  38 00 FF FF */	li r0, -1
/* 805B5E70  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B5E74  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5E78  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5E7C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5E80  80 9F 11 90 */	lwz r4, 0x1190(r31)
/* 805B5E84  38 A0 00 00 */	li r5, 0
/* 805B5E88  3C C0 00 01 */	lis r6, 0x0001 /* 0x000082FC@ha */
/* 805B5E8C  38 C6 82 FC */	addi r6, r6, 0x82FC /* 0x000082FC@l */
/* 805B5E90  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B5E94  39 00 00 00 */	li r8, 0
/* 805B5E98  39 20 00 00 */	li r9, 0
/* 805B5E9C  39 40 00 00 */	li r10, 0
/* 805B5EA0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B5EA4  4B A9 76 29 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5EA8  90 7F 11 90 */	stw r3, 0x1190(r31)
/* 805B5EAC  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5EB0  38 63 02 10 */	addi r3, r3, 0x210
/* 805B5EB4  80 9F 11 90 */	lwz r4, 0x1190(r31)
/* 805B5EB8  4B A9 5A 61 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B5EBC  7C 65 1B 79 */	or. r5, r3, r3
/* 805B5EC0  41 82 02 8C */	beq lbl_805B614C
/* 805B5EC4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B5EC8  80 63 00 04 */	lwz r3, 4(r3)
/* 805B5ECC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B5ED0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B5ED4  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 805B5ED8  38 85 00 68 */	addi r4, r5, 0x68
/* 805B5EDC  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 805B5EE0  4B CC A9 01 */	bl func_802807E0
/* 805B5EE4  48 00 02 68 */	b lbl_805B614C
lbl_805B5EE8:
/* 805B5EE8  2C 00 00 0F */	cmpwi r0, 0xf
/* 805B5EEC  40 82 01 3C */	bne lbl_805B6028
/* 805B5EF0  2C 1A 00 01 */	cmpwi r26, 1
/* 805B5EF4  40 82 00 6C */	bne lbl_805B5F60
/* 805B5EF8  3B 40 00 00 */	li r26, 0
/* 805B5EFC  3A E0 00 00 */	li r23, 0
/* 805B5F00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B5F04  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B5F08  3B 1D 00 D4 */	addi r24, r29, 0xd4
lbl_805B5F0C:
/* 805B5F0C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 805B5F10  38 80 00 00 */	li r4, 0
/* 805B5F14  90 81 00 08 */	stw r4, 8(r1)
/* 805B5F18  38 00 FF FF */	li r0, -1
/* 805B5F1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B5F20  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B5F24  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5F28  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5F2C  38 80 00 00 */	li r4, 0
/* 805B5F30  7C B8 BA 2E */	lhzx r5, r24, r23
/* 805B5F34  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805B5F38  38 E0 00 00 */	li r7, 0
/* 805B5F3C  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 805B5F40  39 20 00 00 */	li r9, 0
/* 805B5F44  39 40 00 FF */	li r10, 0xff
/* 805B5F48  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B5F4C  4B A9 6B 45 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5F50  3B 5A 00 01 */	addi r26, r26, 1
/* 805B5F54  2C 1A 00 13 */	cmpwi r26, 0x13
/* 805B5F58  3A F7 00 02 */	addi r23, r23, 2
/* 805B5F5C  41 80 FF B0 */	blt lbl_805B5F0C
lbl_805B5F60:
/* 805B5F60  3B 60 00 00 */	li r27, 0
/* 805B5F64  3A E0 00 00 */	li r23, 0
/* 805B5F68  3B 00 00 00 */	li r24, 0
/* 805B5F6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B5F70  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B5F74  3B 3D 00 FC */	addi r25, r29, 0xfc
lbl_805B5F78:
/* 805B5F78  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5F7C  38 00 00 FF */	li r0, 0xff
/* 805B5F80  90 01 00 08 */	stw r0, 8(r1)
/* 805B5F84  38 80 00 00 */	li r4, 0
/* 805B5F88  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5F8C  38 00 FF FF */	li r0, -1
/* 805B5F90  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B5F94  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5F98  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5F9C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5FA0  3B 98 11 A8 */	addi r28, r24, 0x11a8
/* 805B5FA4  7C 9F E0 2E */	lwzx r4, r31, r28
/* 805B5FA8  38 A0 00 00 */	li r5, 0
/* 805B5FAC  7C D9 BA 2E */	lhzx r6, r25, r23
/* 805B5FB0  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B5FB4  39 00 00 00 */	li r8, 0
/* 805B5FB8  39 20 00 00 */	li r9, 0
/* 805B5FBC  39 40 00 00 */	li r10, 0
/* 805B5FC0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B5FC4  4B A9 75 09 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5FC8  7C 7F E1 2E */	stwx r3, r31, r28
/* 805B5FCC  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B5FD0  38 63 02 10 */	addi r3, r3, 0x210
/* 805B5FD4  7C 9F E0 2E */	lwzx r4, r31, r28
/* 805B5FD8  4B A9 59 41 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B5FDC  7C 65 1B 79 */	or. r5, r3, r3
/* 805B5FE0  41 82 00 30 */	beq lbl_805B6010
/* 805B5FE4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B5FE8  80 63 00 04 */	lwz r3, 4(r3)
/* 805B5FEC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B5FF0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 805B5FF4  38 7D 01 14 */	addi r3, r29, 0x114
/* 805B5FF8  7C 03 C0 2E */	lwzx r0, r3, r24
/* 805B5FFC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805B6000  7C 64 02 14 */	add r3, r4, r0
/* 805B6004  38 85 00 68 */	addi r4, r5, 0x68
/* 805B6008  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 805B600C  4B CC A7 D5 */	bl func_802807E0
lbl_805B6010:
/* 805B6010  3B 7B 00 01 */	addi r27, r27, 1
/* 805B6014  2C 1B 00 0C */	cmpwi r27, 0xc
/* 805B6018  3A F7 00 02 */	addi r23, r23, 2
/* 805B601C  3B 18 00 04 */	addi r24, r24, 4
/* 805B6020  41 80 FF 58 */	blt lbl_805B5F78
/* 805B6024  48 00 01 28 */	b lbl_805B614C
lbl_805B6028:
/* 805B6028  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B602C  2C 00 00 17 */	cmpwi r0, 0x17
/* 805B6030  41 82 00 08 */	beq lbl_805B6038
/* 805B6034  C0 3E 00 04 */	lfs f1, 4(r30)
lbl_805B6038:
/* 805B6038  38 7F 11 D8 */	addi r3, r31, 0x11d8
/* 805B603C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B6040  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 805B6044  4B CB 99 F9 */	bl cLib_addCalc2__FPffff
/* 805B6048  3B 20 00 00 */	li r25, 0
/* 805B604C  3A E0 00 00 */	li r23, 0
/* 805B6050  3B 00 00 00 */	li r24, 0
/* 805B6054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B6058  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B605C  3B 7D 01 44 */	addi r27, r29, 0x144
lbl_805B6060:
/* 805B6060  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805B6064  38 00 00 FF */	li r0, 0xff
/* 805B6068  90 01 00 08 */	stw r0, 8(r1)
/* 805B606C  38 80 00 00 */	li r4, 0
/* 805B6070  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B6074  38 00 FF FF */	li r0, -1
/* 805B6078  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B607C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B6080  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B6084  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B6088  3B 58 11 94 */	addi r26, r24, 0x1194
/* 805B608C  7C 9F D0 2E */	lwzx r4, r31, r26
/* 805B6090  38 A0 00 00 */	li r5, 0
/* 805B6094  7C DB BA 2E */	lhzx r6, r27, r23
/* 805B6098  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805B609C  39 00 00 00 */	li r8, 0
/* 805B60A0  39 20 00 00 */	li r9, 0
/* 805B60A4  39 40 00 00 */	li r10, 0
/* 805B60A8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B60AC  4B A9 74 21 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B60B0  7C 7F D1 2E */	stwx r3, r31, r26
/* 805B60B4  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805B60B8  38 63 02 10 */	addi r3, r3, 0x210
/* 805B60BC  7C 9F D0 2E */	lwzx r4, r31, r26
/* 805B60C0  4B A9 57 F5 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 805B60C4  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805B60C8  38 63 02 10 */	addi r3, r3, 0x210
/* 805B60CC  7C 9F D0 2E */	lwzx r4, r31, r26
/* 805B60D0  4B A9 58 49 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B60D4  7C 7A 1B 79 */	or. r26, r3, r3
/* 805B60D8  41 82 00 60 */	beq lbl_805B6138
/* 805B60DC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B60E0  80 63 00 04 */	lwz r3, 4(r3)
/* 805B60E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B60E8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 805B60EC  38 7D 01 50 */	addi r3, r29, 0x150
/* 805B60F0  7C 03 C0 2E */	lwzx r0, r3, r24
/* 805B60F4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805B60F8  7C 64 02 14 */	add r3, r4, r0
/* 805B60FC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805B6100  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805B6104  80 84 00 00 */	lwz r4, 0(r4)
/* 805B6108  4B D9 03 A9 */	bl PSMTXCopy
/* 805B610C  C0 3F 11 D8 */	lfs f1, 0x11d8(r31)
/* 805B6110  FC 40 08 90 */	fmr f2, f1
/* 805B6114  FC 60 08 90 */	fmr f3, f1
/* 805B6118  38 60 00 01 */	li r3, 1
/* 805B611C  4B CB AD 89 */	bl MtxScale__FfffUc
/* 805B6120  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B6124  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B6128  80 63 00 00 */	lwz r3, 0(r3)
/* 805B612C  38 9A 00 68 */	addi r4, r26, 0x68
/* 805B6130  38 BA 00 A4 */	addi r5, r26, 0xa4
/* 805B6134  4B CC A6 AD */	bl func_802807E0
lbl_805B6138:
/* 805B6138  3B 39 00 01 */	addi r25, r25, 1
/* 805B613C  2C 19 00 05 */	cmpwi r25, 5
/* 805B6140  3A F7 00 02 */	addi r23, r23, 2
/* 805B6144  3B 18 00 04 */	addi r24, r24, 4
/* 805B6148  41 80 FF 18 */	blt lbl_805B6060
lbl_805B614C:
/* 805B614C  88 1F 13 95 */	lbz r0, 0x1395(r31)
/* 805B6150  7C 00 07 75 */	extsb. r0, r0
/* 805B6154  41 82 00 F8 */	beq lbl_805B624C
/* 805B6158  38 00 00 00 */	li r0, 0
/* 805B615C  98 1F 13 95 */	stb r0, 0x1395(r31)
/* 805B6160  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007027D@ha */
/* 805B6164  38 03 02 7D */	addi r0, r3, 0x027D /* 0x0007027D@l */
/* 805B6168  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B616C  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 805B6170  38 81 00 20 */	addi r4, r1, 0x20
/* 805B6174  38 A0 00 00 */	li r5, 0
/* 805B6178  38 C0 00 00 */	li r6, 0
/* 805B617C  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 805B6180  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805B6184  7D 89 03 A6 */	mtctr r12
/* 805B6188  4E 80 04 21 */	bctrl 
/* 805B618C  3B 20 00 00 */	li r25, 0
/* 805B6190  3B 00 00 00 */	li r24, 0
/* 805B6194  3A E0 00 00 */	li r23, 0
/* 805B6198  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B619C  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B61A0  3B 7D 01 64 */	addi r27, r29, 0x164
lbl_805B61A4:
/* 805B61A4  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805B61A8  38 80 00 00 */	li r4, 0
/* 805B61AC  90 81 00 08 */	stw r4, 8(r1)
/* 805B61B0  38 00 FF FF */	li r0, -1
/* 805B61B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B61B8  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B61BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B61C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B61C4  38 80 00 00 */	li r4, 0
/* 805B61C8  7C BB BA 2E */	lhzx r5, r27, r23
/* 805B61CC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805B61D0  38 E0 00 00 */	li r7, 0
/* 805B61D4  39 00 00 00 */	li r8, 0
/* 805B61D8  39 20 00 00 */	li r9, 0
/* 805B61DC  39 40 00 FF */	li r10, 0xff
/* 805B61E0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B61E4  4B A9 68 AD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B61E8  7C 7C 1B 79 */	or. r28, r3, r3
/* 805B61EC  41 82 00 4C */	beq lbl_805B6238
/* 805B61F0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B61F4  80 63 00 04 */	lwz r3, 4(r3)
/* 805B61F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B61FC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 805B6200  38 7D 01 8C */	addi r3, r29, 0x18c
/* 805B6204  7C 03 C0 2E */	lwzx r0, r3, r24
/* 805B6208  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805B620C  7C 64 02 14 */	add r3, r4, r0
/* 805B6210  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805B6214  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805B6218  80 84 00 00 */	lwz r4, 0(r4)
/* 805B621C  4B D9 02 95 */	bl PSMTXCopy
/* 805B6220  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B6224  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B6228  80 63 00 00 */	lwz r3, 0(r3)
/* 805B622C  38 9C 00 68 */	addi r4, r28, 0x68
/* 805B6230  38 BC 00 A4 */	addi r5, r28, 0xa4
/* 805B6234  4B CC A5 AD */	bl func_802807E0
lbl_805B6238:
/* 805B6238  3B 39 00 01 */	addi r25, r25, 1
/* 805B623C  2C 19 00 13 */	cmpwi r25, 0x13
/* 805B6240  3B 18 00 04 */	addi r24, r24, 4
/* 805B6244  3A F7 00 02 */	addi r23, r23, 2
/* 805B6248  41 80 FF 5C */	blt lbl_805B61A4
lbl_805B624C:
/* 805B624C  39 61 00 60 */	addi r11, r1, 0x60
/* 805B6250  4B DA BF C1 */	bl _restgpr_23
/* 805B6254  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B6258  7C 08 03 A6 */	mtlr r0
/* 805B625C  38 21 00 60 */	addi r1, r1, 0x60
/* 805B6260  4E 80 00 20 */	blr 
