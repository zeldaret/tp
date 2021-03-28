lbl_802CE378:
/* 802CE378  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CE37C  7C 08 02 A6 */	mflr r0
/* 802CE380  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CE384  39 61 00 20 */	addi r11, r1, 0x20
/* 802CE388  48 09 3E 4D */	bl _savegpr_27
/* 802CE38C  7C 7B 1B 78 */	mr r27, r3
/* 802CE390  7C 9C 23 78 */	mr r28, r4
/* 802CE394  7C BF 2B 78 */	mr r31, r5
/* 802CE398  48 06 CE FD */	bl OSGetArenaLo
/* 802CE39C  7C 7E 1B 78 */	mr r30, r3
/* 802CE3A0  48 06 CE ED */	bl OSGetArenaHi
/* 802CE3A4  7C 7D 1B 78 */	mr r29, r3
/* 802CE3A8  7C 1E E8 40 */	cmplw r30, r29
/* 802CE3AC  40 82 00 0C */	bne lbl_802CE3B8
/* 802CE3B0  38 60 00 00 */	li r3, 0
/* 802CE3B4  48 00 00 5C */	b lbl_802CE410
lbl_802CE3B8:
/* 802CE3B8  7F C3 F3 78 */	mr r3, r30
/* 802CE3BC  7F A4 EB 78 */	mr r4, r29
/* 802CE3C0  7F E5 FB 78 */	mr r5, r31
/* 802CE3C4  48 06 CD ED */	bl OSInitAlloc
/* 802CE3C8  38 03 00 1F */	addi r0, r3, 0x1f
/* 802CE3CC  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 802CE3D0  57 BE 00 34 */	rlwinm r30, r29, 0, 0, 0x1a
/* 802CE3D4  3C 60 80 00 */	lis r3, 0x8000 /* 0x80000028@ha */
/* 802CE3D8  90 6D 8E 04 */	stw r3, mCodeStart__7JKRHeap(r13)
/* 802CE3DC  93 ED 8E 08 */	stw r31, mCodeEnd__7JKRHeap(r13)
/* 802CE3E0  93 ED 8E 0C */	stw r31, mUserRamStart__7JKRHeap(r13)
/* 802CE3E4  93 CD 8E 10 */	stw r30, mUserRamEnd__7JKRHeap(r13)
/* 802CE3E8  80 03 00 28 */	lwz r0, 0x0028(r3)
/* 802CE3EC  90 0D 8E 14 */	stw r0, mMemorySize__7JKRHeap(r13)
/* 802CE3F0  7F C3 F3 78 */	mr r3, r30
/* 802CE3F4  48 06 CE B1 */	bl OSSetArenaLo
/* 802CE3F8  7F C3 F3 78 */	mr r3, r30
/* 802CE3FC  48 06 CE A1 */	bl OSSetArenaHi
/* 802CE400  93 FB 00 00 */	stw r31, 0(r27)
/* 802CE404  7C 1F F0 50 */	subf r0, r31, r30
/* 802CE408  90 1C 00 00 */	stw r0, 0(r28)
/* 802CE40C  38 60 00 01 */	li r3, 1
lbl_802CE410:
/* 802CE410  39 61 00 20 */	addi r11, r1, 0x20
/* 802CE414  48 09 3E 0D */	bl _restgpr_27
/* 802CE418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CE41C  7C 08 03 A6 */	mtlr r0
/* 802CE420  38 21 00 20 */	addi r1, r1, 0x20
/* 802CE424  4E 80 00 20 */	blr 
