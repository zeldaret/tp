lbl_80C71FD4:
/* 80C71FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C71FD8  7C 08 02 A6 */	mflr r0
/* 80C71FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C71FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C71FE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C71FE8  41 82 00 1C */	beq lbl_80C72004
/* 80C71FEC  3C A0 80 C7 */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80C71FF0  38 05 22 F0 */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80C71FF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C71FF8  7C 80 07 35 */	extsh. r0, r4
/* 80C71FFC  40 81 00 08 */	ble lbl_80C72004
/* 80C72000  4B 65 CD 3C */	b __dl__FPv
lbl_80C72004:
/* 80C72004  7F E3 FB 78 */	mr r3, r31
/* 80C72008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7200C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C72010  7C 08 03 A6 */	mtlr r0
/* 80C72014  38 21 00 10 */	addi r1, r1, 0x10
/* 80C72018  4E 80 00 20 */	blr 
