lbl_802DBF4C:
/* 802DBF4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DBF50  7C 08 02 A6 */	mflr r0
/* 802DBF54  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DBF58  39 61 00 20 */	addi r11, r1, 0x20
/* 802DBF5C  48 08 62 81 */	bl _savegpr_29
/* 802DBF60  7C 7D 1B 78 */	mr r29, r3
/* 802DBF64  7C 9E 23 78 */	mr r30, r4
/* 802DBF68  80 64 00 04 */	lwz r3, 4(r4)
/* 802DBF6C  7C 60 00 34 */	cntlzw r0, r3
/* 802DBF70  54 1F D9 7E */	srwi r31, r0, 5
/* 802DBF74  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802DBF78  40 82 00 0C */	bne lbl_802DBF84
/* 802DBF7C  48 00 01 E1 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802DBF80  7C 7F 1B 78 */	mr r31, r3
lbl_802DBF84:
/* 802DBF84  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802DBF88  41 82 00 4C */	beq lbl_802DBFD4
/* 802DBF8C  80 1D 00 08 */	lwz r0, 8(r29)
/* 802DBF90  28 00 00 00 */	cmplwi r0, 0
/* 802DBF94  40 82 00 14 */	bne lbl_802DBFA8
/* 802DBF98  7F A3 EB 78 */	mr r3, r29
/* 802DBF9C  7F C4 F3 78 */	mr r4, r30
/* 802DBFA0  4B FF FF 89 */	bl setFirst__10JSUPtrListFP10JSUPtrLink
/* 802DBFA4  48 00 00 30 */	b lbl_802DBFD4
lbl_802DBFA8:
/* 802DBFA8  93 BE 00 04 */	stw r29, 4(r30)
/* 802DBFAC  80 1D 00 04 */	lwz r0, 4(r29)
/* 802DBFB0  90 1E 00 08 */	stw r0, 8(r30)
/* 802DBFB4  38 00 00 00 */	li r0, 0
/* 802DBFB8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802DBFBC  80 7D 00 04 */	lwz r3, 4(r29)
/* 802DBFC0  93 C3 00 0C */	stw r30, 0xc(r3)
/* 802DBFC4  93 DD 00 04 */	stw r30, 4(r29)
/* 802DBFC8  80 7D 00 08 */	lwz r3, 8(r29)
/* 802DBFCC  38 03 00 01 */	addi r0, r3, 1
/* 802DBFD0  90 1D 00 08 */	stw r0, 8(r29)
lbl_802DBFD4:
/* 802DBFD4  7F E3 FB 78 */	mr r3, r31
/* 802DBFD8  39 61 00 20 */	addi r11, r1, 0x20
/* 802DBFDC  48 08 62 4D */	bl _restgpr_29
/* 802DBFE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DBFE4  7C 08 03 A6 */	mtlr r0
/* 802DBFE8  38 21 00 20 */	addi r1, r1, 0x20
/* 802DBFEC  4E 80 00 20 */	blr 
