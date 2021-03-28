lbl_80B7F524:
/* 80B7F524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7F528  7C 08 02 A6 */	mflr r0
/* 80B7F52C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7F530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7F534  93 C1 00 08 */	stw r30, 8(r1)
/* 80B7F538  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B7F53C  7C 9F 23 78 */	mr r31, r4
/* 80B7F540  41 82 00 38 */	beq lbl_80B7F578
/* 80B7F544  3C 60 80 B9 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B7F548  38 03 D9 C8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B7F54C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B7F550  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B7F554  38 80 FF FF */	li r4, -1
/* 80B7F558  4B 6E F9 C0 */	b __dt__8cM3dGCirFv
/* 80B7F55C  7F C3 F3 78 */	mr r3, r30
/* 80B7F560  38 80 00 00 */	li r4, 0
/* 80B7F564  4B 6E 8B 4C */	b __dt__13cBgS_PolyInfoFv
/* 80B7F568  7F E0 07 35 */	extsh. r0, r31
/* 80B7F56C  40 81 00 0C */	ble lbl_80B7F578
/* 80B7F570  7F C3 F3 78 */	mr r3, r30
/* 80B7F574  4B 74 F7 C8 */	b __dl__FPv
lbl_80B7F578:
/* 80B7F578  7F C3 F3 78 */	mr r3, r30
/* 80B7F57C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7F580  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7F584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7F588  7C 08 03 A6 */	mtlr r0
/* 80B7F58C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7F590  4E 80 00 20 */	blr 
