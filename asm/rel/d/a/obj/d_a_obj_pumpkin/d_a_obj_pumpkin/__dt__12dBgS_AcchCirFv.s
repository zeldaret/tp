lbl_80CB5E4C:
/* 80CB5E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5E50  7C 08 02 A6 */	mflr r0
/* 80CB5E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB5E5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB5E60  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CB5E64  7C 9F 23 78 */	mr r31, r4
/* 80CB5E68  41 82 00 38 */	beq lbl_80CB5EA0
/* 80CB5E6C  3C 60 80 CC */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CB8580@ha */
/* 80CB5E70  38 03 85 80 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CB8580@l */
/* 80CB5E74  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CB5E78  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CB5E7C  38 80 FF FF */	li r4, -1
/* 80CB5E80  4B 5B 90 99 */	bl __dt__8cM3dGCirFv
/* 80CB5E84  7F C3 F3 78 */	mr r3, r30
/* 80CB5E88  38 80 00 00 */	li r4, 0
/* 80CB5E8C  4B 5B 22 25 */	bl __dt__13cBgS_PolyInfoFv
/* 80CB5E90  7F E0 07 35 */	extsh. r0, r31
/* 80CB5E94  40 81 00 0C */	ble lbl_80CB5EA0
/* 80CB5E98  7F C3 F3 78 */	mr r3, r30
/* 80CB5E9C  4B 61 8E A1 */	bl __dl__FPv
lbl_80CB5EA0:
/* 80CB5EA0  7F C3 F3 78 */	mr r3, r30
/* 80CB5EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB5EA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB5EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB5EB0  7C 08 03 A6 */	mtlr r0
/* 80CB5EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5EB8  4E 80 00 20 */	blr 
