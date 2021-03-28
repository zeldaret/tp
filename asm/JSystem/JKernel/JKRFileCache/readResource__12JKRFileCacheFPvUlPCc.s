lbl_802D4F64:
/* 802D4F64  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802D4F68  7C 08 02 A6 */	mflr r0
/* 802D4F6C  90 01 01 24 */	stw r0, 0x124(r1)
/* 802D4F70  39 61 01 20 */	addi r11, r1, 0x120
/* 802D4F74  48 08 D2 61 */	bl _savegpr_27
/* 802D4F78  7C 7B 1B 78 */	mr r27, r3
/* 802D4F7C  7C 9C 23 78 */	mr r28, r4
/* 802D4F80  7C BD 2B 78 */	mr r29, r5
/* 802D4F84  7C C4 33 78 */	mr r4, r6
/* 802D4F88  48 00 05 95 */	bl getDvdPathName__12JKRFileCacheCFPCc
/* 802D4F8C  7C 7F 1B 78 */	mr r31, r3
/* 802D4F90  38 61 00 08 */	addi r3, r1, 8
/* 802D4F94  7F E4 FB 78 */	mr r4, r31
/* 802D4F98  48 00 46 61 */	bl __ct__10JKRDvdFileFPCc
/* 802D4F9C  3B C0 00 00 */	li r30, 0
lbl_802D4FA0:
/* 802D4FA0  88 01 00 20 */	lbz r0, 0x20(r1)
/* 802D4FA4  28 00 00 00 */	cmplwi r0, 0
/* 802D4FA8  41 82 00 60 */	beq lbl_802D5008
/* 802D4FAC  80 61 00 98 */	lwz r3, 0x98(r1)
/* 802D4FB0  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D4FB4  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 802D4FB8  57 BD 00 34 */	rlwinm r29, r29, 0, 0, 0x1a
/* 802D4FBC  7C 1E E8 40 */	cmplw r30, r29
/* 802D4FC0  40 81 00 08 */	ble lbl_802D4FC8
/* 802D4FC4  7F BE EB 78 */	mr r30, r29
lbl_802D4FC8:
/* 802D4FC8  7F 63 DB 78 */	mr r3, r27
/* 802D4FCC  80 81 00 94 */	lwz r4, 0x94(r1)
/* 802D4FD0  48 00 04 15 */	bl findCacheBlock__12JKRFileCacheCFUl
/* 802D4FD4  7C 64 1B 79 */	or. r4, r3, r3
/* 802D4FD8  40 82 00 1C */	bne lbl_802D4FF4
/* 802D4FDC  38 61 00 08 */	addi r3, r1, 8
/* 802D4FE0  7F 84 E3 78 */	mr r4, r28
/* 802D4FE4  7F C5 F3 78 */	mr r5, r30
/* 802D4FE8  38 C0 00 00 */	li r6, 0
/* 802D4FEC  48 00 45 2D */	bl read__7JKRFileFPvll
/* 802D4FF0  4B FF FF B0 */	b lbl_802D4FA0
lbl_802D4FF4:
/* 802D4FF4  7F 83 E3 78 */	mr r3, r28
/* 802D4FF8  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 802D4FFC  7F C5 F3 78 */	mr r5, r30
/* 802D5000  4B D2 E5 41 */	bl memcpy
/* 802D5004  4B FF FF 9C */	b lbl_802D4FA0
lbl_802D5008:
/* 802D5008  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D500C  7F E4 FB 78 */	mr r4, r31
/* 802D5010  4B FF 95 39 */	bl free__7JKRHeapFPv
/* 802D5014  38 61 00 08 */	addi r3, r1, 8
/* 802D5018  38 80 FF FF */	li r4, -1
/* 802D501C  48 00 47 2D */	bl __dt__10JKRDvdFileFv
/* 802D5020  7F C3 F3 78 */	mr r3, r30
/* 802D5024  39 61 01 20 */	addi r11, r1, 0x120
/* 802D5028  48 08 D1 F9 */	bl _restgpr_27
/* 802D502C  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802D5030  7C 08 03 A6 */	mtlr r0
/* 802D5034  38 21 01 20 */	addi r1, r1, 0x120
/* 802D5038  4E 80 00 20 */	blr 
