lbl_806DEBD0:
/* 806DEBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DEBD4  7C 08 02 A6 */	mflr r0
/* 806DEBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DEBDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DEBE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806DEBE4  41 82 00 1C */	beq lbl_806DEC00
/* 806DEBE8  3C A0 80 6E */	lis r5, __vt__8cM3dGSph@ha /* 0x806DF204@ha */
/* 806DEBEC  38 05 F2 04 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x806DF204@l */
/* 806DEBF0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806DEBF4  7C 80 07 35 */	extsh. r0, r4
/* 806DEBF8  40 81 00 08 */	ble lbl_806DEC00
/* 806DEBFC  4B BF 01 41 */	bl __dl__FPv
lbl_806DEC00:
/* 806DEC00  7F E3 FB 78 */	mr r3, r31
/* 806DEC04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DEC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DEC0C  7C 08 03 A6 */	mtlr r0
/* 806DEC10  38 21 00 10 */	addi r1, r1, 0x10
/* 806DEC14  4E 80 00 20 */	blr 
