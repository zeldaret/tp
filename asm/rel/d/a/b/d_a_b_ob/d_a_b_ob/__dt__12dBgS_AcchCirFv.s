lbl_8061A4F4:
/* 8061A4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A4F8  7C 08 02 A6 */	mflr r0
/* 8061A4FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A504  93 C1 00 08 */	stw r30, 8(r1)
/* 8061A508  7C 7E 1B 79 */	or. r30, r3, r3
/* 8061A50C  7C 9F 23 78 */	mr r31, r4
/* 8061A510  41 82 00 38 */	beq lbl_8061A548
/* 8061A514  3C 60 80 62 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8061B444@ha */
/* 8061A518  38 03 B4 44 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8061B444@l */
/* 8061A51C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8061A520  38 7E 00 14 */	addi r3, r30, 0x14
/* 8061A524  38 80 FF FF */	li r4, -1
/* 8061A528  4B C5 49 F1 */	bl __dt__8cM3dGCirFv
/* 8061A52C  7F C3 F3 78 */	mr r3, r30
/* 8061A530  38 80 00 00 */	li r4, 0
/* 8061A534  4B C4 DB 7D */	bl __dt__13cBgS_PolyInfoFv
/* 8061A538  7F E0 07 35 */	extsh. r0, r31
/* 8061A53C  40 81 00 0C */	ble lbl_8061A548
/* 8061A540  7F C3 F3 78 */	mr r3, r30
/* 8061A544  4B CB 47 F9 */	bl __dl__FPv
lbl_8061A548:
/* 8061A548  7F C3 F3 78 */	mr r3, r30
/* 8061A54C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061A550  83 C1 00 08 */	lwz r30, 8(r1)
/* 8061A554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A558  7C 08 03 A6 */	mtlr r0
/* 8061A55C  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A560  4E 80 00 20 */	blr 
