lbl_80AAE620:
/* 80AAE620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAE624  7C 08 02 A6 */	mflr r0
/* 80AAE628  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAE62C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAE630  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAE634  41 82 00 10 */	beq lbl_80AAE644
/* 80AAE638  7C 80 07 35 */	extsh. r0, r4
/* 80AAE63C  40 81 00 08 */	ble lbl_80AAE644
/* 80AAE640  4B 82 06 FC */	b __dl__FPv
lbl_80AAE644:
/* 80AAE644  7F E3 FB 78 */	mr r3, r31
/* 80AAE648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAE64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAE650  7C 08 03 A6 */	mtlr r0
/* 80AAE654  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAE658  4E 80 00 20 */	blr 
