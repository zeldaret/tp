lbl_8072BB60:
/* 8072BB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072BB64  7C 08 02 A6 */	mflr r0
/* 8072BB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072BB6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072BB70  93 C1 00 08 */	stw r30, 8(r1)
/* 8072BB74  7C 7E 1B 79 */	or. r30, r3, r3
/* 8072BB78  7C 9F 23 78 */	mr r31, r4
/* 8072BB7C  41 82 00 38 */	beq lbl_8072BBB4
/* 8072BB80  3C 80 80 73 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 8072BB84  38 84 C3 B0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 8072BB88  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8072BB8C  38 04 00 0C */	addi r0, r4, 0xc
/* 8072BB90  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8072BB94  38 04 00 18 */	addi r0, r4, 0x18
/* 8072BB98  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8072BB9C  38 80 00 00 */	li r4, 0
/* 8072BBA0  4B 94 A3 F4 */	b __dt__9dBgS_AcchFv
/* 8072BBA4  7F E0 07 35 */	extsh. r0, r31
/* 8072BBA8  40 81 00 0C */	ble lbl_8072BBB4
/* 8072BBAC  7F C3 F3 78 */	mr r3, r30
/* 8072BBB0  4B BA 31 8C */	b __dl__FPv
lbl_8072BBB4:
/* 8072BBB4  7F C3 F3 78 */	mr r3, r30
/* 8072BBB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072BBBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8072BBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072BBC4  7C 08 03 A6 */	mtlr r0
/* 8072BBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8072BBCC  4E 80 00 20 */	blr 
