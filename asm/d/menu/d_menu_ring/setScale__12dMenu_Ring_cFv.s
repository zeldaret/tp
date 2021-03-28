lbl_801EC20C:
/* 801EC20C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EC210  7C 08 02 A6 */	mflr r0
/* 801EC214  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EC218  39 61 00 20 */	addi r11, r1, 0x20
/* 801EC21C  48 17 5F B5 */	bl _savegpr_26
/* 801EC220  7C 7E 1B 78 */	mr r30, r3
/* 801EC224  3B E0 00 00 */	li r31, 0
/* 801EC228  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801EC22C  3B 83 FA FC */	addi r28, r3, g_ringHIO@l
/* 801EC230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EC234  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EC238  3B 63 00 9C */	addi r27, r3, 0x9c
/* 801EC23C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801EC240  3B A3 01 88 */	addi r29, r3, g_meter2_info@l
/* 801EC244  48 00 01 48 */	b lbl_801EC38C
lbl_801EC248:
/* 801EC248  88 1E 06 CF */	lbz r0, 0x6cf(r30)
/* 801EC24C  28 00 00 FF */	cmplwi r0, 0xff
/* 801EC250  41 82 00 88 */	beq lbl_801EC2D8
/* 801EC254  38 80 00 00 */	li r4, 0
/* 801EC258  2C 00 00 01 */	cmpwi r0, 1
/* 801EC25C  41 82 00 1C */	beq lbl_801EC278
/* 801EC260  40 80 00 1C */	bge lbl_801EC27C
/* 801EC264  2C 00 00 00 */	cmpwi r0, 0
/* 801EC268  40 80 00 08 */	bge lbl_801EC270
/* 801EC26C  48 00 00 10 */	b lbl_801EC27C
lbl_801EC270:
/* 801EC270  38 80 04 DE */	li r4, 0x4de
/* 801EC274  48 00 00 08 */	b lbl_801EC27C
lbl_801EC278:
/* 801EC278  38 80 04 E0 */	li r4, 0x4e0
lbl_801EC27C:
/* 801EC27C  7F C3 F3 78 */	mr r3, r30
/* 801EC280  48 00 01 31 */	bl setNameString__12dMenu_Ring_cFUl
/* 801EC284  7F C3 F3 78 */	mr r3, r30
/* 801EC288  7F E4 FB 78 */	mr r4, r31
/* 801EC28C  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 801EC290  4B FF F7 A9 */	bl setItemScale__12dMenu_Ring_cFif
/* 801EC294  3B 40 00 00 */	li r26, 0
lbl_801EC298:
/* 801EC298  88 1E 06 CF */	lbz r0, 0x6cf(r30)
/* 801EC29C  7C 1A 00 00 */	cmpw r26, r0
/* 801EC2A0  40 82 00 18 */	bne lbl_801EC2B8
/* 801EC2A4  7F C3 F3 78 */	mr r3, r30
/* 801EC2A8  7F 44 D3 78 */	mr r4, r26
/* 801EC2AC  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 801EC2B0  4B FF F8 09 */	bl setButtonScale__12dMenu_Ring_cFif
/* 801EC2B4  48 00 00 14 */	b lbl_801EC2C8
lbl_801EC2B8:
/* 801EC2B8  7F C3 F3 78 */	mr r3, r30
/* 801EC2BC  7F 44 D3 78 */	mr r4, r26
/* 801EC2C0  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 801EC2C4  4B FF F7 F5 */	bl setButtonScale__12dMenu_Ring_cFif
lbl_801EC2C8:
/* 801EC2C8  3B 5A 00 01 */	addi r26, r26, 1
/* 801EC2CC  2C 1A 00 02 */	cmpwi r26, 2
/* 801EC2D0  41 80 FF C8 */	blt lbl_801EC298
/* 801EC2D4  48 00 00 B4 */	b lbl_801EC388
lbl_801EC2D8:
/* 801EC2D8  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EC2DC  7C 1F 00 00 */	cmpw r31, r0
/* 801EC2E0  40 82 00 78 */	bne lbl_801EC358
/* 801EC2E4  88 1E 06 B0 */	lbz r0, 0x6b0(r30)
/* 801EC2E8  28 00 00 00 */	cmplwi r0, 0
/* 801EC2EC  41 82 00 14 */	beq lbl_801EC300
/* 801EC2F0  28 00 00 02 */	cmplwi r0, 2
/* 801EC2F4  41 82 00 0C */	beq lbl_801EC300
/* 801EC2F8  28 00 00 03 */	cmplwi r0, 3
/* 801EC2FC  40 82 00 5C */	bne lbl_801EC358
lbl_801EC300:
/* 801EC300  7F 63 DB 78 */	mr r3, r27
/* 801EC304  3B 5F 06 90 */	addi r26, r31, 0x690
/* 801EC308  7C 9E D0 AE */	lbzx r4, r30, r26
/* 801EC30C  38 A0 00 00 */	li r5, 0
/* 801EC310  4B E4 6D 21 */	bl getItem__17dSv_player_item_cCFib
/* 801EC314  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801EC318  38 83 01 65 */	addi r4, r3, 0x165
/* 801EC31C  88 BD 00 DC */	lbz r5, 0xdc(r29)
/* 801EC320  28 05 00 FF */	cmplwi r5, 0xff
/* 801EC324  41 82 00 18 */	beq lbl_801EC33C
/* 801EC328  7C 7E D0 AE */	lbzx r3, r30, r26
/* 801EC32C  38 05 00 0F */	addi r0, r5, 0xf
/* 801EC330  7C 03 00 00 */	cmpw r3, r0
/* 801EC334  40 82 00 08 */	bne lbl_801EC33C
/* 801EC338  38 80 01 6D */	li r4, 0x16d
lbl_801EC33C:
/* 801EC33C  7F C3 F3 78 */	mr r3, r30
/* 801EC340  48 00 00 71 */	bl setNameString__12dMenu_Ring_cFUl
/* 801EC344  7F C3 F3 78 */	mr r3, r30
/* 801EC348  7F E4 FB 78 */	mr r4, r31
/* 801EC34C  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 801EC350  4B FF F6 E9 */	bl setItemScale__12dMenu_Ring_cFif
/* 801EC354  48 00 00 14 */	b lbl_801EC368
lbl_801EC358:
/* 801EC358  7F C3 F3 78 */	mr r3, r30
/* 801EC35C  7F E4 FB 78 */	mr r4, r31
/* 801EC360  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 801EC364  4B FF F6 D5 */	bl setItemScale__12dMenu_Ring_cFif
lbl_801EC368:
/* 801EC368  3B 40 00 00 */	li r26, 0
lbl_801EC36C:
/* 801EC36C  7F C3 F3 78 */	mr r3, r30
/* 801EC370  7F 44 D3 78 */	mr r4, r26
/* 801EC374  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 801EC378  4B FF F7 41 */	bl setButtonScale__12dMenu_Ring_cFif
/* 801EC37C  3B 5A 00 01 */	addi r26, r26, 1
/* 801EC380  2C 1A 00 02 */	cmpwi r26, 2
/* 801EC384  41 80 FF E8 */	blt lbl_801EC36C
lbl_801EC388:
/* 801EC388  3B FF 00 01 */	addi r31, r31, 1
lbl_801EC38C:
/* 801EC38C  88 1E 06 AE */	lbz r0, 0x6ae(r30)
/* 801EC390  7C 1F 00 00 */	cmpw r31, r0
/* 801EC394  41 80 FE B4 */	blt lbl_801EC248
/* 801EC398  39 61 00 20 */	addi r11, r1, 0x20
/* 801EC39C  48 17 5E 81 */	bl _restgpr_26
/* 801EC3A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EC3A4  7C 08 03 A6 */	mtlr r0
/* 801EC3A8  38 21 00 20 */	addi r1, r1, 0x20
/* 801EC3AC  4E 80 00 20 */	blr 
