lbl_807E6CA0:
/* 807E6CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E6CA4  7C 08 02 A6 */	mflr r0
/* 807E6CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E6CAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E6CB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E6CB4  41 82 00 30 */	beq lbl_807E6CE4
/* 807E6CB8  3C 60 80 7E */	lis r3, __vt__10dCcD_GStts@ha
/* 807E6CBC  38 03 75 4C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 807E6CC0  90 1F 00 00 */	stw r0, 0(r31)
/* 807E6CC4  41 82 00 10 */	beq lbl_807E6CD4
/* 807E6CC8  3C 60 80 7E */	lis r3, __vt__10cCcD_GStts@ha
/* 807E6CCC  38 03 75 40 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 807E6CD0  90 1F 00 00 */	stw r0, 0(r31)
lbl_807E6CD4:
/* 807E6CD4  7C 80 07 35 */	extsh. r0, r4
/* 807E6CD8  40 81 00 0C */	ble lbl_807E6CE4
/* 807E6CDC  7F E3 FB 78 */	mr r3, r31
/* 807E6CE0  4B AE 80 5C */	b __dl__FPv
lbl_807E6CE4:
/* 807E6CE4  7F E3 FB 78 */	mr r3, r31
/* 807E6CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E6CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E6CF0  7C 08 03 A6 */	mtlr r0
/* 807E6CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 807E6CF8  4E 80 00 20 */	blr 
