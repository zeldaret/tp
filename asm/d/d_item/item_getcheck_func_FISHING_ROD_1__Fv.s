lbl_8009A0C8:
/* 8009A0C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009A0CC  7C 08 02 A6 */	mflr r0
/* 8009A0D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009A0D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8009A0D8  48 2C 80 F9 */	bl _savegpr_26
/* 8009A0DC  3B E0 00 01 */	li r31, 1
/* 8009A0E0  7F FE FB 78 */	mr r30, r31
/* 8009A0E4  7F FD FB 78 */	mr r29, r31
/* 8009A0E8  7F FC FB 78 */	mr r28, r31
/* 8009A0EC  7F FB FB 78 */	mr r27, r31
/* 8009A0F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009A0F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009A0F8  3B 43 00 9C */	addi r26, r3, 0x9c
/* 8009A0FC  7F 43 D3 78 */	mr r3, r26
/* 8009A100  38 80 00 14 */	li r4, 0x14
/* 8009A104  38 A0 00 01 */	li r5, 1
/* 8009A108  4B F9 8F 29 */	bl getItem__17dSv_player_item_cCFib
/* 8009A10C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009A110  28 00 00 4A */	cmplwi r0, 0x4a
/* 8009A114  41 82 00 24 */	beq lbl_8009A138
/* 8009A118  7F 43 D3 78 */	mr r3, r26
/* 8009A11C  38 80 00 14 */	li r4, 0x14
/* 8009A120  38 A0 00 01 */	li r5, 1
/* 8009A124  4B F9 8F 0D */	bl getItem__17dSv_player_item_cCFib
/* 8009A128  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009A12C  28 00 00 5B */	cmplwi r0, 0x5b
/* 8009A130  41 82 00 08 */	beq lbl_8009A138
/* 8009A134  3B 60 00 00 */	li r27, 0
lbl_8009A138:
/* 8009A138  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8009A13C  40 82 00 24 */	bne lbl_8009A160
/* 8009A140  7F 43 D3 78 */	mr r3, r26
/* 8009A144  38 80 00 14 */	li r4, 0x14
/* 8009A148  38 A0 00 01 */	li r5, 1
/* 8009A14C  4B F9 8E E5 */	bl getItem__17dSv_player_item_cCFib
/* 8009A150  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009A154  28 00 00 5D */	cmplwi r0, 0x5d
/* 8009A158  41 82 00 08 */	beq lbl_8009A160
/* 8009A15C  3B 80 00 00 */	li r28, 0
lbl_8009A160:
/* 8009A160  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8009A164  40 82 00 24 */	bne lbl_8009A188
/* 8009A168  7F 43 D3 78 */	mr r3, r26
/* 8009A16C  38 80 00 14 */	li r4, 0x14
/* 8009A170  38 A0 00 01 */	li r5, 1
/* 8009A174  4B F9 8E BD */	bl getItem__17dSv_player_item_cCFib
/* 8009A178  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009A17C  28 00 00 5C */	cmplwi r0, 0x5c
/* 8009A180  41 82 00 08 */	beq lbl_8009A188
/* 8009A184  3B A0 00 00 */	li r29, 0
lbl_8009A188:
/* 8009A188  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8009A18C  40 82 00 24 */	bne lbl_8009A1B0
/* 8009A190  7F 43 D3 78 */	mr r3, r26
/* 8009A194  38 80 00 14 */	li r4, 0x14
/* 8009A198  38 A0 00 01 */	li r5, 1
/* 8009A19C  4B F9 8E 95 */	bl getItem__17dSv_player_item_cCFib
/* 8009A1A0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009A1A4  28 00 00 5E */	cmplwi r0, 0x5e
/* 8009A1A8  41 82 00 08 */	beq lbl_8009A1B0
/* 8009A1AC  3B C0 00 00 */	li r30, 0
lbl_8009A1B0:
/* 8009A1B0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8009A1B4  40 82 00 24 */	bne lbl_8009A1D8
/* 8009A1B8  7F 43 D3 78 */	mr r3, r26
/* 8009A1BC  38 80 00 14 */	li r4, 0x14
/* 8009A1C0  38 A0 00 01 */	li r5, 1
/* 8009A1C4  4B F9 8E 6D */	bl getItem__17dSv_player_item_cCFib
/* 8009A1C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009A1CC  28 00 00 5F */	cmplwi r0, 0x5f
/* 8009A1D0  41 82 00 08 */	beq lbl_8009A1D8
/* 8009A1D4  3B E0 00 00 */	li r31, 0
lbl_8009A1D8:
/* 8009A1D8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8009A1DC  30 03 FF FF */	addic r0, r3, -1
/* 8009A1E0  7C 60 19 10 */	subfe r3, r0, r3
/* 8009A1E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8009A1E8  48 2C 80 35 */	bl _restgpr_26
/* 8009A1EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009A1F0  7C 08 03 A6 */	mtlr r0
/* 8009A1F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8009A1F8  4E 80 00 20 */	blr 
