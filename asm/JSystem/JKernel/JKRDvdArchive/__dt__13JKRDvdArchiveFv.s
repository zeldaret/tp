lbl_802D7C98:
/* 802D7C98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D7C9C  7C 08 02 A6 */	mflr r0
/* 802D7CA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D7CA4  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7CA8  48 08 A5 31 */	bl _savegpr_28
/* 802D7CAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D7CB0  7C 9C 23 78 */	mr r28, r4
/* 802D7CB4  41 82 00 E4 */	beq lbl_802D7D98
/* 802D7CB8  3C 60 80 3D */	lis r3, __vt__13JKRDvdArchive@ha /* 0x803CC398@ha */
/* 802D7CBC  38 03 C3 98 */	addi r0, r3, __vt__13JKRDvdArchive@l /* 0x803CC398@l */
/* 802D7CC0  90 1F 00 00 */	stw r0, 0(r31)
/* 802D7CC4  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 802D7CC8  28 00 00 01 */	cmplwi r0, 1
/* 802D7CCC  40 82 00 B0 */	bne lbl_802D7D7C
/* 802D7CD0  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 802D7CD4  28 00 00 00 */	cmplwi r0, 0
/* 802D7CD8  41 82 00 4C */	beq lbl_802D7D24
/* 802D7CDC  83 DF 00 4C */	lwz r30, 0x4c(r31)
/* 802D7CE0  3B A0 00 00 */	li r29, 0
/* 802D7CE4  48 00 00 20 */	b lbl_802D7D04
lbl_802D7CE8:
/* 802D7CE8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802D7CEC  28 03 00 00 */	cmplwi r3, 0
/* 802D7CF0  41 82 00 0C */	beq lbl_802D7CFC
/* 802D7CF4  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 802D7CF8  4B FF 68 09 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D7CFC:
/* 802D7CFC  3B DE 00 14 */	addi r30, r30, 0x14
/* 802D7D00  3B BD 00 01 */	addi r29, r29, 1
lbl_802D7D04:
/* 802D7D04  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7D08  80 03 00 08 */	lwz r0, 8(r3)
/* 802D7D0C  7C 1D 00 40 */	cmplw r29, r0
/* 802D7D10  41 80 FF D8 */	blt lbl_802D7CE8
/* 802D7D14  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 802D7D18  4B FF 67 E9 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D7D1C  38 00 00 00 */	li r0, 0
/* 802D7D20  90 1F 00 44 */	stw r0, 0x44(r31)
lbl_802D7D24:
/* 802D7D24  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802D7D28  28 03 00 00 */	cmplwi r3, 0
/* 802D7D2C  41 82 00 14 */	beq lbl_802D7D40
/* 802D7D30  38 80 00 00 */	li r4, 0
/* 802D7D34  4B FF 67 CD */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D7D38  38 00 00 00 */	li r0, 0
/* 802D7D3C  90 1F 00 50 */	stw r0, 0x50(r31)
lbl_802D7D40:
/* 802D7D40  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 802D7D44  28 03 00 00 */	cmplwi r3, 0
/* 802D7D48  41 82 00 1C */	beq lbl_802D7D64
/* 802D7D4C  41 82 00 18 */	beq lbl_802D7D64
/* 802D7D50  38 80 00 01 */	li r4, 1
/* 802D7D54  81 83 00 00 */	lwz r12, 0(r3)
/* 802D7D58  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D7D5C  7D 89 03 A6 */	mtctr r12
/* 802D7D60  4E 80 04 21 */	bctrl 
lbl_802D7D64:
/* 802D7D64  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha /* 0x80434354@ha */
/* 802D7D68  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l /* 0x80434354@l */
/* 802D7D6C  38 9F 00 18 */	addi r4, r31, 0x18
/* 802D7D70  48 00 43 ED */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D7D74  38 00 00 00 */	li r0, 0
/* 802D7D78  98 1F 00 30 */	stb r0, 0x30(r31)
lbl_802D7D7C:
/* 802D7D7C  7F E3 FB 78 */	mr r3, r31
/* 802D7D80  38 80 00 00 */	li r4, 0
/* 802D7D84  4B FF E5 B1 */	bl __dt__10JKRArchiveFv
/* 802D7D88  7F 80 07 35 */	extsh. r0, r28
/* 802D7D8C  40 81 00 0C */	ble lbl_802D7D98
/* 802D7D90  7F E3 FB 78 */	mr r3, r31
/* 802D7D94  4B FF 6F A9 */	bl __dl__FPv
lbl_802D7D98:
/* 802D7D98  7F E3 FB 78 */	mr r3, r31
/* 802D7D9C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7DA0  48 08 A4 85 */	bl _restgpr_28
/* 802D7DA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D7DA8  7C 08 03 A6 */	mtlr r0
/* 802D7DAC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D7DB0  4E 80 00 20 */	blr 
