lbl_80575E68:
/* 80575E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575E6C  7C 08 02 A6 */	mflr r0
/* 80575E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575E78  93 C1 00 08 */	stw r30, 8(r1)
/* 80575E7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80575E80  7C 9F 23 78 */	mr r31, r4
/* 80575E84  41 82 00 38 */	beq lbl_80575EBC
/* 80575E88  3C 80 80 57 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80575E8C  38 84 68 68 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80575E90  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80575E94  38 04 00 0C */	addi r0, r4, 0xc
/* 80575E98  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80575E9C  38 04 00 18 */	addi r0, r4, 0x18
/* 80575EA0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80575EA4  38 80 00 00 */	li r4, 0
/* 80575EA8  4B B0 00 EC */	b __dt__9dBgS_AcchFv
/* 80575EAC  7F E0 07 35 */	extsh. r0, r31
/* 80575EB0  40 81 00 0C */	ble lbl_80575EBC
/* 80575EB4  7F C3 F3 78 */	mr r3, r30
/* 80575EB8  4B D5 8E 84 */	b __dl__FPv
lbl_80575EBC:
/* 80575EBC  7F C3 F3 78 */	mr r3, r30
/* 80575EC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575EC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80575EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575ECC  7C 08 03 A6 */	mtlr r0
/* 80575ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80575ED4  4E 80 00 20 */	blr 
