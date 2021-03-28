lbl_80BF9A64:
/* 80BF9A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF9A68  7C 08 02 A6 */	mflr r0
/* 80BF9A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF9A70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF9A74  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF9A78  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BF9A7C  7C 9F 23 78 */	mr r31, r4
/* 80BF9A80  41 82 00 38 */	beq lbl_80BF9AB8
/* 80BF9A84  3C 80 80 C0 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BF9A88  38 84 AB 4C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BF9A8C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BF9A90  38 04 00 0C */	addi r0, r4, 0xc
/* 80BF9A94  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BF9A98  38 04 00 18 */	addi r0, r4, 0x18
/* 80BF9A9C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BF9AA0  38 80 00 00 */	li r4, 0
/* 80BF9AA4  4B 47 C4 F0 */	b __dt__9dBgS_AcchFv
/* 80BF9AA8  7F E0 07 35 */	extsh. r0, r31
/* 80BF9AAC  40 81 00 0C */	ble lbl_80BF9AB8
/* 80BF9AB0  7F C3 F3 78 */	mr r3, r30
/* 80BF9AB4  4B 6D 52 88 */	b __dl__FPv
lbl_80BF9AB8:
/* 80BF9AB8  7F C3 F3 78 */	mr r3, r30
/* 80BF9ABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF9AC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF9AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF9AC8  7C 08 03 A6 */	mtlr r0
/* 80BF9ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF9AD0  4E 80 00 20 */	blr 
