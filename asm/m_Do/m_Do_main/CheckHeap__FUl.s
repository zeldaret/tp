lbl_8000578C:
/* 8000578C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80005790  7C 08 02 A6 */	mflr r0
/* 80005794  90 01 00 24 */	stw r0, 0x24(r1)
/* 80005798  39 61 00 20 */	addi r11, r1, 0x20
/* 8000579C  48 35 CA 39 */	bl _savegpr_27
/* 800057A0  7C 7B 1B 78 */	mr r27, r3
/* 800057A4  48 00 5E C5 */	bl mDoMch_HeapCheckAll__Fv
/* 800057A8  48 33 C7 59 */	bl OSCheckActiveThreads
/* 800057AC  38 A0 00 00 */	li r5, 0
/* 800057B0  57 64 30 32 */	slwi r4, r27, 6
/* 800057B4  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 800057B8  38 03 D2 E8 */	addi r0, r3, m_cpadInfo__8mDoCPd_c@l
/* 800057BC  7C 60 22 14 */	add r3, r0, r4
/* 800057C0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 800057C4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 800057C8  28 00 00 60 */	cmplwi r0, 0x60
/* 800057CC  40 82 00 14 */	bne lbl_800057E0
/* 800057D0  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800057D4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800057D8  41 82 00 08 */	beq lbl_800057E0
/* 800057DC  38 A0 00 01 */	li r5, 1
lbl_800057E0:
/* 800057E0  54 BC 06 3E */	clrlwi r28, r5, 0x18
/* 800057E4  3B 60 00 00 */	li r27, 0
/* 800057E8  3B E0 00 00 */	li r31, 0
/* 800057EC  3C 60 80 3A */	lis r3, HeapCheckTable@ha
/* 800057F0  3B C3 2E F4 */	addi r30, r3, HeapCheckTable@l
lbl_800057F4:
/* 800057F4  7C 7E F8 2E */	lwzx r3, r30, r31
/* 800057F8  4B FF FF 31 */	bl CheckHeap1__9HeapCheckFv
/* 800057FC  2C 1C 00 00 */	cmpwi r28, 0
/* 80005800  41 82 00 20 */	beq lbl_80005820
/* 80005804  7F BE F8 2E */	lwzx r29, r30, r31
/* 80005808  7F A3 EB 78 */	mr r3, r29
/* 8000580C  48 00 00 95 */	bl getUsedCount__9HeapCheckCFv
/* 80005810  90 7D 00 20 */	stw r3, 0x20(r29)
/* 80005814  80 7D 00 08 */	lwz r3, 8(r29)
/* 80005818  48 2C A5 4D */	bl getTotalUsedSize__10JKRExpHeapCFv
/* 8000581C  90 7D 00 24 */	stw r3, 0x24(r29)
lbl_80005820:
/* 80005820  3B 7B 00 01 */	addi r27, r27, 1
/* 80005824  2C 1B 00 08 */	cmpwi r27, 8
/* 80005828  3B FF 00 04 */	addi r31, r31, 4
/* 8000582C  41 80 FF C8 */	blt lbl_800057F4
/* 80005830  39 61 00 20 */	addi r11, r1, 0x20
/* 80005834  48 35 C9 ED */	bl _restgpr_27
/* 80005838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000583C  7C 08 03 A6 */	mtlr r0
/* 80005840  38 21 00 20 */	addi r1, r1, 0x20
/* 80005844  4E 80 00 20 */	blr 
