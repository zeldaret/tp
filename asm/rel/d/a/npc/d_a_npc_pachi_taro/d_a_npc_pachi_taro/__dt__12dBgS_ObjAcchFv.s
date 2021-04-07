lbl_80AA0E88:
/* 80AA0E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA0E8C  7C 08 02 A6 */	mflr r0
/* 80AA0E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA0E98  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA0E9C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA0EA0  7C 9F 23 78 */	mr r31, r4
/* 80AA0EA4  41 82 00 38 */	beq lbl_80AA0EDC
/* 80AA0EA8  3C 80 80 AA */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80AA2A2C@ha */
/* 80AA0EAC  38 84 2A 2C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80AA2A2C@l */
/* 80AA0EB0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AA0EB4  38 04 00 0C */	addi r0, r4, 0xc
/* 80AA0EB8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AA0EBC  38 04 00 18 */	addi r0, r4, 0x18
/* 80AA0EC0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AA0EC4  38 80 00 00 */	li r4, 0
/* 80AA0EC8  4B 5D 50 CD */	bl __dt__9dBgS_AcchFv
/* 80AA0ECC  7F E0 07 35 */	extsh. r0, r31
/* 80AA0ED0  40 81 00 0C */	ble lbl_80AA0EDC
/* 80AA0ED4  7F C3 F3 78 */	mr r3, r30
/* 80AA0ED8  4B 82 DE 65 */	bl __dl__FPv
lbl_80AA0EDC:
/* 80AA0EDC  7F C3 F3 78 */	mr r3, r30
/* 80AA0EE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA0EE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA0EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA0EEC  7C 08 03 A6 */	mtlr r0
/* 80AA0EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0EF4  4E 80 00 20 */	blr 
