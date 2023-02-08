lbl_80C40E74:
/* 80C40E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C40E78  7C 08 02 A6 */	mflr r0
/* 80C40E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C40E80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C40E84  93 C1 00 08 */	stw r30, 8(r1)
/* 80C40E88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C40E8C  7C 9F 23 78 */	mr r31, r4
/* 80C40E90  41 82 00 38 */	beq lbl_80C40EC8
/* 80C40E94  3C 80 80 C4 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80C41100@ha */
/* 80C40E98  38 84 11 00 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80C41100@l */
/* 80C40E9C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C40EA0  38 04 00 0C */	addi r0, r4, 0xc
/* 80C40EA4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C40EA8  38 04 00 18 */	addi r0, r4, 0x18
/* 80C40EAC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C40EB0  38 80 00 00 */	li r4, 0
/* 80C40EB4  4B 43 50 E1 */	bl __dt__9dBgS_AcchFv
/* 80C40EB8  7F E0 07 35 */	extsh. r0, r31
/* 80C40EBC  40 81 00 0C */	ble lbl_80C40EC8
/* 80C40EC0  7F C3 F3 78 */	mr r3, r30
/* 80C40EC4  4B 68 DE 79 */	bl __dl__FPv
lbl_80C40EC8:
/* 80C40EC8  7F C3 F3 78 */	mr r3, r30
/* 80C40ECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C40ED0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C40ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C40ED8  7C 08 03 A6 */	mtlr r0
/* 80C40EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C40EE0  4E 80 00 20 */	blr 
