lbl_806CC980:
/* 806CC980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CC984  7C 08 02 A6 */	mflr r0
/* 806CC988  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CC98C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CC990  93 C1 00 08 */	stw r30, 8(r1)
/* 806CC994  7C 7E 1B 79 */	or. r30, r3, r3
/* 806CC998  7C 9F 23 78 */	mr r31, r4
/* 806CC99C  41 82 00 38 */	beq lbl_806CC9D4
/* 806CC9A0  3C 60 80 6D */	lis r3, __vt__12dBgS_AcchCir@ha
/* 806CC9A4  38 03 D2 E4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 806CC9A8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806CC9AC  38 7E 00 14 */	addi r3, r30, 0x14
/* 806CC9B0  38 80 FF FF */	li r4, -1
/* 806CC9B4  4B BA 25 64 */	b __dt__8cM3dGCirFv
/* 806CC9B8  7F C3 F3 78 */	mr r3, r30
/* 806CC9BC  38 80 00 00 */	li r4, 0
/* 806CC9C0  4B B9 B6 F0 */	b __dt__13cBgS_PolyInfoFv
/* 806CC9C4  7F E0 07 35 */	extsh. r0, r31
/* 806CC9C8  40 81 00 0C */	ble lbl_806CC9D4
/* 806CC9CC  7F C3 F3 78 */	mr r3, r30
/* 806CC9D0  4B C0 23 6C */	b __dl__FPv
lbl_806CC9D4:
/* 806CC9D4  7F C3 F3 78 */	mr r3, r30
/* 806CC9D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CC9DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 806CC9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CC9E4  7C 08 03 A6 */	mtlr r0
/* 806CC9E8  38 21 00 10 */	addi r1, r1, 0x10
/* 806CC9EC  4E 80 00 20 */	blr 
