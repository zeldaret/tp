lbl_802A60AC:
/* 802A60AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A60B0  7C 08 02 A6 */	mflr r0
/* 802A60B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A60B8  39 61 00 20 */	addi r11, r1, 0x20
/* 802A60BC  48 0B C1 1D */	bl _savegpr_28
/* 802A60C0  7C 7C 1B 78 */	mr r28, r3
/* 802A60C4  7C 9D 23 78 */	mr r29, r4
/* 802A60C8  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802A60CC  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A60D0  48 02 83 69 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A60D4  90 61 00 0C */	stw r3, 0xc(r1)
/* 802A60D8  38 60 00 20 */	li r3, 0x20
/* 802A60DC  48 02 8B 71 */	bl __nw__FUl
/* 802A60E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A60E4  41 82 00 0C */	beq lbl_802A60F0
/* 802A60E8  48 00 08 0D */	bl __ct__15JAUSeqDataBlockFv
/* 802A60EC  7C 7E 1B 78 */	mr r30, r3
lbl_802A60F0:
/* 802A60F0  28 1E 00 00 */	cmplwi r30, 0
/* 802A60F4  40 82 00 14 */	bne lbl_802A6108
/* 802A60F8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A60FC  48 02 83 3D */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A6100  38 60 00 00 */	li r3, 0
/* 802A6104  48 00 00 B4 */	b lbl_802A61B8
lbl_802A6108:
/* 802A6108  38 60 00 10 */	li r3, 0x10
/* 802A610C  48 02 8B 41 */	bl __nw__FUl
/* 802A6110  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A6114  41 82 00 0C */	beq lbl_802A6120
/* 802A6118  7F C4 F3 78 */	mr r4, r30
/* 802A611C  48 03 5C E1 */	bl __ct__10JSUPtrLinkFPv
lbl_802A6120:
/* 802A6120  28 1F 00 00 */	cmplwi r31, 0
/* 802A6124  40 82 00 14 */	bne lbl_802A6138
/* 802A6128  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A612C  48 02 83 0D */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A6130  38 60 00 00 */	li r3, 0
/* 802A6134  48 00 00 84 */	b lbl_802A61B8
lbl_802A6138:
/* 802A6138  7F A3 EB 78 */	mr r3, r29
/* 802A613C  38 80 00 20 */	li r4, 0x20
/* 802A6140  48 02 8B AD */	bl __nwa__FUli
/* 802A6144  28 03 00 00 */	cmplwi r3, 0
/* 802A6148  40 82 00 14 */	bne lbl_802A615C
/* 802A614C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A6150  48 02 82 E9 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A6154  38 60 00 00 */	li r3, 0
/* 802A6158  48 00 00 60 */	b lbl_802A61B8
lbl_802A615C:
/* 802A615C  90 7E 00 14 */	stw r3, 0x14(r30)
/* 802A6160  93 BE 00 18 */	stw r29, 0x18(r30)
/* 802A6164  38 00 FF FF */	li r0, -1
/* 802A6168  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802A616C  48 09 75 89 */	bl OSDisableInterrupts
/* 802A6170  90 61 00 08 */	stw r3, 8(r1)
/* 802A6174  80 7C 00 30 */	lwz r3, 0x30(r28)
/* 802A6178  38 63 04 FC */	addi r3, r3, 0x4fc
/* 802A617C  7F C4 F3 78 */	mr r4, r30
/* 802A6180  48 00 0A 0D */	bl appendDynamicSeqDataBlock__23JAUDynamicSeqDataBlocksFP15JAUSeqDataBlock
/* 802A6184  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A6188  41 82 00 1C */	beq lbl_802A61A4
/* 802A618C  80 61 00 08 */	lwz r3, 8(r1)
/* 802A6190  48 09 75 8D */	bl OSRestoreInterrupts
/* 802A6194  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A6198  48 02 82 A1 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A619C  38 60 00 01 */	li r3, 1
/* 802A61A0  48 00 00 18 */	b lbl_802A61B8
lbl_802A61A4:
/* 802A61A4  80 61 00 08 */	lwz r3, 8(r1)
/* 802A61A8  48 09 75 75 */	bl OSRestoreInterrupts
/* 802A61AC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A61B0  48 02 82 89 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A61B4  38 60 00 00 */	li r3, 0
lbl_802A61B8:
/* 802A61B8  39 61 00 20 */	addi r11, r1, 0x20
/* 802A61BC  48 0B C0 69 */	bl _restgpr_28
/* 802A61C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A61C4  7C 08 03 A6 */	mtlr r0
/* 802A61C8  38 21 00 20 */	addi r1, r1, 0x20
/* 802A61CC  4E 80 00 20 */	blr 
