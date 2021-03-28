lbl_800D0C6C:
/* 800D0C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D0C70  7C 08 02 A6 */	mflr r0
/* 800D0C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D0C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D0C7C  93 C1 00 08 */	stw r30, 8(r1)
/* 800D0C80  7C 7E 1B 79 */	or. r30, r3, r3
/* 800D0C84  7C 9F 23 78 */	mr r31, r4
/* 800D0C88  41 82 00 38 */	beq lbl_800D0CC0
/* 800D0C8C  3C 80 80 3B */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 800D0C90  38 84 35 C8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 800D0C94  90 9E 00 10 */	stw r4, 0x10(r30)
/* 800D0C98  38 04 00 0C */	addi r0, r4, 0xc
/* 800D0C9C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 800D0CA0  38 04 00 18 */	addi r0, r4, 0x18
/* 800D0CA4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 800D0CA8  38 80 00 00 */	li r4, 0
/* 800D0CAC  4B FA 52 E9 */	bl __dt__9dBgS_AcchFv
/* 800D0CB0  7F E0 07 35 */	extsh. r0, r31
/* 800D0CB4  40 81 00 0C */	ble lbl_800D0CC0
/* 800D0CB8  7F C3 F3 78 */	mr r3, r30
/* 800D0CBC  48 1F E0 81 */	bl __dl__FPv
lbl_800D0CC0:
/* 800D0CC0  7F C3 F3 78 */	mr r3, r30
/* 800D0CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D0CC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D0CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D0CD0  7C 08 03 A6 */	mtlr r0
/* 800D0CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 800D0CD8  4E 80 00 20 */	blr 
