lbl_80259008:
/* 80259008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025900C  7C 08 02 A6 */	mflr r0
/* 80259010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80259014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80259018  7C 7F 1B 78 */	mr r31, r3
/* 8025901C  80 63 04 18 */	lwz r3, 0x418(r3)
/* 80259020  4B F3 A4 B1 */	bl _move__14dBrightCheck_cFv
/* 80259024  80 7F 04 18 */	lwz r3, 0x418(r31)
/* 80259028  88 03 00 19 */	lbz r0, 0x19(r3)
/* 8025902C  28 00 00 00 */	cmplwi r0, 0
/* 80259030  41 82 00 B4 */	beq lbl_802590E4
/* 80259034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80259038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025903C  80 03 01 A8 */	lwz r0, 0x1a8(r3)
/* 80259040  80 83 01 AC */	lwz r4, 0x1ac(r3)
/* 80259044  90 83 0F 34 */	stw r4, 0xf34(r3)
/* 80259048  90 03 0F 30 */	stw r0, 0xf30(r3)
/* 8025904C  48 0E 96 B1 */	bl OSGetTime
/* 80259050  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80259054  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80259058  90 85 0F 2C */	stw r4, 0xf2c(r5)
/* 8025905C  90 65 0F 28 */	stw r3, 0xf28(r5)
/* 80259060  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80259064  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80259068  38 80 00 2D */	li r4, 0x2d
/* 8025906C  38 A0 00 00 */	li r5, 0
/* 80259070  48 05 63 99 */	bl bgmStop__8Z2SeqMgrFUll
/* 80259074  38 00 00 00 */	li r0, 0
/* 80259078  98 1F 04 1F */	stb r0, 0x41f(r31)
/* 8025907C  38 00 00 05 */	li r0, 5
/* 80259080  98 1F 04 1D */	stb r0, 0x41d(r31)
/* 80259084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80259088  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025908C  3B E3 00 CC */	addi r31, r3, 0xcc
/* 80259090  7F E3 FB 78 */	mr r3, r31
/* 80259094  38 80 00 01 */	li r4, 1
/* 80259098  4B DD AD FD */	bl offFirstBit__21dSv_player_get_item_cFUc
/* 8025909C  7F E3 FB 78 */	mr r3, r31
/* 802590A0  38 80 00 02 */	li r4, 2
/* 802590A4  4B DD AD F1 */	bl offFirstBit__21dSv_player_get_item_cFUc
/* 802590A8  7F E3 FB 78 */	mr r3, r31
/* 802590AC  38 80 00 03 */	li r4, 3
/* 802590B0  4B DD AD E5 */	bl offFirstBit__21dSv_player_get_item_cFUc
/* 802590B4  7F E3 FB 78 */	mr r3, r31
/* 802590B8  38 80 00 04 */	li r4, 4
/* 802590BC  4B DD AD D9 */	bl offFirstBit__21dSv_player_get_item_cFUc
/* 802590C0  7F E3 FB 78 */	mr r3, r31
/* 802590C4  38 80 00 05 */	li r4, 5
/* 802590C8  4B DD AD CD */	bl offFirstBit__21dSv_player_get_item_cFUc
/* 802590CC  7F E3 FB 78 */	mr r3, r31
/* 802590D0  38 80 00 06 */	li r4, 6
/* 802590D4  4B DD AD C1 */	bl offFirstBit__21dSv_player_get_item_cFUc
/* 802590D8  7F E3 FB 78 */	mr r3, r31
/* 802590DC  38 80 00 07 */	li r4, 7
/* 802590E0  4B DD AD B5 */	bl offFirstBit__21dSv_player_get_item_cFUc
lbl_802590E4:
/* 802590E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802590E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802590EC  7C 08 03 A6 */	mtlr r0
/* 802590F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802590F4  4E 80 00 20 */	blr 
