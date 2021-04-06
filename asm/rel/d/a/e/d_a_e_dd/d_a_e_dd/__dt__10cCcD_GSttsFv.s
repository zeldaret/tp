lbl_806A6CC0:
/* 806A6CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A6CC4  7C 08 02 A6 */	mflr r0
/* 806A6CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A6CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A6CD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A6CD4  41 82 00 1C */	beq lbl_806A6CF0
/* 806A6CD8  3C A0 80 6A */	lis r5, __vt__10cCcD_GStts@ha /* 0x806A7440@ha */
/* 806A6CDC  38 05 74 40 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806A7440@l */
/* 806A6CE0  90 1F 00 00 */	stw r0, 0(r31)
/* 806A6CE4  7C 80 07 35 */	extsh. r0, r4
/* 806A6CE8  40 81 00 08 */	ble lbl_806A6CF0
/* 806A6CEC  4B C2 80 51 */	bl __dl__FPv
lbl_806A6CF0:
/* 806A6CF0  7F E3 FB 78 */	mr r3, r31
/* 806A6CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A6CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6CFC  7C 08 03 A6 */	mtlr r0
/* 806A6D00  38 21 00 10 */	addi r1, r1, 0x10
/* 806A6D04  4E 80 00 20 */	blr 
