lbl_807B3E7C:
/* 807B3E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3E80  7C 08 02 A6 */	mflr r0
/* 807B3E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3E88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B3E8C  93 C1 00 08 */	stw r30, 8(r1)
/* 807B3E90  7C 7E 1B 79 */	or. r30, r3, r3
/* 807B3E94  7C 9F 23 78 */	mr r31, r4
/* 807B3E98  41 82 00 38 */	beq lbl_807B3ED0
/* 807B3E9C  3C 80 80 7B */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x807B4834@ha */
/* 807B3EA0  38 84 48 34 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x807B4834@l */
/* 807B3EA4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807B3EA8  38 04 00 0C */	addi r0, r4, 0xc
/* 807B3EAC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807B3EB0  38 04 00 18 */	addi r0, r4, 0x18
/* 807B3EB4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807B3EB8  38 80 00 00 */	li r4, 0
/* 807B3EBC  4B 8C 20 D9 */	bl __dt__9dBgS_AcchFv
/* 807B3EC0  7F E0 07 35 */	extsh. r0, r31
/* 807B3EC4  40 81 00 0C */	ble lbl_807B3ED0
/* 807B3EC8  7F C3 F3 78 */	mr r3, r30
/* 807B3ECC  4B B1 AE 71 */	bl __dl__FPv
lbl_807B3ED0:
/* 807B3ED0  7F C3 F3 78 */	mr r3, r30
/* 807B3ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B3ED8  83 C1 00 08 */	lwz r30, 8(r1)
/* 807B3EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B3EE0  7C 08 03 A6 */	mtlr r0
/* 807B3EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 807B3EE8  4E 80 00 20 */	blr 
