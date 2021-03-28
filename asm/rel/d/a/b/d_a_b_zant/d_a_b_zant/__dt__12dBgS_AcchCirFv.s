lbl_8064E8BC:
/* 8064E8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064E8C0  7C 08 02 A6 */	mflr r0
/* 8064E8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064E8C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064E8CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8064E8D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8064E8D4  7C 9F 23 78 */	mr r31, r4
/* 8064E8D8  41 82 00 38 */	beq lbl_8064E910
/* 8064E8DC  3C 60 80 65 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8064E8E0  38 03 F4 FC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8064E8E4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8064E8E8  38 7E 00 14 */	addi r3, r30, 0x14
/* 8064E8EC  38 80 FF FF */	li r4, -1
/* 8064E8F0  4B C2 06 28 */	b __dt__8cM3dGCirFv
/* 8064E8F4  7F C3 F3 78 */	mr r3, r30
/* 8064E8F8  38 80 00 00 */	li r4, 0
/* 8064E8FC  4B C1 97 B4 */	b __dt__13cBgS_PolyInfoFv
/* 8064E900  7F E0 07 35 */	extsh. r0, r31
/* 8064E904  40 81 00 0C */	ble lbl_8064E910
/* 8064E908  7F C3 F3 78 */	mr r3, r30
/* 8064E90C  4B C8 04 30 */	b __dl__FPv
lbl_8064E910:
/* 8064E910  7F C3 F3 78 */	mr r3, r30
/* 8064E914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064E918  83 C1 00 08 */	lwz r30, 8(r1)
/* 8064E91C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064E920  7C 08 03 A6 */	mtlr r0
/* 8064E924  38 21 00 10 */	addi r1, r1, 0x10
/* 8064E928  4E 80 00 20 */	blr 
