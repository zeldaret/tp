lbl_80C5B238:
/* 80C5B238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B23C  7C 08 02 A6 */	mflr r0
/* 80C5B240  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5B248  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5B24C  41 82 00 1C */	beq lbl_80C5B268
/* 80C5B250  3C A0 80 C6 */	lis r5, __vt__17dEvLib_callback_c@ha /* 0x80C5B454@ha */
/* 80C5B254  38 05 B4 54 */	addi r0, r5, __vt__17dEvLib_callback_c@l /* 0x80C5B454@l */
/* 80C5B258  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5B25C  7C 80 07 35 */	extsh. r0, r4
/* 80C5B260  40 81 00 08 */	ble lbl_80C5B268
/* 80C5B264  4B 67 3A D9 */	bl __dl__FPv
lbl_80C5B268:
/* 80C5B268  7F E3 FB 78 */	mr r3, r31
/* 80C5B26C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5B270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B274  7C 08 03 A6 */	mtlr r0
/* 80C5B278  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B27C  4E 80 00 20 */	blr 
