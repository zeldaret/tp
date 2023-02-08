lbl_80A962E8:
/* 80A962E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A962EC  7C 08 02 A6 */	mflr r0
/* 80A962F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A962F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A962F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A962FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A96300  7C 9F 23 78 */	mr r31, r4
/* 80A96304  41 82 00 38 */	beq lbl_80A9633C
/* 80A96308  3C 80 80 A9 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80A97968@ha */
/* 80A9630C  38 84 79 68 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80A97968@l */
/* 80A96310  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A96314  38 04 00 0C */	addi r0, r4, 0xc
/* 80A96318  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A9631C  38 04 00 18 */	addi r0, r4, 0x18
/* 80A96320  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A96324  38 80 00 00 */	li r4, 0
/* 80A96328  4B 5D FC 6D */	bl __dt__9dBgS_AcchFv
/* 80A9632C  7F E0 07 35 */	extsh. r0, r31
/* 80A96330  40 81 00 0C */	ble lbl_80A9633C
/* 80A96334  7F C3 F3 78 */	mr r3, r30
/* 80A96338  4B 83 8A 05 */	bl __dl__FPv
lbl_80A9633C:
/* 80A9633C  7F C3 F3 78 */	mr r3, r30
/* 80A96340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A96344  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A96348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9634C  7C 08 03 A6 */	mtlr r0
/* 80A96350  38 21 00 10 */	addi r1, r1, 0x10
/* 80A96354  4E 80 00 20 */	blr 
