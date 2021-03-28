lbl_802CF89C:
/* 802CF89C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CF8A0  7C 08 02 A6 */	mflr r0
/* 802CF8A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CF8A8  39 61 00 20 */	addi r11, r1, 0x20
/* 802CF8AC  48 09 29 31 */	bl _savegpr_29
/* 802CF8B0  7C 7D 1B 78 */	mr r29, r3
/* 802CF8B4  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CF8B8  48 06 F7 89 */	bl OSLockMutex
/* 802CF8BC  83 FD 00 80 */	lwz r31, 0x80(r29)
/* 802CF8C0  48 00 00 3C */	b lbl_802CF8FC
lbl_802CF8C4:
/* 802CF8C4  88 1F 00 02 */	lbz r0, 2(r31)
/* 802CF8C8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802CF8CC  41 82 00 2C */	beq lbl_802CF8F8
/* 802CF8D0  7F A3 EB 78 */	mr r3, r29
/* 802CF8D4  38 9F 00 10 */	addi r4, r31, 0x10
/* 802CF8D8  80 BF 00 04 */	lwz r5, 4(r31)
/* 802CF8DC  4B FF F1 9D */	bl dispose__7JKRHeapFPvUl
/* 802CF8E0  83 DF 00 0C */	lwz r30, 0xc(r31)
/* 802CF8E4  7F E3 FB 78 */	mr r3, r31
/* 802CF8E8  7F A4 EB 78 */	mr r4, r29
/* 802CF8EC  48 00 0F E1 */	bl free__Q210JKRExpHeap9CMemBlockFP10JKRExpHeap
/* 802CF8F0  7F DF F3 78 */	mr r31, r30
/* 802CF8F4  48 00 00 08 */	b lbl_802CF8FC
lbl_802CF8F8:
/* 802CF8F8  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802CF8FC:
/* 802CF8FC  28 1F 00 00 */	cmplwi r31, 0
/* 802CF900  40 82 FF C4 */	bne lbl_802CF8C4
/* 802CF904  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CF908  48 06 F8 15 */	bl OSUnlockMutex
/* 802CF90C  39 61 00 20 */	addi r11, r1, 0x20
/* 802CF910  48 09 29 19 */	bl _restgpr_29
/* 802CF914  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CF918  7C 08 03 A6 */	mtlr r0
/* 802CF91C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CF920  4E 80 00 20 */	blr 
