lbl_802A5B84:
/* 802A5B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A5B88  7C 08 02 A6 */	mflr r0
/* 802A5B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A5B90  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5B94  48 0B C6 45 */	bl _savegpr_28
/* 802A5B98  7C 7D 1B 78 */	mr r29, r3
/* 802A5B9C  7C 9E 23 78 */	mr r30, r4
/* 802A5BA0  80 83 00 30 */	lwz r4, 0x30(r3)
/* 802A5BA4  80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 802A5BA8  7C 05 00 40 */	cmplw r5, r0
/* 802A5BAC  41 80 00 0C */	blt lbl_802A5BB8
/* 802A5BB0  3B E0 00 00 */	li r31, 0
/* 802A5BB4  48 00 00 10 */	b lbl_802A5BC4
lbl_802A5BB8:
/* 802A5BB8  80 64 00 F4 */	lwz r3, 0xf4(r4)
/* 802A5BBC  54 A0 10 3A */	slwi r0, r5, 2
/* 802A5BC0  7F E3 00 2E */	lwzx r31, r3, r0
lbl_802A5BC4:
/* 802A5BC4  80 64 00 E0 */	lwz r3, 0xe0(r4)
/* 802A5BC8  48 02 88 71 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5BCC  90 61 00 08 */	stw r3, 8(r1)
/* 802A5BD0  38 60 00 08 */	li r3, 8
/* 802A5BD4  48 02 90 79 */	bl __nw__FUl
/* 802A5BD8  28 03 00 00 */	cmplwi r3, 0
/* 802A5BDC  41 82 00 24 */	beq lbl_802A5C00
/* 802A5BE0  3C 80 80 3C */	lis r4, __vt__7JASBank@ha
/* 802A5BE4  38 04 76 BC */	addi r0, r4, __vt__7JASBank@l
/* 802A5BE8  90 03 00 00 */	stw r0, 0(r3)
/* 802A5BEC  38 00 00 00 */	li r0, 0
/* 802A5BF0  90 03 00 04 */	stw r0, 4(r3)
/* 802A5BF4  3C 80 80 3C */	lis r4, __vt__12JASVoiceBank@ha
/* 802A5BF8  38 04 76 D0 */	addi r0, r4, __vt__12JASVoiceBank@l
/* 802A5BFC  90 03 00 00 */	stw r0, 0(r3)
lbl_802A5C00:
/* 802A5C00  7C 7C 1B 78 */	mr r28, r3
/* 802A5C04  28 03 00 00 */	cmplwi r3, 0
/* 802A5C08  41 82 00 80 */	beq lbl_802A5C88
/* 802A5C0C  80 9D 00 34 */	lwz r4, 0x34(r29)
/* 802A5C10  28 04 00 00 */	cmplwi r4, 0
/* 802A5C14  41 82 00 14 */	beq lbl_802A5C28
/* 802A5C18  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802A5C1C  57 C0 10 3A */	slwi r0, r30, 2
/* 802A5C20  7C 64 01 2E */	stwx r3, r4, r0
/* 802A5C24  48 00 00 50 */	b lbl_802A5C74
lbl_802A5C28:
/* 802A5C28  80 8D 86 10 */	lwz r4, data_80450B90(r13)
/* 802A5C2C  80 84 00 04 */	lwz r4, 4(r4)
/* 802A5C30  57 C0 10 3A */	slwi r0, r30, 2
/* 802A5C34  7C 64 01 2E */	stwx r3, r4, r0
/* 802A5C38  28 1E 00 FF */	cmplwi r30, 0xff
/* 802A5C3C  41 80 00 28 */	blt lbl_802A5C64
/* 802A5C40  3C 60 80 3D */	lis r3, __files@ha
/* 802A5C44  38 63 29 B0 */	addi r3, r3, __files@l
/* 802A5C48  38 63 00 A0 */	addi r3, r3, 0xa0
/* 802A5C4C  3C 80 80 3A */	lis r4, JAUSectionHeap__stringBase0@ha
/* 802A5C50  38 84 B9 50 */	addi r4, r4, JAUSectionHeap__stringBase0@l
/* 802A5C54  38 84 00 47 */	addi r4, r4, 0x47
/* 802A5C58  4C C6 31 82 */	crclr 6
/* 802A5C5C  48 0C 0B 41 */	bl fprintf
/* 802A5C60  48 0B CE 5D */	bl abort
lbl_802A5C64:
/* 802A5C64  38 7D 00 8C */	addi r3, r29, 0x8c
/* 802A5C68  7F C4 F3 78 */	mr r4, r30
/* 802A5C6C  38 A0 00 01 */	li r5, 1
/* 802A5C70  48 00 09 65 */	bl func_802A65D4
lbl_802A5C74:
/* 802A5C74  93 FC 00 04 */	stw r31, 4(r28)
/* 802A5C78  80 61 00 08 */	lwz r3, 8(r1)
/* 802A5C7C  48 02 87 BD */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5C80  7F 83 E3 78 */	mr r3, r28
/* 802A5C84  48 00 00 10 */	b lbl_802A5C94
lbl_802A5C88:
/* 802A5C88  80 61 00 08 */	lwz r3, 8(r1)
/* 802A5C8C  48 02 87 AD */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5C90  38 60 00 00 */	li r3, 0
lbl_802A5C94:
/* 802A5C94  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5C98  48 0B C5 8D */	bl _restgpr_28
/* 802A5C9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A5CA0  7C 08 03 A6 */	mtlr r0
/* 802A5CA4  38 21 00 20 */	addi r1, r1, 0x20
/* 802A5CA8  4E 80 00 20 */	blr 
