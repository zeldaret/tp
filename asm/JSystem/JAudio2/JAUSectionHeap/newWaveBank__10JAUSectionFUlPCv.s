lbl_802A5854:
/* 802A5854  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A5858  7C 08 02 A6 */	mflr r0
/* 802A585C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A5860  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5864  48 0B C9 75 */	bl _savegpr_28
/* 802A5868  7C 7F 1B 78 */	mr r31, r3
/* 802A586C  7C 9C 23 78 */	mr r28, r4
/* 802A5870  7C BD 2B 78 */	mr r29, r5
/* 802A5874  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802A5878  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A587C  48 02 8B BD */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5880  90 61 00 08 */	stw r3, 8(r1)
/* 802A5884  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802A5888  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A588C  48 02 8E A1 */	bl getFreeSize__7JKRHeapFv
/* 802A5890  7C 7E 1B 78 */	mr r30, r3
/* 802A5894  7F A3 EB 78 */	mr r3, r29
/* 802A5898  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 802A589C  80 84 00 E0 */	lwz r4, 0xe0(r4)
/* 802A58A0  4B FF 37 39 */	bl createWaveBank__11JASWSParserFPCvP7JKRHeap
/* 802A58A4  7C 7D 1B 79 */	or. r29, r3, r3
/* 802A58A8  41 82 00 7C */	beq lbl_802A5924
/* 802A58AC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802A58B0  80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 802A58B4  57 80 10 3A */	slwi r0, r28, 2
/* 802A58B8  7F A3 01 2E */	stwx r29, r3, r0
/* 802A58BC  28 1C 00 FF */	cmplwi r28, 0xff
/* 802A58C0  41 80 00 28 */	blt lbl_802A58E8
/* 802A58C4  3C 60 80 3D */	lis r3, __files@ha /* 0x803D29B0@ha */
/* 802A58C8  38 63 29 B0 */	addi r3, r3, __files@l /* 0x803D29B0@l */
/* 802A58CC  38 63 00 A0 */	addi r3, r3, 0xa0
/* 802A58D0  3C 80 80 3A */	lis r4, JAUSectionHeap__stringBase0@ha /* 0x8039B950@ha */
/* 802A58D4  38 84 B9 50 */	addi r4, r4, JAUSectionHeap__stringBase0@l /* 0x8039B950@l */
/* 802A58D8  38 84 00 47 */	addi r4, r4, 0x47
/* 802A58DC  4C C6 31 82 */	crclr 6
/* 802A58E0  48 0C 0E BD */	bl fprintf
/* 802A58E4  48 0B D1 D9 */	bl abort
lbl_802A58E8:
/* 802A58E8  38 7F 00 6C */	addi r3, r31, 0x6c
/* 802A58EC  7F 84 E3 78 */	mr r4, r28
/* 802A58F0  38 A0 00 01 */	li r5, 1
/* 802A58F4  48 00 0C E1 */	bl func_802A65D4
/* 802A58F8  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802A58FC  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A5900  48 02 8E 2D */	bl getFreeSize__7JKRHeapFv
/* 802A5904  7C 63 F0 50 */	subf r3, r3, r30
/* 802A5908  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 802A590C  7C 00 1A 14 */	add r0, r0, r3
/* 802A5910  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 802A5914  80 61 00 08 */	lwz r3, 8(r1)
/* 802A5918  48 02 8B 21 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A591C  7F A3 EB 78 */	mr r3, r29
/* 802A5920  48 00 00 10 */	b lbl_802A5930
lbl_802A5924:
/* 802A5924  80 61 00 08 */	lwz r3, 8(r1)
/* 802A5928  48 02 8B 11 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A592C  38 60 00 00 */	li r3, 0
lbl_802A5930:
/* 802A5930  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5934  48 0B C8 F1 */	bl _restgpr_28
/* 802A5938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A593C  7C 08 03 A6 */	mtlr r0
/* 802A5940  38 21 00 20 */	addi r1, r1, 0x20
/* 802A5944  4E 80 00 20 */	blr 
