lbl_80AE7B18:
/* 80AE7B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE7B1C  7C 08 02 A6 */	mflr r0
/* 80AE7B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE7B24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE7B28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE7B2C  41 82 00 1C */	beq lbl_80AE7B48
/* 80AE7B30  3C A0 80 AF */	lis r5, __vt__8cM3dGAab@ha
/* 80AE7B34  38 05 A7 0C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80AE7B38  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AE7B3C  7C 80 07 35 */	extsh. r0, r4
/* 80AE7B40  40 81 00 08 */	ble lbl_80AE7B48
/* 80AE7B44  4B 7E 71 F8 */	b __dl__FPv
lbl_80AE7B48:
/* 80AE7B48  7F E3 FB 78 */	mr r3, r31
/* 80AE7B4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE7B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE7B54  7C 08 03 A6 */	mtlr r0
/* 80AE7B58  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE7B5C  4E 80 00 20 */	blr 
