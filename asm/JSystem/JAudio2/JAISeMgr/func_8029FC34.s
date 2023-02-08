lbl_8029FC34:
/* 8029FC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029FC38  7C 08 02 A6 */	mflr r0
/* 8029FC3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029FC40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029FC44  93 C1 00 08 */	stw r30, 8(r1)
/* 8029FC48  7C 7E 1B 79 */	or. r30, r3, r3
/* 8029FC4C  7C 9F 23 78 */	mr r31, r4
/* 8029FC50  41 82 00 1C */	beq lbl_8029FC6C
/* 8029FC54  38 80 00 00 */	li r4, 0
/* 8029FC58  4B FF 0C 09 */	bl __dt__17JASGenericMemPoolFv
/* 8029FC5C  7F E0 07 35 */	extsh. r0, r31
/* 8029FC60  40 81 00 0C */	ble lbl_8029FC6C
/* 8029FC64  7F C3 F3 78 */	mr r3, r30
/* 8029FC68  48 02 F0 D5 */	bl __dl__FPv
lbl_8029FC6C:
/* 8029FC6C  7F C3 F3 78 */	mr r3, r30
/* 8029FC70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029FC74  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029FC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029FC7C  7C 08 03 A6 */	mtlr r0
/* 8029FC80  38 21 00 10 */	addi r1, r1, 0x10
/* 8029FC84  4E 80 00 20 */	blr 
