lbl_8066FA48:
/* 8066FA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066FA4C  7C 08 02 A6 */	mflr r0
/* 8066FA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066FA54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066FA58  93 C1 00 08 */	stw r30, 8(r1)
/* 8066FA5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8066FA60  7C 9F 23 78 */	mr r31, r4
/* 8066FA64  41 82 00 38 */	beq lbl_8066FA9C
/* 8066FA68  3C 80 80 67 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 8066FA6C  38 84 0B 80 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 8066FA70  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8066FA74  38 04 00 0C */	addi r0, r4, 0xc
/* 8066FA78  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8066FA7C  38 04 00 18 */	addi r0, r4, 0x18
/* 8066FA80  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8066FA84  38 80 00 00 */	li r4, 0
/* 8066FA88  4B A0 65 0C */	b __dt__9dBgS_AcchFv
/* 8066FA8C  7F E0 07 35 */	extsh. r0, r31
/* 8066FA90  40 81 00 0C */	ble lbl_8066FA9C
/* 8066FA94  7F C3 F3 78 */	mr r3, r30
/* 8066FA98  4B C5 F2 A4 */	b __dl__FPv
lbl_8066FA9C:
/* 8066FA9C  7F C3 F3 78 */	mr r3, r30
/* 8066FAA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066FAA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8066FAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066FAAC  7C 08 03 A6 */	mtlr r0
/* 8066FAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8066FAB4  4E 80 00 20 */	blr 
