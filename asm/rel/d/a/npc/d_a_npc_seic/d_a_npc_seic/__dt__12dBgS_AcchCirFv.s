lbl_80AC8E6C:
/* 80AC8E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8E70  7C 08 02 A6 */	mflr r0
/* 80AC8E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8E78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC8E7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC8E80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC8E84  7C 9F 23 78 */	mr r31, r4
/* 80AC8E88  41 82 00 38 */	beq lbl_80AC8EC0
/* 80AC8E8C  3C 60 80 AD */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AC8E90  38 03 94 60 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AC8E94  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AC8E98  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AC8E9C  38 80 FF FF */	li r4, -1
/* 80AC8EA0  4B 7A 60 78 */	b __dt__8cM3dGCirFv
/* 80AC8EA4  7F C3 F3 78 */	mr r3, r30
/* 80AC8EA8  38 80 00 00 */	li r4, 0
/* 80AC8EAC  4B 79 F2 04 */	b __dt__13cBgS_PolyInfoFv
/* 80AC8EB0  7F E0 07 35 */	extsh. r0, r31
/* 80AC8EB4  40 81 00 0C */	ble lbl_80AC8EC0
/* 80AC8EB8  7F C3 F3 78 */	mr r3, r30
/* 80AC8EBC  4B 80 5E 80 */	b __dl__FPv
lbl_80AC8EC0:
/* 80AC8EC0  7F C3 F3 78 */	mr r3, r30
/* 80AC8EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8EC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC8ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8ED0  7C 08 03 A6 */	mtlr r0
/* 80AC8ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8ED8  4E 80 00 20 */	blr 
