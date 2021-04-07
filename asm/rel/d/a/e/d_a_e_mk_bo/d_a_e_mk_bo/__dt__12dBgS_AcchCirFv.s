lbl_8071F52C:
/* 8071F52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071F530  7C 08 02 A6 */	mflr r0
/* 8071F534  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071F538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071F53C  93 C1 00 08 */	stw r30, 8(r1)
/* 8071F540  7C 7E 1B 79 */	or. r30, r3, r3
/* 8071F544  7C 9F 23 78 */	mr r31, r4
/* 8071F548  41 82 00 38 */	beq lbl_8071F580
/* 8071F54C  3C 60 80 72 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8071F7AC@ha */
/* 8071F550  38 03 F7 AC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8071F7AC@l */
/* 8071F554  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8071F558  38 7E 00 14 */	addi r3, r30, 0x14
/* 8071F55C  38 80 FF FF */	li r4, -1
/* 8071F560  4B B4 F9 B9 */	bl __dt__8cM3dGCirFv
/* 8071F564  7F C3 F3 78 */	mr r3, r30
/* 8071F568  38 80 00 00 */	li r4, 0
/* 8071F56C  4B B4 8B 45 */	bl __dt__13cBgS_PolyInfoFv
/* 8071F570  7F E0 07 35 */	extsh. r0, r31
/* 8071F574  40 81 00 0C */	ble lbl_8071F580
/* 8071F578  7F C3 F3 78 */	mr r3, r30
/* 8071F57C  4B BA F7 C1 */	bl __dl__FPv
lbl_8071F580:
/* 8071F580  7F C3 F3 78 */	mr r3, r30
/* 8071F584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071F588  83 C1 00 08 */	lwz r30, 8(r1)
/* 8071F58C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071F590  7C 08 03 A6 */	mtlr r0
/* 8071F594  38 21 00 10 */	addi r1, r1, 0x10
/* 8071F598  4E 80 00 20 */	blr 
