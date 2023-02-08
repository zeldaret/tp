lbl_8025D3BC:
/* 8025D3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025D3C0  7C 08 02 A6 */	mflr r0
/* 8025D3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025D3C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025D3CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8025D3D0  7C 7F 1B 78 */	mr r31, r3
/* 8025D3D4  80 63 01 00 */	lwz r3, 0x100(r3)
/* 8025D3D8  28 03 00 00 */	cmplwi r3, 0
/* 8025D3DC  41 82 00 5C */	beq lbl_8025D438
/* 8025D3E0  4B DB 1D ED */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8025D3E4  7C 7E 1B 78 */	mr r30, r3
/* 8025D3E8  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8025D3EC  48 07 13 99 */	bl getTotalFreeSize__7JKRHeapFv
/* 8025D3F0  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D3F4  48 00 18 69 */	bl deleteScreen__21dDlst_TimerScrnDraw_cFv
/* 8025D3F8  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D3FC  28 03 00 00 */	cmplwi r3, 0
/* 8025D400  41 82 00 18 */	beq lbl_8025D418
/* 8025D404  38 80 00 01 */	li r4, 1
/* 8025D408  81 83 00 00 */	lwz r12, 0(r3)
/* 8025D40C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8025D410  7D 89 03 A6 */	mtctr r12
/* 8025D414  4E 80 04 21 */	bctrl 
lbl_8025D418:
/* 8025D418  38 00 00 00 */	li r0, 0
/* 8025D41C  90 1F 00 FC */	stw r0, 0xfc(r31)
/* 8025D420  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8025D424  4B DC 2F BD */	bl fopMsgM_destroyExpHeap__FP10JKRExpHeap
/* 8025D428  38 00 00 00 */	li r0, 0
/* 8025D42C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 8025D430  7F C3 F3 78 */	mr r3, r30
/* 8025D434  4B DB 1D 99 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
lbl_8025D438:
/* 8025D438  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 8025D43C  2C 00 00 03 */	cmpwi r0, 3
/* 8025D440  41 82 00 0C */	beq lbl_8025D44C
/* 8025D444  2C 00 00 04 */	cmpwi r0, 4
/* 8025D448  40 82 00 5C */	bne lbl_8025D4A4
lbl_8025D44C:
/* 8025D44C  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 8025D450  28 00 00 08 */	cmplwi r0, 8
/* 8025D454  41 82 00 50 */	beq lbl_8025D4A4
/* 8025D458  28 00 00 07 */	cmplwi r0, 7
/* 8025D45C  41 82 00 48 */	beq lbl_8025D4A4
/* 8025D460  7F E3 FB 78 */	mr r3, r31
/* 8025D464  48 00 05 8D */	bl getTimeMs__8dTimer_cFv
/* 8025D468  7C 64 1B 78 */	mr r4, r3
/* 8025D46C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025D470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025D474  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8025D478  7F C3 F3 78 */	mr r3, r30
/* 8025D47C  4B DC F7 19 */	bl setTimerNowTimeMs__14dComIfG_play_cFi
/* 8025D480  7F E3 FB 78 */	mr r3, r31
/* 8025D484  48 00 05 D1 */	bl getLimitTimeMs__8dTimer_cFv
/* 8025D488  7C 64 1B 78 */	mr r4, r3
/* 8025D48C  7F C3 F3 78 */	mr r3, r30
/* 8025D490  4B DC F7 15 */	bl setTimerLimitTimeMs__14dComIfG_play_cFi
/* 8025D494  7F C3 F3 78 */	mr r3, r30
/* 8025D498  80 9F 01 54 */	lwz r4, 0x154(r31)
/* 8025D49C  4B DC F7 19 */	bl setTimerMode__14dComIfG_play_cFi
/* 8025D4A0  48 00 00 34 */	b lbl_8025D4D4
lbl_8025D4A4:
/* 8025D4A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025D4A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025D4AC  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8025D4B0  7F C3 F3 78 */	mr r3, r30
/* 8025D4B4  38 80 00 00 */	li r4, 0
/* 8025D4B8  4B DC F6 DD */	bl setTimerNowTimeMs__14dComIfG_play_cFi
/* 8025D4BC  7F C3 F3 78 */	mr r3, r30
/* 8025D4C0  38 80 00 00 */	li r4, 0
/* 8025D4C4  4B DC F6 E1 */	bl setTimerLimitTimeMs__14dComIfG_play_cFi
/* 8025D4C8  7F C3 F3 78 */	mr r3, r30
/* 8025D4CC  38 80 FF FF */	li r4, -1
/* 8025D4D0  4B DC F6 E5 */	bl setTimerMode__14dComIfG_play_cFi
lbl_8025D4D4:
/* 8025D4D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025D4D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025D4DC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8025D4E0  38 80 00 00 */	li r4, 0
/* 8025D4E4  4B DC F6 F1 */	bl setTimerPtr__14dComIfG_play_cFP8dTimer_c
/* 8025D4E8  38 7F 01 08 */	addi r3, r31, 0x108
/* 8025D4EC  3C 80 80 3A */	lis r4, d_d_timer__stringBase0@ha /* 0x8039A3D8@ha */
/* 8025D4F0  38 84 A3 D8 */	addi r4, r4, d_d_timer__stringBase0@l /* 0x8039A3D8@l */
/* 8025D4F4  4B DC FB 15 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8025D4F8  38 00 00 00 */	li r0, 0
/* 8025D4FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025D500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025D504  90 03 5C E0 */	stw r0, 0x5ce0(r3)
/* 8025D508  38 60 00 01 */	li r3, 1
/* 8025D50C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025D510  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025D514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025D518  7C 08 03 A6 */	mtlr r0
/* 8025D51C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025D520  4E 80 00 20 */	blr 
