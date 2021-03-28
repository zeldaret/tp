lbl_801B39D0:
/* 801B39D0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801B39D4  7C 08 02 A6 */	mflr r0
/* 801B39D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 801B39DC  39 61 00 60 */	addi r11, r1, 0x60
/* 801B39E0  48 1A E7 F5 */	bl _savegpr_27
/* 801B39E4  7C 7D 1B 78 */	mr r29, r3
/* 801B39E8  7C 9E 23 78 */	mr r30, r4
/* 801B39EC  2C 1E FF FF */	cmpwi r30, -1
/* 801B39F0  40 82 01 BC */	bne lbl_801B3BAC
/* 801B39F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B39F8  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 801B39FC  88 85 00 14 */	lbz r4, 0x14(r5)
/* 801B3A00  88 7D 02 5B */	lbz r3, 0x25b(r29)
/* 801B3A04  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801B3A08  7C 03 00 40 */	cmplw r3, r0
/* 801B3A0C  41 82 02 D0 */	beq lbl_801B3CDC
/* 801B3A10  98 9D 02 5B */	stb r4, 0x25b(r29)
/* 801B3A14  88 1D 02 5B */	lbz r0, 0x25b(r29)
/* 801B3A18  2C 00 00 3F */	cmpwi r0, 0x3f
/* 801B3A1C  41 82 00 34 */	beq lbl_801B3A50
/* 801B3A20  40 80 00 1C */	bge lbl_801B3A3C
/* 801B3A24  2C 00 00 29 */	cmpwi r0, 0x29
/* 801B3A28  41 82 00 30 */	beq lbl_801B3A58
/* 801B3A2C  40 80 00 4C */	bge lbl_801B3A78
/* 801B3A30  2C 00 00 28 */	cmpwi r0, 0x28
/* 801B3A34  40 80 00 14 */	bge lbl_801B3A48
/* 801B3A38  48 00 00 40 */	b lbl_801B3A78
lbl_801B3A3C:
/* 801B3A3C  2C 00 00 49 */	cmpwi r0, 0x49
/* 801B3A40  41 82 00 20 */	beq lbl_801B3A60
/* 801B3A44  48 00 00 34 */	b lbl_801B3A78
lbl_801B3A48:
/* 801B3A48  3B C0 00 00 */	li r30, 0
/* 801B3A4C  48 00 00 2C */	b lbl_801B3A78
lbl_801B3A50:
/* 801B3A50  3B C0 00 00 */	li r30, 0
/* 801B3A54  48 00 00 24 */	b lbl_801B3A78
lbl_801B3A58:
/* 801B3A58  3B C0 00 01 */	li r30, 1
/* 801B3A5C  48 00 00 1C */	b lbl_801B3A78
lbl_801B3A60:
/* 801B3A60  38 65 00 CC */	addi r3, r5, 0xcc
/* 801B3A64  38 80 00 49 */	li r4, 0x49
/* 801B3A68  4B E8 04 61 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B3A6C  2C 03 00 00 */	cmpwi r3, 0
/* 801B3A70  41 82 00 08 */	beq lbl_801B3A78
/* 801B3A74  3B C0 00 01 */	li r30, 1
lbl_801B3A78:
/* 801B3A78  3B E0 00 00 */	li r31, 0
/* 801B3A7C  3B 60 00 00 */	li r27, 0
/* 801B3A80  3B 80 00 00 */	li r28, 0
lbl_801B3A84:
/* 801B3A84  7C 1F F0 00 */	cmpw r31, r30
/* 801B3A88  40 82 00 90 */	bne lbl_801B3B18
/* 801B3A8C  38 1C 02 3F */	addi r0, r28, 0x23f
/* 801B3A90  7C 1D 00 AE */	lbzx r0, r29, r0
/* 801B3A94  28 00 00 00 */	cmplwi r0, 0
/* 801B3A98  41 82 00 80 */	beq lbl_801B3B18
/* 801B3A9C  38 00 00 FF */	li r0, 0xff
/* 801B3AA0  98 01 00 38 */	stb r0, 0x38(r1)
/* 801B3AA4  98 01 00 39 */	stb r0, 0x39(r1)
/* 801B3AA8  38 60 00 00 */	li r3, 0
/* 801B3AAC  98 61 00 3A */	stb r3, 0x3a(r1)
/* 801B3AB0  98 01 00 3B */	stb r0, 0x3b(r1)
/* 801B3AB4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801B3AB8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801B3ABC  98 61 00 40 */	stb r3, 0x40(r1)
/* 801B3AC0  98 61 00 41 */	stb r3, 0x41(r1)
/* 801B3AC4  98 61 00 42 */	stb r3, 0x42(r1)
/* 801B3AC8  98 61 00 43 */	stb r3, 0x43(r1)
/* 801B3ACC  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801B3AD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801B3AD4  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801B3AD8  3C 80 80 39 */	lis r4, tag_5980@ha
/* 801B3ADC  38 04 50 98 */	addi r0, r4, tag_5980@l
/* 801B3AE0  7C 80 DA 14 */	add r4, r0, r27
/* 801B3AE4  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B3AE8  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B3AEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3AF0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B3AF4  7D 89 03 A6 */	mtctr r12
/* 801B3AF8  4E 80 04 21 */	bctrl 
/* 801B3AFC  38 81 00 44 */	addi r4, r1, 0x44
/* 801B3B00  38 A1 00 3C */	addi r5, r1, 0x3c
/* 801B3B04  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3B08  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801B3B0C  7D 89 03 A6 */	mtctr r12
/* 801B3B10  4E 80 04 21 */	bctrl 
/* 801B3B14  48 00 00 80 */	b lbl_801B3B94
lbl_801B3B18:
/* 801B3B18  38 00 00 6B */	li r0, 0x6b
/* 801B3B1C  98 01 00 28 */	stb r0, 0x28(r1)
/* 801B3B20  98 01 00 29 */	stb r0, 0x29(r1)
/* 801B3B24  98 01 00 2A */	stb r0, 0x2a(r1)
/* 801B3B28  38 00 00 FF */	li r0, 0xff
/* 801B3B2C  98 01 00 2B */	stb r0, 0x2b(r1)
/* 801B3B30  80 01 00 28 */	lwz r0, 0x28(r1)
/* 801B3B34  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801B3B38  38 00 00 00 */	li r0, 0
/* 801B3B3C  98 01 00 30 */	stb r0, 0x30(r1)
/* 801B3B40  98 01 00 31 */	stb r0, 0x31(r1)
/* 801B3B44  98 01 00 32 */	stb r0, 0x32(r1)
/* 801B3B48  98 01 00 33 */	stb r0, 0x33(r1)
/* 801B3B4C  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801B3B50  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B3B54  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801B3B58  3C 80 80 39 */	lis r4, tag_5980@ha
/* 801B3B5C  38 04 50 98 */	addi r0, r4, tag_5980@l
/* 801B3B60  7C 80 DA 14 */	add r4, r0, r27
/* 801B3B64  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B3B68  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B3B6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3B70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B3B74  7D 89 03 A6 */	mtctr r12
/* 801B3B78  4E 80 04 21 */	bctrl 
/* 801B3B7C  38 81 00 34 */	addi r4, r1, 0x34
/* 801B3B80  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801B3B84  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3B88  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801B3B8C  7D 89 03 A6 */	mtctr r12
/* 801B3B90  4E 80 04 21 */	bctrl 
lbl_801B3B94:
/* 801B3B94  3B FF 00 01 */	addi r31, r31, 1
/* 801B3B98  2C 1F 00 02 */	cmpwi r31, 2
/* 801B3B9C  3B 7B 00 08 */	addi r27, r27, 8
/* 801B3BA0  3B 9C 00 06 */	addi r28, r28, 6
/* 801B3BA4  41 80 FE E0 */	blt lbl_801B3A84
/* 801B3BA8  48 00 01 34 */	b lbl_801B3CDC
lbl_801B3BAC:
/* 801B3BAC  3B E0 00 00 */	li r31, 0
/* 801B3BB0  3B 80 00 00 */	li r28, 0
/* 801B3BB4  3B 60 00 00 */	li r27, 0
lbl_801B3BB8:
/* 801B3BB8  7C 1F F0 00 */	cmpw r31, r30
/* 801B3BBC  40 82 00 90 */	bne lbl_801B3C4C
/* 801B3BC0  38 1B 02 3F */	addi r0, r27, 0x23f
/* 801B3BC4  7C 1D 00 AE */	lbzx r0, r29, r0
/* 801B3BC8  28 00 00 00 */	cmplwi r0, 0
/* 801B3BCC  41 82 00 80 */	beq lbl_801B3C4C
/* 801B3BD0  38 00 00 FF */	li r0, 0xff
/* 801B3BD4  98 01 00 18 */	stb r0, 0x18(r1)
/* 801B3BD8  98 01 00 19 */	stb r0, 0x19(r1)
/* 801B3BDC  38 60 00 00 */	li r3, 0
/* 801B3BE0  98 61 00 1A */	stb r3, 0x1a(r1)
/* 801B3BE4  98 01 00 1B */	stb r0, 0x1b(r1)
/* 801B3BE8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801B3BEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801B3BF0  98 61 00 20 */	stb r3, 0x20(r1)
/* 801B3BF4  98 61 00 21 */	stb r3, 0x21(r1)
/* 801B3BF8  98 61 00 22 */	stb r3, 0x22(r1)
/* 801B3BFC  98 61 00 23 */	stb r3, 0x23(r1)
/* 801B3C00  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801B3C04  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B3C08  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801B3C0C  3C 80 80 39 */	lis r4, tag_5980@ha
/* 801B3C10  38 04 50 98 */	addi r0, r4, tag_5980@l
/* 801B3C14  7C 80 E2 14 */	add r4, r0, r28
/* 801B3C18  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B3C1C  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B3C20  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3C24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B3C28  7D 89 03 A6 */	mtctr r12
/* 801B3C2C  4E 80 04 21 */	bctrl 
/* 801B3C30  38 81 00 24 */	addi r4, r1, 0x24
/* 801B3C34  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801B3C38  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3C3C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801B3C40  7D 89 03 A6 */	mtctr r12
/* 801B3C44  4E 80 04 21 */	bctrl 
/* 801B3C48  48 00 00 80 */	b lbl_801B3CC8
lbl_801B3C4C:
/* 801B3C4C  38 00 00 6B */	li r0, 0x6b
/* 801B3C50  98 01 00 08 */	stb r0, 8(r1)
/* 801B3C54  98 01 00 09 */	stb r0, 9(r1)
/* 801B3C58  98 01 00 0A */	stb r0, 0xa(r1)
/* 801B3C5C  38 00 00 FF */	li r0, 0xff
/* 801B3C60  98 01 00 0B */	stb r0, 0xb(r1)
/* 801B3C64  80 01 00 08 */	lwz r0, 8(r1)
/* 801B3C68  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B3C6C  38 00 00 00 */	li r0, 0
/* 801B3C70  98 01 00 10 */	stb r0, 0x10(r1)
/* 801B3C74  98 01 00 11 */	stb r0, 0x11(r1)
/* 801B3C78  98 01 00 12 */	stb r0, 0x12(r1)
/* 801B3C7C  98 01 00 13 */	stb r0, 0x13(r1)
/* 801B3C80  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801B3C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B3C88  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801B3C8C  3C 80 80 39 */	lis r4, tag_5980@ha
/* 801B3C90  38 04 50 98 */	addi r0, r4, tag_5980@l
/* 801B3C94  7C 80 E2 14 */	add r4, r0, r28
/* 801B3C98  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B3C9C  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B3CA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3CA4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B3CA8  7D 89 03 A6 */	mtctr r12
/* 801B3CAC  4E 80 04 21 */	bctrl 
/* 801B3CB0  38 81 00 14 */	addi r4, r1, 0x14
/* 801B3CB4  38 A1 00 0C */	addi r5, r1, 0xc
/* 801B3CB8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3CBC  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801B3CC0  7D 89 03 A6 */	mtctr r12
/* 801B3CC4  4E 80 04 21 */	bctrl 
lbl_801B3CC8:
/* 801B3CC8  3B FF 00 01 */	addi r31, r31, 1
/* 801B3CCC  2C 1F 00 02 */	cmpwi r31, 2
/* 801B3CD0  3B 9C 00 08 */	addi r28, r28, 8
/* 801B3CD4  3B 7B 00 06 */	addi r27, r27, 6
/* 801B3CD8  41 80 FE E0 */	blt lbl_801B3BB8
lbl_801B3CDC:
/* 801B3CDC  39 61 00 60 */	addi r11, r1, 0x60
/* 801B3CE0  48 1A E5 41 */	bl _restgpr_27
/* 801B3CE4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801B3CE8  7C 08 03 A6 */	mtlr r0
/* 801B3CEC  38 21 00 60 */	addi r1, r1, 0x60
/* 801B3CF0  4E 80 00 20 */	blr 
