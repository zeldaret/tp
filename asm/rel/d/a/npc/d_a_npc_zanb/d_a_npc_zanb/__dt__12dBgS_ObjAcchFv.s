lbl_80B6B5C4:
/* 80B6B5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6B5C8  7C 08 02 A6 */	mflr r0
/* 80B6B5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6B5D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6B5D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6B5D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B6B5DC  7C 9F 23 78 */	mr r31, r4
/* 80B6B5E0  41 82 00 38 */	beq lbl_80B6B618
/* 80B6B5E4  3C 80 80 B7 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80B6B5E8  38 84 BF 48 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80B6B5EC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B6B5F0  38 04 00 0C */	addi r0, r4, 0xc
/* 80B6B5F4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B6B5F8  38 04 00 18 */	addi r0, r4, 0x18
/* 80B6B5FC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B6B600  38 80 00 00 */	li r4, 0
/* 80B6B604  4B 50 A9 90 */	b __dt__9dBgS_AcchFv
/* 80B6B608  7F E0 07 35 */	extsh. r0, r31
/* 80B6B60C  40 81 00 0C */	ble lbl_80B6B618
/* 80B6B610  7F C3 F3 78 */	mr r3, r30
/* 80B6B614  4B 76 37 28 */	b __dl__FPv
lbl_80B6B618:
/* 80B6B618  7F C3 F3 78 */	mr r3, r30
/* 80B6B61C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6B620  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6B624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6B628  7C 08 03 A6 */	mtlr r0
/* 80B6B62C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6B630  4E 80 00 20 */	blr 
