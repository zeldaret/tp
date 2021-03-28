lbl_802D6B24:
/* 802D6B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6B28  7C 08 02 A6 */	mflr r0
/* 802D6B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6B30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D6B34  93 C1 00 08 */	stw r30, 8(r1)
/* 802D6B38  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D6B3C  7C 9F 23 78 */	mr r31, r4
/* 802D6B40  41 82 00 70 */	beq lbl_802D6BB0
/* 802D6B44  3C 60 80 3D */	lis r3, __vt__13JKRMemArchive@ha
/* 802D6B48  38 03 C2 D8 */	addi r0, r3, __vt__13JKRMemArchive@l
/* 802D6B4C  90 1E 00 00 */	stw r0, 0(r30)
/* 802D6B50  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 802D6B54  28 00 00 01 */	cmplwi r0, 1
/* 802D6B58  40 82 00 3C */	bne lbl_802D6B94
/* 802D6B5C  88 1E 00 6C */	lbz r0, 0x6c(r30)
/* 802D6B60  28 00 00 00 */	cmplwi r0, 0
/* 802D6B64  41 82 00 18 */	beq lbl_802D6B7C
/* 802D6B68  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 802D6B6C  28 03 00 00 */	cmplwi r3, 0
/* 802D6B70  41 82 00 0C */	beq lbl_802D6B7C
/* 802D6B74  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 802D6B78  4B FF 79 89 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D6B7C:
/* 802D6B7C  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D6B80  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 802D6B84  38 9E 00 18 */	addi r4, r30, 0x18
/* 802D6B88  48 00 55 D5 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D6B8C  38 00 00 00 */	li r0, 0
/* 802D6B90  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_802D6B94:
/* 802D6B94  7F C3 F3 78 */	mr r3, r30
/* 802D6B98  38 80 00 00 */	li r4, 0
/* 802D6B9C  4B FF F7 99 */	bl __dt__10JKRArchiveFv
/* 802D6BA0  7F E0 07 35 */	extsh. r0, r31
/* 802D6BA4  40 81 00 0C */	ble lbl_802D6BB0
/* 802D6BA8  7F C3 F3 78 */	mr r3, r30
/* 802D6BAC  4B FF 81 91 */	bl __dl__FPv
lbl_802D6BB0:
/* 802D6BB0  7F C3 F3 78 */	mr r3, r30
/* 802D6BB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D6BB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D6BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6BC0  7C 08 03 A6 */	mtlr r0
/* 802D6BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6BC8  4E 80 00 20 */	blr 
