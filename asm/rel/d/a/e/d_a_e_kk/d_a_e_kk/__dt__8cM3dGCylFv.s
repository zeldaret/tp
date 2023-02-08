lbl_806FEEB8:
/* 806FEEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FEEBC  7C 08 02 A6 */	mflr r0
/* 806FEEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FEEC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FEEC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806FEECC  41 82 00 1C */	beq lbl_806FEEE8
/* 806FEED0  3C A0 80 70 */	lis r5, __vt__8cM3dGCyl@ha /* 0x806FF82C@ha */
/* 806FEED4  38 05 F8 2C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x806FF82C@l */
/* 806FEED8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 806FEEDC  7C 80 07 35 */	extsh. r0, r4
/* 806FEEE0  40 81 00 08 */	ble lbl_806FEEE8
/* 806FEEE4  4B BC FE 59 */	bl __dl__FPv
lbl_806FEEE8:
/* 806FEEE8  7F E3 FB 78 */	mr r3, r31
/* 806FEEEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FEEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FEEF4  7C 08 03 A6 */	mtlr r0
/* 806FEEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 806FEEFC  4E 80 00 20 */	blr 
