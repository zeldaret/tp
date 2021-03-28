lbl_80C38E98:
/* 80C38E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C38E9C  7C 08 02 A6 */	mflr r0
/* 80C38EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C38EA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C38EA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C38EAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C38EB0  7C 9F 23 78 */	mr r31, r4
/* 80C38EB4  41 82 00 38 */	beq lbl_80C38EEC
/* 80C38EB8  3C 60 80 C4 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80C38EBC  38 03 97 AC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80C38EC0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C38EC4  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C38EC8  38 80 FF FF */	li r4, -1
/* 80C38ECC  4B 63 60 4C */	b __dt__8cM3dGCirFv
/* 80C38ED0  7F C3 F3 78 */	mr r3, r30
/* 80C38ED4  38 80 00 00 */	li r4, 0
/* 80C38ED8  4B 62 F1 D8 */	b __dt__13cBgS_PolyInfoFv
/* 80C38EDC  7F E0 07 35 */	extsh. r0, r31
/* 80C38EE0  40 81 00 0C */	ble lbl_80C38EEC
/* 80C38EE4  7F C3 F3 78 */	mr r3, r30
/* 80C38EE8  4B 69 5E 54 */	b __dl__FPv
lbl_80C38EEC:
/* 80C38EEC  7F C3 F3 78 */	mr r3, r30
/* 80C38EF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C38EF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C38EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C38EFC  7C 08 03 A6 */	mtlr r0
/* 80C38F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80C38F04  4E 80 00 20 */	blr 
