lbl_80BFF858:
/* 80BFF858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFF85C  7C 08 02 A6 */	mflr r0
/* 80BFF860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFF864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFF868  93 C1 00 08 */	stw r30, 8(r1)
/* 80BFF86C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BFF870  7C 9F 23 78 */	mr r31, r4
/* 80BFF874  41 82 00 38 */	beq lbl_80BFF8AC
/* 80BFF878  3C 60 80 C0 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80BFFD84@ha */
/* 80BFF87C  38 03 FD 84 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80BFFD84@l */
/* 80BFF880  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BFF884  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BFF888  38 80 FF FF */	li r4, -1
/* 80BFF88C  4B 66 F6 8D */	bl __dt__8cM3dGCirFv
/* 80BFF890  7F C3 F3 78 */	mr r3, r30
/* 80BFF894  38 80 00 00 */	li r4, 0
/* 80BFF898  4B 66 88 19 */	bl __dt__13cBgS_PolyInfoFv
/* 80BFF89C  7F E0 07 35 */	extsh. r0, r31
/* 80BFF8A0  40 81 00 0C */	ble lbl_80BFF8AC
/* 80BFF8A4  7F C3 F3 78 */	mr r3, r30
/* 80BFF8A8  4B 6C F4 95 */	bl __dl__FPv
lbl_80BFF8AC:
/* 80BFF8AC  7F C3 F3 78 */	mr r3, r30
/* 80BFF8B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFF8B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BFF8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFF8BC  7C 08 03 A6 */	mtlr r0
/* 80BFF8C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFF8C4  4E 80 00 20 */	blr 
