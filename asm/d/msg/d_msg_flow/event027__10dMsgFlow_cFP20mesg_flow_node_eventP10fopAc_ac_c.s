lbl_8024D004:
/* 8024D004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024D008  7C 08 02 A6 */	mflr r0
/* 8024D00C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024D010  39 61 00 20 */	addi r11, r1, 0x20
/* 8024D014  48 11 51 C9 */	bl _savegpr_29
/* 8024D018  7C 7E 1B 78 */	mr r30, r3
/* 8024D01C  7C 9D 23 78 */	mr r29, r4
/* 8024D020  38 81 00 0C */	addi r4, r1, 0xc
/* 8024D024  38 A1 00 0E */	addi r5, r1, 0xe
/* 8024D028  38 DD 00 04 */	addi r6, r29, 4
/* 8024D02C  4B FF E0 C5 */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024D030  7F C3 F3 78 */	mr r3, r30
/* 8024D034  38 81 00 08 */	addi r4, r1, 8
/* 8024D038  38 BD 00 04 */	addi r5, r29, 4
/* 8024D03C  4B FF E0 CD */	bl getParam__10dMsgFlow_cFPUcPUc
/* 8024D040  88 61 00 08 */	lbz r3, 8(r1)
/* 8024D044  28 03 00 01 */	cmplwi r3, 1
/* 8024D048  41 80 00 18 */	blt lbl_8024D060
/* 8024D04C  28 03 00 04 */	cmplwi r3, 4
/* 8024D050  40 80 00 10 */	bge lbl_8024D060
/* 8024D054  38 03 FF FF */	addi r0, r3, -1
/* 8024D058  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8024D05C  48 00 00 48 */	b lbl_8024D0A4
lbl_8024D060:
/* 8024D060  28 03 00 04 */	cmplwi r3, 4
/* 8024D064  40 82 00 20 */	bne lbl_8024D084
/* 8024D068  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8024D06C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8024D070  88 03 00 DC */	lbz r0, 0xdc(r3)
/* 8024D074  28 00 00 FF */	cmplwi r0, 0xff
/* 8024D078  41 82 00 2C */	beq lbl_8024D0A4
/* 8024D07C  7C 1F 03 78 */	mr r31, r0
/* 8024D080  48 00 00 24 */	b lbl_8024D0A4
lbl_8024D084:
/* 8024D084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D088  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D08C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024D090  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 8024D094  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 8024D098  4B DE 79 6D */	bl getEventReg__11dSv_event_cCFUs
/* 8024D09C  38 03 FF FF */	addi r0, r3, -1
/* 8024D0A0  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_8024D0A4:
/* 8024D0A4  88 01 00 09 */	lbz r0, 9(r1)
/* 8024D0A8  28 00 00 0B */	cmplwi r0, 0xb
/* 8024D0AC  41 81 02 FC */	bgt lbl_8024D3A8
/* 8024D0B0  3C 60 80 3C */	lis r3, lit_6503@ha /* 0x803C1EF0@ha */
/* 8024D0B4  38 63 1E F0 */	addi r3, r3, lit_6503@l /* 0x803C1EF0@l */
/* 8024D0B8  54 00 10 3A */	slwi r0, r0, 2
/* 8024D0BC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8024D0C0  7C 09 03 A6 */	mtctr r0
/* 8024D0C4  4E 80 04 20 */	bctr 
/* 8024D0C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D0CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D0D0  3B C3 00 9C */	addi r30, r3, 0x9c
/* 8024D0D4  7F C3 F3 78 */	mr r3, r30
/* 8024D0D8  38 1F 00 0F */	addi r0, r31, 0xf
/* 8024D0DC  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 8024D0E0  7F A4 EB 78 */	mr r4, r29
/* 8024D0E4  38 A0 00 00 */	li r5, 0
/* 8024D0E8  4B DE 5F 49 */	bl getItem__17dSv_player_item_cCFib
/* 8024D0EC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024D0F0  28 00 00 50 */	cmplwi r0, 0x50
/* 8024D0F4  40 82 00 14 */	bne lbl_8024D108
/* 8024D0F8  7F C3 F3 78 */	mr r3, r30
/* 8024D0FC  7F A4 EB 78 */	mr r4, r29
/* 8024D100  38 A0 00 70 */	li r5, 0x70
/* 8024D104  4B DE 5E B5 */	bl setItem__17dSv_player_item_cFiUc
lbl_8024D108:
/* 8024D108  A0 01 00 0E */	lhz r0, 0xe(r1)
/* 8024D10C  28 00 00 00 */	cmplwi r0, 0
/* 8024D110  41 82 00 20 */	beq lbl_8024D130
/* 8024D114  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D118  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D11C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8024D120  7F E4 FB 78 */	mr r4, r31
/* 8024D124  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024D128  4B DD E2 45 */	bl setItemBombNumCount__14dComIfG_play_cFUcs
/* 8024D12C  48 00 02 7C */	b lbl_8024D3A8
lbl_8024D130:
/* 8024D130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D138  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8024D13C  38 80 00 70 */	li r4, 0x70
/* 8024D140  4B DE 6F B9 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8024D144  7C 60 1B 78 */	mr r0, r3
/* 8024D148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D14C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D150  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8024D154  7F E4 FB 78 */	mr r4, r31
/* 8024D158  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024D15C  4B DD E2 11 */	bl setItemBombNumCount__14dComIfG_play_cFUcs
/* 8024D160  48 00 02 48 */	b lbl_8024D3A8
/* 8024D164  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D168  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D16C  3B A3 00 9C */	addi r29, r3, 0x9c
/* 8024D170  7F A3 EB 78 */	mr r3, r29
/* 8024D174  38 1F 00 0F */	addi r0, r31, 0xf
/* 8024D178  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8024D17C  7F C4 F3 78 */	mr r4, r30
/* 8024D180  38 A0 00 00 */	li r5, 0
/* 8024D184  4B DE 5E AD */	bl getItem__17dSv_player_item_cCFib
/* 8024D188  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024D18C  28 00 00 50 */	cmplwi r0, 0x50
/* 8024D190  40 82 00 14 */	bne lbl_8024D1A4
/* 8024D194  7F A3 EB 78 */	mr r3, r29
/* 8024D198  7F C4 F3 78 */	mr r4, r30
/* 8024D19C  38 A0 00 71 */	li r5, 0x71
/* 8024D1A0  4B DE 5E 19 */	bl setItem__17dSv_player_item_cFiUc
lbl_8024D1A4:
/* 8024D1A4  A0 01 00 0E */	lhz r0, 0xe(r1)
/* 8024D1A8  28 00 00 00 */	cmplwi r0, 0
/* 8024D1AC  41 82 00 20 */	beq lbl_8024D1CC
/* 8024D1B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D1B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D1B8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8024D1BC  7F E4 FB 78 */	mr r4, r31
/* 8024D1C0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024D1C4  4B DD E1 A9 */	bl setItemBombNumCount__14dComIfG_play_cFUcs
/* 8024D1C8  48 00 01 E0 */	b lbl_8024D3A8
lbl_8024D1CC:
/* 8024D1CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D1D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D1D4  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8024D1D8  38 80 00 71 */	li r4, 0x71
/* 8024D1DC  4B DE 6F 1D */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8024D1E0  7C 60 1B 78 */	mr r0, r3
/* 8024D1E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D1E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D1EC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8024D1F0  7F E4 FB 78 */	mr r4, r31
/* 8024D1F4  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024D1F8  4B DD E1 75 */	bl setItemBombNumCount__14dComIfG_play_cFUcs
/* 8024D1FC  48 00 01 AC */	b lbl_8024D3A8
/* 8024D200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D204  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D208  3B A3 00 9C */	addi r29, r3, 0x9c
/* 8024D20C  7F A3 EB 78 */	mr r3, r29
/* 8024D210  38 1F 00 0F */	addi r0, r31, 0xf
/* 8024D214  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8024D218  7F C4 F3 78 */	mr r4, r30
/* 8024D21C  38 A0 00 00 */	li r5, 0
/* 8024D220  4B DE 5E 11 */	bl getItem__17dSv_player_item_cCFib
/* 8024D224  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024D228  28 00 00 50 */	cmplwi r0, 0x50
/* 8024D22C  40 82 00 14 */	bne lbl_8024D240
/* 8024D230  7F A3 EB 78 */	mr r3, r29
/* 8024D234  7F C4 F3 78 */	mr r4, r30
/* 8024D238  38 A0 00 72 */	li r5, 0x72
/* 8024D23C  4B DE 5D 7D */	bl setItem__17dSv_player_item_cFiUc
lbl_8024D240:
/* 8024D240  A0 01 00 0E */	lhz r0, 0xe(r1)
/* 8024D244  28 00 00 00 */	cmplwi r0, 0
/* 8024D248  41 82 00 20 */	beq lbl_8024D268
/* 8024D24C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D254  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8024D258  7F E4 FB 78 */	mr r4, r31
/* 8024D25C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024D260  4B DD E1 0D */	bl setItemBombNumCount__14dComIfG_play_cFUcs
/* 8024D264  48 00 01 44 */	b lbl_8024D3A8
lbl_8024D268:
/* 8024D268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D26C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D270  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8024D274  38 80 00 72 */	li r4, 0x72
/* 8024D278  4B DE 6E 81 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8024D27C  7C 60 1B 78 */	mr r0, r3
/* 8024D280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D284  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D288  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8024D28C  7F E4 FB 78 */	mr r4, r31
/* 8024D290  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024D294  4B DD E0 D9 */	bl setItemBombNumCount__14dComIfG_play_cFUcs
/* 8024D298  48 00 01 10 */	b lbl_8024D3A8
/* 8024D29C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D2A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D2A4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8024D2A8  7F E4 FB 78 */	mr r4, r31
/* 8024D2AC  A0 01 00 0E */	lhz r0, 0xe(r1)
/* 8024D2B0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024D2B4  4B DD E0 B9 */	bl setItemBombNumCount__14dComIfG_play_cFUcs
/* 8024D2B8  48 00 00 F0 */	b lbl_8024D3A8
/* 8024D2BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D2C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D2C4  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024D2C8  38 1F 00 0F */	addi r0, r31, 0xf
/* 8024D2CC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024D2D0  38 A0 00 70 */	li r5, 0x70
/* 8024D2D4  4B DE 5C E5 */	bl setItem__17dSv_player_item_cFiUc
/* 8024D2D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D2DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D2E0  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8024D2E4  38 80 00 70 */	li r4, 0x70
/* 8024D2E8  4B DE 6E 11 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8024D2EC  7C 60 1B 78 */	mr r0, r3
/* 8024D2F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D2F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D2F8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8024D2FC  7F E4 FB 78 */	mr r4, r31
/* 8024D300  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024D304  4B DD E0 69 */	bl setItemBombNumCount__14dComIfG_play_cFUcs
/* 8024D308  48 00 00 A0 */	b lbl_8024D3A8
/* 8024D30C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D310  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D314  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024D318  38 1F 00 0F */	addi r0, r31, 0xf
/* 8024D31C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024D320  38 A0 00 71 */	li r5, 0x71
/* 8024D324  4B DE 5C 95 */	bl setItem__17dSv_player_item_cFiUc
/* 8024D328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D32C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D330  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8024D334  38 80 00 71 */	li r4, 0x71
/* 8024D338  4B DE 6D C1 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8024D33C  7C 60 1B 78 */	mr r0, r3
/* 8024D340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D348  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8024D34C  7F E4 FB 78 */	mr r4, r31
/* 8024D350  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024D354  4B DD E0 19 */	bl setItemBombNumCount__14dComIfG_play_cFUcs
/* 8024D358  48 00 00 50 */	b lbl_8024D3A8
/* 8024D35C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D360  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D364  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024D368  38 1F 00 0F */	addi r0, r31, 0xf
/* 8024D36C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024D370  38 A0 00 72 */	li r5, 0x72
/* 8024D374  4B DE 5C 45 */	bl setItem__17dSv_player_item_cFiUc
/* 8024D378  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D37C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D380  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8024D384  38 80 00 72 */	li r4, 0x72
/* 8024D388  4B DE 6D 71 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8024D38C  7C 60 1B 78 */	mr r0, r3
/* 8024D390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D398  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8024D39C  7F E4 FB 78 */	mr r4, r31
/* 8024D3A0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024D3A4  4B DD DF C9 */	bl setItemBombNumCount__14dComIfG_play_cFUcs
lbl_8024D3A8:
/* 8024D3A8  38 60 00 01 */	li r3, 1
/* 8024D3AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8024D3B0  48 11 4E 79 */	bl _restgpr_29
/* 8024D3B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024D3B8  7C 08 03 A6 */	mtlr r0
/* 8024D3BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8024D3C0  4E 80 00 20 */	blr 
