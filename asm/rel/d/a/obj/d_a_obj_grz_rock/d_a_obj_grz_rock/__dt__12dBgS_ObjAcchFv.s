lbl_80C150DC:
/* 80C150DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C150E0  7C 08 02 A6 */	mflr r0
/* 80C150E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C150E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C150EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C150F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C150F4  7C 9F 23 78 */	mr r31, r4
/* 80C150F8  41 82 00 38 */	beq lbl_80C15130
/* 80C150FC  3C 80 80 C1 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80C153E0@ha */
/* 80C15100  38 84 53 E0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80C153E0@l */
/* 80C15104  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C15108  38 04 00 0C */	addi r0, r4, 0xc
/* 80C1510C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C15110  38 04 00 18 */	addi r0, r4, 0x18
/* 80C15114  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C15118  38 80 00 00 */	li r4, 0
/* 80C1511C  4B 46 0E 79 */	bl __dt__9dBgS_AcchFv
/* 80C15120  7F E0 07 35 */	extsh. r0, r31
/* 80C15124  40 81 00 0C */	ble lbl_80C15130
/* 80C15128  7F C3 F3 78 */	mr r3, r30
/* 80C1512C  4B 6B 9C 11 */	bl __dl__FPv
lbl_80C15130:
/* 80C15130  7F C3 F3 78 */	mr r3, r30
/* 80C15134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C15138  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1513C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C15140  7C 08 03 A6 */	mtlr r0
/* 80C15144  38 21 00 10 */	addi r1, r1, 0x10
/* 80C15148  4E 80 00 20 */	blr 
