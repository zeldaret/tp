lbl_80BDD460:
/* 80BDD460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD464  7C 08 02 A6 */	mflr r0
/* 80BDD468  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD46C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDD470  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BDD474  41 82 00 1C */	beq lbl_80BDD490
/* 80BDD478  3C A0 80 BE */	lis r5, __vt__8cM3dGAab@ha /* 0x80BDD7D4@ha */
/* 80BDD47C  38 05 D7 D4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BDD7D4@l */
/* 80BDD480  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BDD484  7C 80 07 35 */	extsh. r0, r4
/* 80BDD488  40 81 00 08 */	ble lbl_80BDD490
/* 80BDD48C  4B 6F 18 B1 */	bl __dl__FPv
lbl_80BDD490:
/* 80BDD490  7F E3 FB 78 */	mr r3, r31
/* 80BDD494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDD498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD49C  7C 08 03 A6 */	mtlr r0
/* 80BDD4A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD4A4  4E 80 00 20 */	blr 
