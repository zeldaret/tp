lbl_80BA2288:
/* 80BA2288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA228C  7C 08 02 A6 */	mflr r0
/* 80BA2290  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA2294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA2298  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA229C  41 82 00 1C */	beq lbl_80BA22B8
/* 80BA22A0  3C A0 80 BA */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80BA22A4  38 05 24 DC */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80BA22A8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA22AC  7C 80 07 35 */	extsh. r0, r4
/* 80BA22B0  40 81 00 08 */	ble lbl_80BA22B8
/* 80BA22B4  4B 72 CA 88 */	b __dl__FPv
lbl_80BA22B8:
/* 80BA22B8  7F E3 FB 78 */	mr r3, r31
/* 80BA22BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA22C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA22C4  7C 08 03 A6 */	mtlr r0
/* 80BA22C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA22CC  4E 80 00 20 */	blr 
