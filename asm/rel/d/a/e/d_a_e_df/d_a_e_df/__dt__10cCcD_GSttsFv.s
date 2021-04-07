lbl_806A9A3C:
/* 806A9A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A9A40  7C 08 02 A6 */	mflr r0
/* 806A9A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A9A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A9A4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A9A50  41 82 00 1C */	beq lbl_806A9A6C
/* 806A9A54  3C A0 80 6B */	lis r5, __vt__10cCcD_GStts@ha /* 0x806AA08C@ha */
/* 806A9A58  38 05 A0 8C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806AA08C@l */
/* 806A9A5C  90 1F 00 00 */	stw r0, 0(r31)
/* 806A9A60  7C 80 07 35 */	extsh. r0, r4
/* 806A9A64  40 81 00 08 */	ble lbl_806A9A6C
/* 806A9A68  4B C2 52 D5 */	bl __dl__FPv
lbl_806A9A6C:
/* 806A9A6C  7F E3 FB 78 */	mr r3, r31
/* 806A9A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A9A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A9A78  7C 08 03 A6 */	mtlr r0
/* 806A9A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 806A9A80  4E 80 00 20 */	blr 
