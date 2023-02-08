lbl_80C53EA4:
/* 80C53EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C53EA8  7C 08 02 A6 */	mflr r0
/* 80C53EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C53EB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C53EB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C53EB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C53EBC  7C 9F 23 78 */	mr r31, r4
/* 80C53EC0  41 82 00 38 */	beq lbl_80C53EF8
/* 80C53EC4  3C 80 80 C5 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80C540B0@ha */
/* 80C53EC8  38 84 40 B0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80C540B0@l */
/* 80C53ECC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C53ED0  38 04 00 0C */	addi r0, r4, 0xc
/* 80C53ED4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C53ED8  38 04 00 18 */	addi r0, r4, 0x18
/* 80C53EDC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C53EE0  38 80 00 00 */	li r4, 0
/* 80C53EE4  4B 42 20 B1 */	bl __dt__9dBgS_AcchFv
/* 80C53EE8  7F E0 07 35 */	extsh. r0, r31
/* 80C53EEC  40 81 00 0C */	ble lbl_80C53EF8
/* 80C53EF0  7F C3 F3 78 */	mr r3, r30
/* 80C53EF4  4B 67 AE 49 */	bl __dl__FPv
lbl_80C53EF8:
/* 80C53EF8  7F C3 F3 78 */	mr r3, r30
/* 80C53EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C53F00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C53F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C53F08  7C 08 03 A6 */	mtlr r0
/* 80C53F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C53F10  4E 80 00 20 */	blr 
