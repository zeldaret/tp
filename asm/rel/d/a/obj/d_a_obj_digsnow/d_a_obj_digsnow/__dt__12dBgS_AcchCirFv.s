lbl_80BDD504:
/* 80BDD504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD508  7C 08 02 A6 */	mflr r0
/* 80BDD50C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDD514  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDD518  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BDD51C  7C 9F 23 78 */	mr r31, r4
/* 80BDD520  41 82 00 38 */	beq lbl_80BDD558
/* 80BDD524  3C 60 80 BE */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80BDD7A4@ha */
/* 80BDD528  38 03 D7 A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80BDD7A4@l */
/* 80BDD52C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BDD530  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BDD534  38 80 FF FF */	li r4, -1
/* 80BDD538  4B 69 19 E1 */	bl __dt__8cM3dGCirFv
/* 80BDD53C  7F C3 F3 78 */	mr r3, r30
/* 80BDD540  38 80 00 00 */	li r4, 0
/* 80BDD544  4B 68 AB 6D */	bl __dt__13cBgS_PolyInfoFv
/* 80BDD548  7F E0 07 35 */	extsh. r0, r31
/* 80BDD54C  40 81 00 0C */	ble lbl_80BDD558
/* 80BDD550  7F C3 F3 78 */	mr r3, r30
/* 80BDD554  4B 6F 17 E9 */	bl __dl__FPv
lbl_80BDD558:
/* 80BDD558  7F C3 F3 78 */	mr r3, r30
/* 80BDD55C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDD560  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDD564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD568  7C 08 03 A6 */	mtlr r0
/* 80BDD56C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD570  4E 80 00 20 */	blr 
