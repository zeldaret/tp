lbl_8025D920:
/* 8025D920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025D924  7C 08 02 A6 */	mflr r0
/* 8025D928  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025D92C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025D930  93 C1 00 08 */	stw r30, 8(r1)
/* 8025D934  7C 7E 1B 78 */	mr r30, r3
/* 8025D938  7C 9F 23 78 */	mr r31, r4
/* 8025D93C  88 03 01 6C */	lbz r0, 0x16c(r3)
/* 8025D940  28 00 00 04 */	cmplwi r0, 4
/* 8025D944  41 82 00 0C */	beq lbl_8025D950
/* 8025D948  38 60 00 00 */	li r3, 0
/* 8025D94C  48 00 00 7C */	b lbl_8025D9C8
lbl_8025D950:
/* 8025D950  4B DD 4E B5 */	bl getTime__11dLib_time_cFv
/* 8025D954  90 9E 01 24 */	stw r4, 0x124(r30)
/* 8025D958  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8025D95C  38 00 00 06 */	li r0, 6
/* 8025D960  98 1E 01 6C */	stb r0, 0x16c(r30)
/* 8025D964  80 BE 01 20 */	lwz r5, 0x120(r30)
/* 8025D968  80 9E 01 24 */	lwz r4, 0x124(r30)
/* 8025D96C  80 1E 01 10 */	lwz r0, 0x110(r30)
/* 8025D970  80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8025D974  7C 83 20 10 */	subfc r4, r3, r4
/* 8025D978  7C A0 29 10 */	subfe r5, r0, r5
/* 8025D97C  80 1E 01 38 */	lwz r0, 0x138(r30)
/* 8025D980  80 7E 01 3C */	lwz r3, 0x13c(r30)
/* 8025D984  7C 83 20 10 */	subfc r4, r3, r4
/* 8025D988  7C 60 29 10 */	subfe r3, r0, r5
/* 8025D98C  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000F8@ha */
/* 8025D990  80 05 00 F8 */	lwz r0, 0x00F8(r5)
/* 8025D994  54 05 F0 BE */	srwi r5, r0, 2
/* 8025D998  38 00 03 E8 */	li r0, 0x3e8
/* 8025D99C  7C C5 03 96 */	divwu r6, r5, r0
/* 8025D9A0  38 A0 00 00 */	li r5, 0
/* 8025D9A4  48 10 49 81 */	bl __div2i
/* 8025D9A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025D9AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025D9B0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8025D9B4  4B DC F1 E1 */	bl setTimerNowTimeMs__14dComIfG_play_cFi
/* 8025D9B8  2C 1F FF FF */	cmpwi r31, -1
/* 8025D9BC  41 82 00 08 */	beq lbl_8025D9C4
/* 8025D9C0  93 FE 01 58 */	stw r31, 0x158(r30)
lbl_8025D9C4:
/* 8025D9C4  38 60 00 01 */	li r3, 1
lbl_8025D9C8:
/* 8025D9C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025D9CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025D9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025D9D4  7C 08 03 A6 */	mtlr r0
/* 8025D9D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8025D9DC  4E 80 00 20 */	blr 
