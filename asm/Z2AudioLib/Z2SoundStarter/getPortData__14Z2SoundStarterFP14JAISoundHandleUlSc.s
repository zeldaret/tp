lbl_802AAF74:
/* 802AAF74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AAF78  7C 08 02 A6 */	mflr r0
/* 802AAF7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AAF80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AAF84  7C BF 2B 78 */	mr r31, r5
/* 802AAF88  28 04 00 00 */	cmplwi r4, 0
/* 802AAF8C  41 82 00 4C */	beq lbl_802AAFD8
/* 802AAF90  80 64 00 00 */	lwz r3, 0(r4)
/* 802AAF94  28 03 00 00 */	cmplwi r3, 0
/* 802AAF98  41 82 00 40 */	beq lbl_802AAFD8
/* 802AAF9C  7C C4 07 74 */	extsb r4, r6
/* 802AAFA0  2C 04 FF FF */	cmpwi r4, -1
/* 802AAFA4  40 82 00 18 */	bne lbl_802AAFBC
/* 802AAFA8  81 83 00 00 */	lwz r12, 0(r3)
/* 802AAFAC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802AAFB0  7D 89 03 A6 */	mtctr r12
/* 802AAFB4  4E 80 04 21 */	bctrl 
/* 802AAFB8  48 00 00 14 */	b lbl_802AAFCC
lbl_802AAFBC:
/* 802AAFBC  81 83 00 00 */	lwz r12, 0(r3)
/* 802AAFC0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802AAFC4  7D 89 03 A6 */	mtctr r12
/* 802AAFC8  4E 80 04 21 */	bctrl 
lbl_802AAFCC:
/* 802AAFCC  7F E4 FB 78 */	mr r4, r31
/* 802AAFD0  4B FE 79 AD */	bl readPort__8JASTrackFUl
/* 802AAFD4  48 00 00 08 */	b lbl_802AAFDC
lbl_802AAFD8:
/* 802AAFD8  38 60 00 00 */	li r3, 0
lbl_802AAFDC:
/* 802AAFDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AAFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AAFE4  7C 08 03 A6 */	mtlr r0
/* 802AAFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 802AAFEC  4E 80 00 20 */	blr 
