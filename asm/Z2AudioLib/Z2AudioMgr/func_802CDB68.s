lbl_802CDB68:
/* 802CDB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CDB6C  7C 08 02 A6 */	mflr r0
/* 802CDB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CDB74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CDB78  93 C1 00 08 */	stw r30, 8(r1)
/* 802CDB7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802CDB80  7C 9F 23 78 */	mr r31, r4
/* 802CDB84  41 82 00 68 */	beq lbl_802CDBEC
/* 802CDB88  3C 60 80 3D */	lis r3, data_803CBF44@ha /* 0x803CBF44@ha */
/* 802CDB8C  38 03 BF 44 */	addi r0, r3, data_803CBF44@l /* 0x803CBF44@l */
/* 802CDB90  90 1E 00 00 */	stw r0, 0(r30)
/* 802CDB94  41 82 00 48 */	beq lbl_802CDBDC
/* 802CDB98  3C 60 80 3D */	lis r3, data_803CBF58@ha /* 0x803CBF58@ha */
/* 802CDB9C  38 03 BF 58 */	addi r0, r3, data_803CBF58@l /* 0x803CBF58@l */
/* 802CDBA0  90 1E 00 00 */	stw r0, 0(r30)
/* 802CDBA4  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 802CDBA8  28 00 00 00 */	cmplwi r0, 0
/* 802CDBAC  41 82 00 0C */	beq lbl_802CDBB8
/* 802CDBB0  38 7E 00 08 */	addi r3, r30, 8
/* 802CDBB4  4B FC 29 31 */	bl free__7JASHeapFv
lbl_802CDBB8:
/* 802CDBB8  38 7E 00 08 */	addi r3, r30, 8
/* 802CDBBC  3C 80 80 29 */	lis r4, __dt__7JASHeapFv@ha /* 0x80290B54@ha */
/* 802CDBC0  38 84 0B 54 */	addi r4, r4, __dt__7JASHeapFv@l /* 0x80290B54@l */
/* 802CDBC4  38 A0 00 44 */	li r5, 0x44
/* 802CDBC8  38 C0 00 01 */	li r6, 1
/* 802CDBCC  48 09 41 1D */	bl __destroy_arr
/* 802CDBD0  7F C3 F3 78 */	mr r3, r30
/* 802CDBD4  38 80 00 00 */	li r4, 0
/* 802CDBD8  4B FD 5F 49 */	bl __dt__16JAIStreamAramMgrFv
lbl_802CDBDC:
/* 802CDBDC  7F E0 07 35 */	extsh. r0, r31
/* 802CDBE0  40 81 00 0C */	ble lbl_802CDBEC
/* 802CDBE4  7F C3 F3 78 */	mr r3, r30
/* 802CDBE8  48 00 11 55 */	bl __dl__FPv
lbl_802CDBEC:
/* 802CDBEC  7F C3 F3 78 */	mr r3, r30
/* 802CDBF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CDBF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CDBF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CDBFC  7C 08 03 A6 */	mtlr r0
/* 802CDC00  38 21 00 10 */	addi r1, r1, 0x10
/* 802CDC04  4E 80 00 20 */	blr 
