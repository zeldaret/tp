lbl_802A52A0:
/* 802A52A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A52A4  7C 08 02 A6 */	mflr r0
/* 802A52A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A52AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A52B0  48 0B CF 29 */	bl _savegpr_28
/* 802A52B4  7C 7C 1B 78 */	mr r28, r3
/* 802A52B8  7C 9E 23 78 */	mr r30, r4
/* 802A52BC  7C BF 2B 78 */	mr r31, r5
/* 802A52C0  7C DD 33 78 */	mr r29, r6
/* 802A52C4  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802A52C8  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A52CC  48 02 91 6D */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A52D0  90 61 00 08 */	stw r3, 8(r1)
/* 802A52D4  28 1F 00 00 */	cmplwi r31, 0
/* 802A52D8  41 82 00 1C */	beq lbl_802A52F4
/* 802A52DC  7F 83 E3 78 */	mr r3, r28
/* 802A52E0  7F C4 F3 78 */	mr r4, r30
/* 802A52E4  7F E5 FB 78 */	mr r5, r31
/* 802A52E8  38 C0 00 04 */	li r6, 4
/* 802A52EC  48 00 05 05 */	bl newCopy__10JAUSectionFPCvUll
/* 802A52F0  7C 7E 1B 78 */	mr r30, r3
lbl_802A52F4:
/* 802A52F4  38 60 00 08 */	li r3, 8
/* 802A52F8  48 02 99 55 */	bl __nw__FUl
/* 802A52FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A5300  41 82 00 1C */	beq lbl_802A531C
/* 802A5304  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802A5308  41 82 00 08 */	beq lbl_802A5310
/* 802A530C  93 ED 85 D4 */	stw r31, __OSReport_disable-0x44(r13)
lbl_802A5310:
/* 802A5310  38 00 00 00 */	li r0, 0
/* 802A5314  90 1F 00 00 */	stw r0, 0(r31)
/* 802A5318  90 1F 00 04 */	stw r0, 4(r31)
lbl_802A531C:
/* 802A531C  7F E3 FB 78 */	mr r3, r31
/* 802A5320  7F C4 F3 78 */	mr r4, r30
/* 802A5324  48 00 20 B1 */	bl init__17JAUSoundNameTableFPCv
/* 802A5328  80 7C 00 30 */	lwz r3, 0x30(r28)
/* 802A532C  93 E3 05 30 */	stw r31, 0x530(r3)
/* 802A5330  93 DC 00 C0 */	stw r30, 0xc0(r28)
/* 802A5334  80 61 00 08 */	lwz r3, 8(r1)
/* 802A5338  48 02 91 01 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A533C  80 7C 00 30 */	lwz r3, 0x30(r28)
/* 802A5340  80 63 05 30 */	lwz r3, 0x530(r3)
/* 802A5344  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5348  48 0B CE DD */	bl _restgpr_28
/* 802A534C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A5350  7C 08 03 A6 */	mtlr r0
/* 802A5354  38 21 00 20 */	addi r1, r1, 0x20
/* 802A5358  4E 80 00 20 */	blr 
