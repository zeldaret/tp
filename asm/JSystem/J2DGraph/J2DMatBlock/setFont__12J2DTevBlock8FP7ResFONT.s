lbl_802EFC40:
/* 802EFC40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EFC44  7C 08 02 A6 */	mflr r0
/* 802EFC48  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EFC4C  39 61 00 20 */	addi r11, r1, 0x20
/* 802EFC50  48 07 25 8D */	bl _savegpr_29
/* 802EFC54  7C 7D 1B 78 */	mr r29, r3
/* 802EFC58  7C 9E 23 79 */	or. r30, r4, r4
/* 802EFC5C  40 82 00 0C */	bne lbl_802EFC68
/* 802EFC60  38 60 00 00 */	li r3, 0
/* 802EFC64  48 00 00 70 */	b lbl_802EFCD4
lbl_802EFC68:
/* 802EFC68  38 60 00 70 */	li r3, 0x70
/* 802EFC6C  4B FD EF E1 */	bl __nw__FUl
/* 802EFC70  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EFC74  41 82 00 14 */	beq lbl_802EFC88
/* 802EFC78  7F C4 F3 78 */	mr r4, r30
/* 802EFC7C  38 A0 00 00 */	li r5, 0
/* 802EFC80  4B FE F3 15 */	bl __ct__10JUTResFontFPC7ResFONTP7JKRHeap
/* 802EFC84  7C 7F 1B 78 */	mr r31, r3
lbl_802EFC88:
/* 802EFC88  28 1F 00 00 */	cmplwi r31, 0
/* 802EFC8C  40 82 00 0C */	bne lbl_802EFC98
/* 802EFC90  38 60 00 00 */	li r3, 0
/* 802EFC94  48 00 00 40 */	b lbl_802EFCD4
lbl_802EFC98:
/* 802EFC98  88 1D 01 21 */	lbz r0, 0x121(r29)
/* 802EFC9C  28 00 00 00 */	cmplwi r0, 0
/* 802EFCA0  41 82 00 24 */	beq lbl_802EFCC4
/* 802EFCA4  80 7D 01 1C */	lwz r3, 0x11c(r29)
/* 802EFCA8  28 03 00 00 */	cmplwi r3, 0
/* 802EFCAC  41 82 00 18 */	beq lbl_802EFCC4
/* 802EFCB0  38 80 00 01 */	li r4, 1
/* 802EFCB4  81 83 00 00 */	lwz r12, 0(r3)
/* 802EFCB8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EFCBC  7D 89 03 A6 */	mtctr r12
/* 802EFCC0  4E 80 04 21 */	bctrl 
lbl_802EFCC4:
/* 802EFCC4  93 FD 01 1C */	stw r31, 0x11c(r29)
/* 802EFCC8  38 00 00 01 */	li r0, 1
/* 802EFCCC  98 1D 01 21 */	stb r0, 0x121(r29)
/* 802EFCD0  38 60 00 01 */	li r3, 1
lbl_802EFCD4:
/* 802EFCD4  39 61 00 20 */	addi r11, r1, 0x20
/* 802EFCD8  48 07 25 51 */	bl _restgpr_29
/* 802EFCDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EFCE0  7C 08 03 A6 */	mtlr r0
/* 802EFCE4  38 21 00 20 */	addi r1, r1, 0x20
/* 802EFCE8  4E 80 00 20 */	blr 
