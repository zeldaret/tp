lbl_802DA820:
/* 802DA820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DA824  7C 08 02 A6 */	mflr r0
/* 802DA828  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DA82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DA830  93 C1 00 08 */	stw r30, 8(r1)
/* 802DA834  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DA838  7C 9F 23 78 */	mr r31, r4
/* 802DA83C  41 82 00 1C */	beq lbl_802DA858
/* 802DA840  38 80 00 00 */	li r4, 0
/* 802DA844  48 00 16 69 */	bl __dt__10JSUPtrListFv
/* 802DA848  7F E0 07 35 */	extsh. r0, r31
/* 802DA84C  40 81 00 0C */	ble lbl_802DA858
/* 802DA850  7F C3 F3 78 */	mr r3, r30
/* 802DA854  4B FF 44 E9 */	bl __dl__FPv
lbl_802DA858:
/* 802DA858  7F C3 F3 78 */	mr r3, r30
/* 802DA85C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DA860  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DA864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DA868  7C 08 03 A6 */	mtlr r0
/* 802DA86C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DA870  4E 80 00 20 */	blr 
