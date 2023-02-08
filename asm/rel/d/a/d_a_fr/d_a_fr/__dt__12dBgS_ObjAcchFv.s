lbl_8051B8B0:
/* 8051B8B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B8B4  7C 08 02 A6 */	mflr r0
/* 8051B8B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B8BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B8C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8051B8C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8051B8C8  7C 9F 23 78 */	mr r31, r4
/* 8051B8CC  41 82 00 38 */	beq lbl_8051B904
/* 8051B8D0  3C 80 80 52 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8051BBC8@ha */
/* 8051B8D4  38 84 BB C8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8051BBC8@l */
/* 8051B8D8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8051B8DC  38 04 00 0C */	addi r0, r4, 0xc
/* 8051B8E0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8051B8E4  38 04 00 18 */	addi r0, r4, 0x18
/* 8051B8E8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8051B8EC  38 80 00 00 */	li r4, 0
/* 8051B8F0  4B B5 A6 A5 */	bl __dt__9dBgS_AcchFv
/* 8051B8F4  7F E0 07 35 */	extsh. r0, r31
/* 8051B8F8  40 81 00 0C */	ble lbl_8051B904
/* 8051B8FC  7F C3 F3 78 */	mr r3, r30
/* 8051B900  4B DB 34 3D */	bl __dl__FPv
lbl_8051B904:
/* 8051B904  7F C3 F3 78 */	mr r3, r30
/* 8051B908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B90C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051B910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B914  7C 08 03 A6 */	mtlr r0
/* 8051B918  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B91C  4E 80 00 20 */	blr 
