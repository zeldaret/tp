lbl_80224A04:
/* 80224A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224A08  7C 08 02 A6 */	mflr r0
/* 80224A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224A10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224A14  93 C1 00 08 */	stw r30, 8(r1)
/* 80224A18  7C 7F 1B 78 */	mr r31, r3
/* 80224A1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80224A20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80224A24  A0 03 00 06 */	lhz r0, 6(r3)
/* 80224A28  28 00 00 00 */	cmplwi r0, 0
/* 80224A2C  41 82 01 48 */	beq lbl_80224B74
/* 80224A30  38 63 00 9C */	addi r3, r3, 0x9c
/* 80224A34  38 80 00 01 */	li r4, 1
/* 80224A38  38 A0 00 01 */	li r5, 1
/* 80224A3C  4B E0 E5 F5 */	bl getItem__17dSv_player_item_cCFib
/* 80224A40  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80224A44  28 00 00 48 */	cmplwi r0, 0x48
/* 80224A48  40 82 01 2C */	bne lbl_80224B74
/* 80224A4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80224A50  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80224A54  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80224A58  38 80 00 00 */	li r4, 0
/* 80224A5C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80224A60  81 8C 01 CC */	lwz r12, 0x1cc(r12)
/* 80224A64  7D 89 03 A6 */	mtctr r12
/* 80224A68  4E 80 04 21 */	bctrl 
/* 80224A6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80224A70  41 82 01 04 */	beq lbl_80224B74
/* 80224A74  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80224A78  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80224A7C  40 82 00 F8 */	bne lbl_80224B74
/* 80224A80  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80224A84  41 82 00 30 */	beq lbl_80224AB4
/* 80224A88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80224A8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80224A90  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80224A94  28 00 00 00 */	cmplwi r0, 0
/* 80224A98  41 82 00 10 */	beq lbl_80224AA8
/* 80224A9C  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80224AA0  54 00 05 6A */	rlwinm r0, r0, 0, 0x15, 0x15
/* 80224AA4  48 00 00 08 */	b lbl_80224AAC
lbl_80224AA8:
/* 80224AA8  38 00 00 00 */	li r0, 0
lbl_80224AAC:
/* 80224AAC  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 80224AB0  40 82 00 C4 */	bne lbl_80224B74
lbl_80224AB4:
/* 80224AB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80224AB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80224ABC  88 03 5E B7 */	lbz r0, 0x5eb7(r3)
/* 80224AC0  28 00 00 00 */	cmplwi r0, 0
/* 80224AC4  40 82 00 B0 */	bne lbl_80224B74
/* 80224AC8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80224ACC  38 00 00 00 */	li r0, 0
/* 80224AD0  88 64 05 6A */	lbz r3, 0x56a(r4)
/* 80224AD4  28 03 00 00 */	cmplwi r3, 0
/* 80224AD8  41 82 00 10 */	beq lbl_80224AE8
/* 80224ADC  28 03 00 26 */	cmplwi r3, 0x26
/* 80224AE0  40 80 00 08 */	bge lbl_80224AE8
/* 80224AE4  38 00 00 01 */	li r0, 1
lbl_80224AE8:
/* 80224AE8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80224AEC  40 82 00 88 */	bne lbl_80224B74
/* 80224AF0  88 04 05 6A */	lbz r0, 0x56a(r4)
/* 80224AF4  28 00 00 2D */	cmplwi r0, 0x2d
/* 80224AF8  40 82 00 30 */	bne lbl_80224B28
/* 80224AFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80224B00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80224B04  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80224B08  7F C3 F3 78 */	mr r3, r30
/* 80224B0C  4B E0 80 B1 */	bl getTimerMode__14dComIfG_play_cFv
/* 80224B10  2C 03 00 03 */	cmpwi r3, 3
/* 80224B14  41 82 00 60 */	beq lbl_80224B74
/* 80224B18  7F C3 F3 78 */	mr r3, r30
/* 80224B1C  4B E0 80 A1 */	bl getTimerMode__14dComIfG_play_cFv
/* 80224B20  2C 03 00 04 */	cmpwi r3, 4
/* 80224B24  41 82 00 50 */	beq lbl_80224B74
lbl_80224B28:
/* 80224B28  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80224B2C  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 80224B30  40 82 00 44 */	bne lbl_80224B74
/* 80224B34  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80224B38  40 82 00 3C */	bne lbl_80224B74
/* 80224B3C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80224B40  40 82 00 34 */	bne lbl_80224B74
/* 80224B44  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80224B48  40 82 00 2C */	bne lbl_80224B74
/* 80224B4C  54 60 01 CF */	rlwinm. r0, r3, 0, 7, 7
/* 80224B50  40 82 00 24 */	bne lbl_80224B74
/* 80224B54  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80224B58  40 82 00 1C */	bne lbl_80224B74
/* 80224B5C  54 60 01 4B */	rlwinm. r0, r3, 0, 5, 5
/* 80224B60  40 82 00 14 */	bne lbl_80224B74
/* 80224B64  54 60 01 09 */	rlwinm. r0, r3, 0, 4, 4
/* 80224B68  40 82 00 0C */	bne lbl_80224B74
/* 80224B6C  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 80224B70  41 82 00 10 */	beq lbl_80224B80
lbl_80224B74:
/* 80224B74  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80224B78  4B FF 0B 69 */	bl setAlphaKanteraAnimeMin__13dMeter2Draw_cFv
/* 80224B7C  48 00 00 0C */	b lbl_80224B88
lbl_80224B80:
/* 80224B80  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80224B84  4B FF 0B D9 */	bl setAlphaKanteraAnimeMax__13dMeter2Draw_cFv
lbl_80224B88:
/* 80224B88  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80224B8C  38 80 00 01 */	li r4, 1
/* 80224B90  4B FF 0A 29 */	bl setAlphaKanteraChange__13dMeter2Draw_cFb
/* 80224B94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224B98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80224B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224BA0  7C 08 03 A6 */	mtlr r0
/* 80224BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80224BA8  4E 80 00 20 */	blr 
