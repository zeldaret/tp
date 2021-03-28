lbl_80BF3408:
/* 80BF3408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF340C  7C 08 02 A6 */	mflr r0
/* 80BF3410  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF3414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF3418  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF341C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BF3420  7C 9F 23 78 */	mr r31, r4
/* 80BF3424  41 82 00 38 */	beq lbl_80BF345C
/* 80BF3428  3C 80 80 BF */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BF342C  38 84 4B 0C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BF3430  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BF3434  38 04 00 0C */	addi r0, r4, 0xc
/* 80BF3438  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BF343C  38 04 00 18 */	addi r0, r4, 0x18
/* 80BF3440  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BF3444  38 80 00 00 */	li r4, 0
/* 80BF3448  4B 48 2B 4C */	b __dt__9dBgS_AcchFv
/* 80BF344C  7F E0 07 35 */	extsh. r0, r31
/* 80BF3450  40 81 00 0C */	ble lbl_80BF345C
/* 80BF3454  7F C3 F3 78 */	mr r3, r30
/* 80BF3458  4B 6D B8 E4 */	b __dl__FPv
lbl_80BF345C:
/* 80BF345C  7F C3 F3 78 */	mr r3, r30
/* 80BF3460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF3464  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF3468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF346C  7C 08 03 A6 */	mtlr r0
/* 80BF3470  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF3474  4E 80 00 20 */	blr 
