lbl_80AEB148:
/* 80AEB148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEB14C  7C 08 02 A6 */	mflr r0
/* 80AEB150  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEB154  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEB158  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEB15C  41 82 00 1C */	beq lbl_80AEB178
/* 80AEB160  3C A0 80 AF */	lis r5, __vt__8cM3dGPla@ha /* 0x80AEBD00@ha */
/* 80AEB164  38 05 BD 00 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80AEBD00@l */
/* 80AEB168  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80AEB16C  7C 80 07 35 */	extsh. r0, r4
/* 80AEB170  40 81 00 08 */	ble lbl_80AEB178
/* 80AEB174  4B 7E 3B C9 */	bl __dl__FPv
lbl_80AEB178:
/* 80AEB178  7F E3 FB 78 */	mr r3, r31
/* 80AEB17C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEB180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEB184  7C 08 03 A6 */	mtlr r0
/* 80AEB188  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEB18C  4E 80 00 20 */	blr 
