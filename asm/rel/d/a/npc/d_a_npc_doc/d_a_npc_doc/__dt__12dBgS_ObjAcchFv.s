lbl_809A9C88:
/* 809A9C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A9C8C  7C 08 02 A6 */	mflr r0
/* 809A9C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A9C94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A9C98  93 C1 00 08 */	stw r30, 8(r1)
/* 809A9C9C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809A9CA0  7C 9F 23 78 */	mr r31, r4
/* 809A9CA4  41 82 00 38 */	beq lbl_809A9CDC
/* 809A9CA8  3C 80 80 9B */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x809AA964@ha */
/* 809A9CAC  38 84 A9 64 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x809AA964@l */
/* 809A9CB0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809A9CB4  38 04 00 0C */	addi r0, r4, 0xc
/* 809A9CB8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809A9CBC  38 04 00 18 */	addi r0, r4, 0x18
/* 809A9CC0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809A9CC4  38 80 00 00 */	li r4, 0
/* 809A9CC8  4B 6C C2 CD */	bl __dt__9dBgS_AcchFv
/* 809A9CCC  7F E0 07 35 */	extsh. r0, r31
/* 809A9CD0  40 81 00 0C */	ble lbl_809A9CDC
/* 809A9CD4  7F C3 F3 78 */	mr r3, r30
/* 809A9CD8  4B 92 50 65 */	bl __dl__FPv
lbl_809A9CDC:
/* 809A9CDC  7F C3 F3 78 */	mr r3, r30
/* 809A9CE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A9CE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A9CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A9CEC  7C 08 03 A6 */	mtlr r0
/* 809A9CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809A9CF4  4E 80 00 20 */	blr 
