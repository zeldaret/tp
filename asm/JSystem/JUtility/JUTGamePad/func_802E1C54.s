lbl_802E1C54:
/* 802E1C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1C58  7C 08 02 A6 */	mflr r0
/* 802E1C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E1C64  93 C1 00 08 */	stw r30, 8(r1)
/* 802E1C68  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E1C6C  7C 9F 23 78 */	mr r31, r4
/* 802E1C70  41 82 00 1C */	beq lbl_802E1C8C
/* 802E1C74  38 80 00 00 */	li r4, 0
/* 802E1C78  4B FF A2 35 */	bl __dt__10JSUPtrListFv
/* 802E1C7C  7F E0 07 35 */	extsh. r0, r31
/* 802E1C80  40 81 00 0C */	ble lbl_802E1C8C
/* 802E1C84  7F C3 F3 78 */	mr r3, r30
/* 802E1C88  4B FE D0 B5 */	bl __dl__FPv
lbl_802E1C8C:
/* 802E1C8C  7F C3 F3 78 */	mr r3, r30
/* 802E1C90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E1C94  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E1C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1C9C  7C 08 03 A6 */	mtlr r0
/* 802E1CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1CA4  4E 80 00 20 */	blr 
