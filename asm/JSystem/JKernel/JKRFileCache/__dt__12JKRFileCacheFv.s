lbl_802D4C70:
/* 802D4C70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4C74  7C 08 02 A6 */	mflr r0
/* 802D4C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4C7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4C80  93 C1 00 08 */	stw r30, 8(r1)
/* 802D4C84  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D4C88  7C 9F 23 78 */	mr r31, r4
/* 802D4C8C  41 82 00 9C */	beq lbl_802D4D28
/* 802D4C90  3C 80 80 3D */	lis r4, __vt__12JKRFileCache@ha
/* 802D4C94  38 04 C2 38 */	addi r0, r4, __vt__12JKRFileCache@l
/* 802D4C98  90 1E 00 00 */	stw r0, 0(r30)
/* 802D4C9C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D4CA0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802D4CA4  7D 89 03 A6 */	mtctr r12
/* 802D4CA8  4E 80 04 21 */	bctrl 
/* 802D4CAC  80 7E 00 48 */	lwz r3, 0x48(r30)
/* 802D4CB0  28 03 00 00 */	cmplwi r3, 0
/* 802D4CB4  41 82 00 0C */	beq lbl_802D4CC0
/* 802D4CB8  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 802D4CBC  4B FF 98 45 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D4CC0:
/* 802D4CC0  80 9E 00 4C */	lwz r4, 0x4c(r30)
/* 802D4CC4  28 04 00 00 */	cmplwi r4, 0
/* 802D4CC8  41 82 00 0C */	beq lbl_802D4CD4
/* 802D4CCC  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D4CD0  4B FF 98 79 */	bl free__7JKRHeapFPv
lbl_802D4CD4:
/* 802D4CD4  80 9E 00 50 */	lwz r4, 0x50(r30)
/* 802D4CD8  28 04 00 00 */	cmplwi r4, 0
/* 802D4CDC  41 82 00 0C */	beq lbl_802D4CE8
/* 802D4CE0  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D4CE4  4B FF 98 65 */	bl free__7JKRHeapFPv
lbl_802D4CE8:
/* 802D4CE8  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D4CEC  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 802D4CF0  38 9E 00 18 */	addi r4, r30, 0x18
/* 802D4CF4  48 00 74 69 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D4CF8  34 1E 00 3C */	addic. r0, r30, 0x3c
/* 802D4CFC  41 82 00 10 */	beq lbl_802D4D0C
/* 802D4D00  38 7E 00 3C */	addi r3, r30, 0x3c
/* 802D4D04  38 80 00 00 */	li r4, 0
/* 802D4D08  48 00 71 A5 */	bl __dt__10JSUPtrListFv
lbl_802D4D0C:
/* 802D4D0C  7F C3 F3 78 */	mr r3, r30
/* 802D4D10  38 80 00 00 */	li r4, 0
/* 802D4D14  4B FF F4 35 */	bl __dt__13JKRFileLoaderFv
/* 802D4D18  7F E0 07 35 */	extsh. r0, r31
/* 802D4D1C  40 81 00 0C */	ble lbl_802D4D28
/* 802D4D20  7F C3 F3 78 */	mr r3, r30
/* 802D4D24  4B FF A0 19 */	bl __dl__FPv
lbl_802D4D28:
/* 802D4D28  7F C3 F3 78 */	mr r3, r30
/* 802D4D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4D30  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D4D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4D38  7C 08 03 A6 */	mtlr r0
/* 802D4D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4D40  4E 80 00 20 */	blr 
