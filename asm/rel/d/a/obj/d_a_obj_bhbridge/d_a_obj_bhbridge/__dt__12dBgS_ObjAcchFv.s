lbl_80BB58C4:
/* 80BB58C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB58C8  7C 08 02 A6 */	mflr r0
/* 80BB58CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB58D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB58D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB58D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BB58DC  7C 9F 23 78 */	mr r31, r4
/* 80BB58E0  41 82 00 38 */	beq lbl_80BB5918
/* 80BB58E4  3C 80 80 BB */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80BB6000@ha */
/* 80BB58E8  38 84 60 00 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80BB6000@l */
/* 80BB58EC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BB58F0  38 04 00 0C */	addi r0, r4, 0xc
/* 80BB58F4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BB58F8  38 04 00 18 */	addi r0, r4, 0x18
/* 80BB58FC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BB5900  38 80 00 00 */	li r4, 0
/* 80BB5904  4B 4C 06 91 */	bl __dt__9dBgS_AcchFv
/* 80BB5908  7F E0 07 35 */	extsh. r0, r31
/* 80BB590C  40 81 00 0C */	ble lbl_80BB5918
/* 80BB5910  7F C3 F3 78 */	mr r3, r30
/* 80BB5914  4B 71 94 29 */	bl __dl__FPv
lbl_80BB5918:
/* 80BB5918  7F C3 F3 78 */	mr r3, r30
/* 80BB591C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB5920  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB5924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB5928  7C 08 03 A6 */	mtlr r0
/* 80BB592C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB5930  4E 80 00 20 */	blr 
