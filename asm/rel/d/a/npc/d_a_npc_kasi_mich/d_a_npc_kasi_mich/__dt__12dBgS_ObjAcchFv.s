lbl_80A29E50:
/* 80A29E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29E54  7C 08 02 A6 */	mflr r0
/* 80A29E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29E5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A29E60  93 C1 00 08 */	stw r30, 8(r1)
/* 80A29E64  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A29E68  7C 9F 23 78 */	mr r31, r4
/* 80A29E6C  41 82 00 38 */	beq lbl_80A29EA4
/* 80A29E70  3C 80 80 A3 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80A29E74  38 84 A6 F8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80A29E78  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A29E7C  38 04 00 0C */	addi r0, r4, 0xc
/* 80A29E80  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A29E84  38 04 00 18 */	addi r0, r4, 0x18
/* 80A29E88  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A29E8C  38 80 00 00 */	li r4, 0
/* 80A29E90  4B 64 C1 04 */	b __dt__9dBgS_AcchFv
/* 80A29E94  7F E0 07 35 */	extsh. r0, r31
/* 80A29E98  40 81 00 0C */	ble lbl_80A29EA4
/* 80A29E9C  7F C3 F3 78 */	mr r3, r30
/* 80A29EA0  4B 8A 4E 9C */	b __dl__FPv
lbl_80A29EA4:
/* 80A29EA4  7F C3 F3 78 */	mr r3, r30
/* 80A29EA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A29EAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A29EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29EB4  7C 08 03 A6 */	mtlr r0
/* 80A29EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29EBC  4E 80 00 20 */	blr 
