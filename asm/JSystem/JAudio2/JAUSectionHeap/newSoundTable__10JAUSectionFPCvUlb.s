lbl_802A51E4:
/* 802A51E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A51E8  7C 08 02 A6 */	mflr r0
/* 802A51EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A51F0  39 61 00 20 */	addi r11, r1, 0x20
/* 802A51F4  48 0B CF E5 */	bl _savegpr_28
/* 802A51F8  7C 7C 1B 78 */	mr r28, r3
/* 802A51FC  7C 9E 23 78 */	mr r30, r4
/* 802A5200  7C BF 2B 78 */	mr r31, r5
/* 802A5204  7C DD 33 78 */	mr r29, r6
/* 802A5208  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802A520C  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A5210  48 02 92 29 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5214  90 61 00 08 */	stw r3, 8(r1)
/* 802A5218  28 1F 00 00 */	cmplwi r31, 0
/* 802A521C  41 82 00 1C */	beq lbl_802A5238
/* 802A5220  7F 83 E3 78 */	mr r3, r28
/* 802A5224  7F C4 F3 78 */	mr r4, r30
/* 802A5228  7F E5 FB 78 */	mr r5, r31
/* 802A522C  38 C0 00 04 */	li r6, 4
/* 802A5230  48 00 05 C1 */	bl newCopy__10JAUSectionFPCvUll
/* 802A5234  7C 7E 1B 78 */	mr r30, r3
lbl_802A5238:
/* 802A5238  38 60 00 08 */	li r3, 8
/* 802A523C  48 02 9A 11 */	bl __nw__FUl
/* 802A5240  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A5244  41 82 00 1C */	beq lbl_802A5260
/* 802A5248  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802A524C  41 82 00 08 */	beq lbl_802A5254
/* 802A5250  93 ED 85 D8 */	stw r31, data_80450B58(r13)
lbl_802A5254:
/* 802A5254  38 00 00 00 */	li r0, 0
/* 802A5258  90 1F 00 00 */	stw r0, 0(r31)
/* 802A525C  90 1F 00 04 */	stw r0, 4(r31)
lbl_802A5260:
/* 802A5260  7F E3 FB 78 */	mr r3, r31
/* 802A5264  7F C4 F3 78 */	mr r4, r30
/* 802A5268  48 00 1E AD */	bl init__13JAUSoundTableFPCv
/* 802A526C  80 7C 00 30 */	lwz r3, 0x30(r28)
/* 802A5270  93 E3 05 2C */	stw r31, 0x52c(r3)
/* 802A5274  93 DC 00 BC */	stw r30, 0xbc(r28)
/* 802A5278  80 61 00 08 */	lwz r3, 8(r1)
/* 802A527C  48 02 91 BD */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5280  80 7C 00 30 */	lwz r3, 0x30(r28)
/* 802A5284  80 63 05 2C */	lwz r3, 0x52c(r3)
/* 802A5288  39 61 00 20 */	addi r11, r1, 0x20
/* 802A528C  48 0B CF 99 */	bl _restgpr_28
/* 802A5290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A5294  7C 08 03 A6 */	mtlr r0
/* 802A5298  38 21 00 20 */	addi r1, r1, 0x20
/* 802A529C  4E 80 00 20 */	blr 
