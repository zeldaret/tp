lbl_802D551C:
/* 802D551C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5520  7C 08 02 A6 */	mflr r0
/* 802D5524  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5528  39 61 00 20 */	addi r11, r1, 0x20
/* 802D552C  48 08 CC B1 */	bl _savegpr_29
/* 802D5530  7C 7D 1B 78 */	mr r29, r3
/* 802D5534  7C 9E 23 78 */	mr r30, r4
/* 802D5538  88 04 00 00 */	lbz r0, 0(r4)
/* 802D553C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D5540  40 82 00 78 */	bne lbl_802D55B8
/* 802D5544  7F C3 F3 78 */	mr r3, r30
/* 802D5548  48 09 36 9D */	bl strlen
/* 802D554C  7C 7F 1B 78 */	mr r31, r3
/* 802D5550  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 802D5554  48 09 36 91 */	bl strlen
/* 802D5558  38 9F 00 02 */	addi r4, r31, 2
/* 802D555C  7C 83 22 14 */	add r4, r3, r4
/* 802D5560  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D5564  38 A0 00 01 */	li r5, 1
/* 802D5568  4B FF 8F 6D */	bl alloc__7JKRHeapFUli
/* 802D556C  7C 60 1B 78 */	mr r0, r3
/* 802D5570  7C 1F 03 78 */	mr r31, r0
/* 802D5574  80 9D 00 48 */	lwz r4, 0x48(r29)
/* 802D5578  48 09 35 B5 */	bl strcpy
/* 802D557C  88 1E 00 01 */	lbz r0, 1(r30)
/* 802D5580  7C 00 07 75 */	extsb. r0, r0
/* 802D5584  41 82 00 78 */	beq lbl_802D55FC
/* 802D5588  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 802D558C  88 03 00 01 */	lbz r0, 1(r3)
/* 802D5590  7C 00 07 75 */	extsb. r0, r0
/* 802D5594  40 82 00 14 */	bne lbl_802D55A8
/* 802D5598  7F E3 FB 78 */	mr r3, r31
/* 802D559C  38 9E 00 01 */	addi r4, r30, 1
/* 802D55A0  48 09 35 1D */	bl strcat
/* 802D55A4  48 00 00 58 */	b lbl_802D55FC
lbl_802D55A8:
/* 802D55A8  7F E3 FB 78 */	mr r3, r31
/* 802D55AC  7F C4 F3 78 */	mr r4, r30
/* 802D55B0  48 09 35 0D */	bl strcat
/* 802D55B4  48 00 00 48 */	b lbl_802D55FC
lbl_802D55B8:
/* 802D55B8  7F C3 F3 78 */	mr r3, r30
/* 802D55BC  48 09 36 29 */	bl strlen
/* 802D55C0  7C 7F 1B 78 */	mr r31, r3
/* 802D55C4  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 802D55C8  48 09 36 1D */	bl strlen
/* 802D55CC  38 9F 00 02 */	addi r4, r31, 2
/* 802D55D0  7C 83 22 14 */	add r4, r3, r4
/* 802D55D4  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D55D8  38 A0 00 01 */	li r5, 1
/* 802D55DC  4B FF 8E F9 */	bl alloc__7JKRHeapFUli
/* 802D55E0  7C 60 1B 78 */	mr r0, r3
/* 802D55E4  7C 1F 03 78 */	mr r31, r0
/* 802D55E8  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 802D55EC  48 09 35 41 */	bl strcpy
/* 802D55F0  7F E3 FB 78 */	mr r3, r31
/* 802D55F4  7F C4 F3 78 */	mr r4, r30
/* 802D55F8  48 09 34 C5 */	bl strcat
lbl_802D55FC:
/* 802D55FC  7F A3 EB 78 */	mr r3, r29
/* 802D5600  7F E4 FB 78 */	mr r4, r31
/* 802D5604  48 00 00 21 */	bl convStrLower__12JKRFileCacheCFPc
/* 802D5608  7F E3 FB 78 */	mr r3, r31
/* 802D560C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5610  48 08 CC 19 */	bl _restgpr_29
/* 802D5614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5618  7C 08 03 A6 */	mtlr r0
/* 802D561C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5620  4E 80 00 20 */	blr 
