lbl_80D37E9C:
/* 80D37E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D37EA0  7C 08 02 A6 */	mflr r0
/* 80D37EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D37EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D37EAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D37EB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D37EB4  7C 9F 23 78 */	mr r31, r4
/* 80D37EB8  41 82 00 38 */	beq lbl_80D37EF0
/* 80D37EBC  3C 60 80 D4 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80D37EC0  38 03 86 88 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80D37EC4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80D37EC8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D37ECC  38 80 FF FF */	li r4, -1
/* 80D37ED0  4B 53 70 48 */	b __dt__8cM3dGCirFv
/* 80D37ED4  7F C3 F3 78 */	mr r3, r30
/* 80D37ED8  38 80 00 00 */	li r4, 0
/* 80D37EDC  4B 53 01 D4 */	b __dt__13cBgS_PolyInfoFv
/* 80D37EE0  7F E0 07 35 */	extsh. r0, r31
/* 80D37EE4  40 81 00 0C */	ble lbl_80D37EF0
/* 80D37EE8  7F C3 F3 78 */	mr r3, r30
/* 80D37EEC  4B 59 6E 50 */	b __dl__FPv
lbl_80D37EF0:
/* 80D37EF0  7F C3 F3 78 */	mr r3, r30
/* 80D37EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D37EF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D37EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D37F00  7C 08 03 A6 */	mtlr r0
/* 80D37F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D37F08  4E 80 00 20 */	blr 
