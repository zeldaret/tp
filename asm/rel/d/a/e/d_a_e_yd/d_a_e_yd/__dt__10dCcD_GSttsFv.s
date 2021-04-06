lbl_807F7420:
/* 807F7420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F7424  7C 08 02 A6 */	mflr r0
/* 807F7428  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F742C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F7430  7C 7F 1B 79 */	or. r31, r3, r3
/* 807F7434  41 82 00 30 */	beq lbl_807F7464
/* 807F7438  3C 60 80 7F */	lis r3, __vt__10dCcD_GStts@ha /* 0x807F7CE0@ha */
/* 807F743C  38 03 7C E0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x807F7CE0@l */
/* 807F7440  90 1F 00 00 */	stw r0, 0(r31)
/* 807F7444  41 82 00 10 */	beq lbl_807F7454
/* 807F7448  3C 60 80 7F */	lis r3, __vt__10cCcD_GStts@ha /* 0x807F7CD4@ha */
/* 807F744C  38 03 7C D4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x807F7CD4@l */
/* 807F7450  90 1F 00 00 */	stw r0, 0(r31)
lbl_807F7454:
/* 807F7454  7C 80 07 35 */	extsh. r0, r4
/* 807F7458  40 81 00 0C */	ble lbl_807F7464
/* 807F745C  7F E3 FB 78 */	mr r3, r31
/* 807F7460  4B AD 78 DD */	bl __dl__FPv
lbl_807F7464:
/* 807F7464  7F E3 FB 78 */	mr r3, r31
/* 807F7468  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F746C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F7470  7C 08 03 A6 */	mtlr r0
/* 807F7474  38 21 00 10 */	addi r1, r1, 0x10
/* 807F7478  4E 80 00 20 */	blr 
