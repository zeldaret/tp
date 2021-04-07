lbl_80D054F4:
/* 80D054F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D054F8  7C 08 02 A6 */	mflr r0
/* 80D054FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D05500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D05504  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D05508  41 82 00 30 */	beq lbl_80D05538
/* 80D0550C  3C 60 80 D0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D062C4@ha */
/* 80D05510  38 03 62 C4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D062C4@l */
/* 80D05514  90 1F 00 00 */	stw r0, 0(r31)
/* 80D05518  41 82 00 10 */	beq lbl_80D05528
/* 80D0551C  3C 60 80 D0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D062B8@ha */
/* 80D05520  38 03 62 B8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D062B8@l */
/* 80D05524  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D05528:
/* 80D05528  7C 80 07 35 */	extsh. r0, r4
/* 80D0552C  40 81 00 0C */	ble lbl_80D05538
/* 80D05530  7F E3 FB 78 */	mr r3, r31
/* 80D05534  4B 5C 98 09 */	bl __dl__FPv
lbl_80D05538:
/* 80D05538  7F E3 FB 78 */	mr r3, r31
/* 80D0553C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D05540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D05544  7C 08 03 A6 */	mtlr r0
/* 80D05548  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0554C  4E 80 00 20 */	blr 
