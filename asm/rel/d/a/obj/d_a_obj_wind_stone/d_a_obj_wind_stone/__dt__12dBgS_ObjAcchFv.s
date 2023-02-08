lbl_80D37E2C:
/* 80D37E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D37E30  7C 08 02 A6 */	mflr r0
/* 80D37E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D37E38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D37E3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D37E40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D37E44  7C 9F 23 78 */	mr r31, r4
/* 80D37E48  41 82 00 38 */	beq lbl_80D37E80
/* 80D37E4C  3C 80 80 D4 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80D38694@ha */
/* 80D37E50  38 84 86 94 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80D38694@l */
/* 80D37E54  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D37E58  38 04 00 0C */	addi r0, r4, 0xc
/* 80D37E5C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D37E60  38 04 00 18 */	addi r0, r4, 0x18
/* 80D37E64  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D37E68  38 80 00 00 */	li r4, 0
/* 80D37E6C  4B 33 E1 29 */	bl __dt__9dBgS_AcchFv
/* 80D37E70  7F E0 07 35 */	extsh. r0, r31
/* 80D37E74  40 81 00 0C */	ble lbl_80D37E80
/* 80D37E78  7F C3 F3 78 */	mr r3, r30
/* 80D37E7C  4B 59 6E C1 */	bl __dl__FPv
lbl_80D37E80:
/* 80D37E80  7F C3 F3 78 */	mr r3, r30
/* 80D37E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D37E88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D37E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D37E90  7C 08 03 A6 */	mtlr r0
/* 80D37E94  38 21 00 10 */	addi r1, r1, 0x10
/* 80D37E98  4E 80 00 20 */	blr 
