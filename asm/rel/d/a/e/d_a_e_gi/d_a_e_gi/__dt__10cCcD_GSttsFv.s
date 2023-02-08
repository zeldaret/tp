lbl_806D0944:
/* 806D0944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D0948  7C 08 02 A6 */	mflr r0
/* 806D094C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D0950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D0954  7C 7F 1B 79 */	or. r31, r3, r3
/* 806D0958  41 82 00 1C */	beq lbl_806D0974
/* 806D095C  3C A0 80 6D */	lis r5, __vt__10cCcD_GStts@ha /* 0x806D10C0@ha */
/* 806D0960  38 05 10 C0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806D10C0@l */
/* 806D0964  90 1F 00 00 */	stw r0, 0(r31)
/* 806D0968  7C 80 07 35 */	extsh. r0, r4
/* 806D096C  40 81 00 08 */	ble lbl_806D0974
/* 806D0970  4B BF E3 CD */	bl __dl__FPv
lbl_806D0974:
/* 806D0974  7F E3 FB 78 */	mr r3, r31
/* 806D0978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D097C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D0980  7C 08 03 A6 */	mtlr r0
/* 806D0984  38 21 00 10 */	addi r1, r1, 0x10
/* 806D0988  4E 80 00 20 */	blr 
