lbl_802DAF5C:
/* 802DAF5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DAF60  7C 08 02 A6 */	mflr r0
/* 802DAF64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DAF68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DAF6C  93 C1 00 08 */	stw r30, 8(r1)
/* 802DAF70  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DAF74  7C 9F 23 78 */	mr r31, r4
/* 802DAF78  41 82 00 54 */	beq lbl_802DAFCC
/* 802DAF7C  88 1E 00 4C */	lbz r0, 0x4c(r30)
/* 802DAF80  28 00 00 01 */	cmplwi r0, 1
/* 802DAF84  40 82 00 24 */	bne lbl_802DAFA8
/* 802DAF88  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 802DAF8C  28 03 00 00 */	cmplwi r3, 0
/* 802DAF90  41 82 00 18 */	beq lbl_802DAFA8
/* 802DAF94  38 80 00 01 */	li r4, 1
/* 802DAF98  81 83 00 00 */	lwz r12, 0(r3)
/* 802DAF9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802DAFA0  7D 89 03 A6 */	mtctr r12
/* 802DAFA4  4E 80 04 21 */	bctrl 
lbl_802DAFA8:
/* 802DAFA8  28 1E 00 00 */	cmplwi r30, 0
/* 802DAFAC  41 82 00 10 */	beq lbl_802DAFBC
/* 802DAFB0  7F C3 F3 78 */	mr r3, r30
/* 802DAFB4  38 80 00 00 */	li r4, 0
/* 802DAFB8  48 00 0E 5D */	bl __dt__10JSUPtrLinkFv
lbl_802DAFBC:
/* 802DAFBC  7F E0 07 35 */	extsh. r0, r31
/* 802DAFC0  40 81 00 0C */	ble lbl_802DAFCC
/* 802DAFC4  7F C3 F3 78 */	mr r3, r30
/* 802DAFC8  4B FF 3D 75 */	bl __dl__FPv
lbl_802DAFCC:
/* 802DAFCC  7F C3 F3 78 */	mr r3, r30
/* 802DAFD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DAFD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DAFD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DAFDC  7C 08 03 A6 */	mtlr r0
/* 802DAFE0  38 21 00 10 */	addi r1, r1, 0x10
/* 802DAFE4  4E 80 00 20 */	blr 
