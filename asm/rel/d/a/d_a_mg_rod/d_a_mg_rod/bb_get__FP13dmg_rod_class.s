lbl_804B40B8:
/* 804B40B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B40BC  7C 08 02 A6 */	mflr r0
/* 804B40C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B40C4  39 61 00 20 */	addi r11, r1, 0x20
/* 804B40C8  4B EA E1 0D */	bl _savegpr_27
/* 804B40CC  3B 60 00 00 */	li r27, 0
/* 804B40D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B40D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B40D8  3B 83 00 9C */	addi r28, r3, 0x9c
/* 804B40DC  3B C3 00 F8 */	addi r30, r3, 0xf8
/* 804B40E0  3B A3 00 EC */	addi r29, r3, 0xec
lbl_804B40E4:
/* 804B40E4  7F 83 E3 78 */	mr r3, r28
/* 804B40E8  38 9B 00 0F */	addi r4, r27, 0xf
/* 804B40EC  38 A0 00 00 */	li r5, 0
/* 804B40F0  4B B7 EF 41 */	bl getItem__17dSv_player_item_cCFib
/* 804B40F4  7C 64 1B 78 */	mr r4, r3
/* 804B40F8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804B40FC  28 00 00 FF */	cmplwi r0, 0xff
/* 804B4100  41 82 00 78 */	beq lbl_804B4178
/* 804B4104  28 00 00 50 */	cmplwi r0, 0x50
/* 804B4108  40 82 00 20 */	bne lbl_804B4128
/* 804B410C  7F 83 E3 78 */	mr r3, r28
/* 804B4110  38 80 00 71 */	li r4, 0x71
/* 804B4114  38 A0 00 01 */	li r5, 1
/* 804B4118  38 C0 00 01 */	li r6, 1
/* 804B411C  4B B7 F9 35 */	bl setEmptyBombBagItemIn__17dSv_player_item_cFUcUcb
/* 804B4120  38 60 00 01 */	li r3, 1
/* 804B4124  48 00 00 64 */	b lbl_804B4188
lbl_804B4128:
/* 804B4128  28 00 00 71 */	cmplwi r0, 0x71
/* 804B412C  40 82 00 4C */	bne lbl_804B4178
/* 804B4130  7F C3 F3 78 */	mr r3, r30
/* 804B4134  4B B7 FF C5 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 804B4138  7C 7F 1B 78 */	mr r31, r3
/* 804B413C  7F A3 EB 78 */	mr r3, r29
/* 804B4140  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 804B4144  4B B7 FE 39 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 804B4148  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 804B414C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 804B4150  7C 03 00 40 */	cmplw r3, r0
/* 804B4154  40 80 00 24 */	bge lbl_804B4178
/* 804B4158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B415C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B4160  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804B4164  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 804B4168  38 A0 00 01 */	li r5, 1
/* 804B416C  4B B7 72 01 */	bl setItemBombNumCount__14dComIfG_play_cFUcs
/* 804B4170  38 60 00 01 */	li r3, 1
/* 804B4174  48 00 00 14 */	b lbl_804B4188
lbl_804B4178:
/* 804B4178  3B 7B 00 01 */	addi r27, r27, 1
/* 804B417C  2C 1B 00 03 */	cmpwi r27, 3
/* 804B4180  41 80 FF 64 */	blt lbl_804B40E4
/* 804B4184  38 60 00 00 */	li r3, 0
lbl_804B4188:
/* 804B4188  39 61 00 20 */	addi r11, r1, 0x20
/* 804B418C  4B EA E0 95 */	bl _restgpr_27
/* 804B4190  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B4194  7C 08 03 A6 */	mtlr r0
/* 804B4198  38 21 00 20 */	addi r1, r1, 0x20
/* 804B419C  4E 80 00 20 */	blr 
