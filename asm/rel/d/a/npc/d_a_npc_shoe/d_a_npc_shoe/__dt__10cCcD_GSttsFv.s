lbl_80AEA290:
/* 80AEA290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEA294  7C 08 02 A6 */	mflr r0
/* 80AEA298  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEA29C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEA2A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEA2A4  41 82 00 1C */	beq lbl_80AEA2C0
/* 80AEA2A8  3C A0 80 AF */	lis r5, __vt__10cCcD_GStts@ha
/* 80AEA2AC  38 05 A6 D0 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80AEA2B0  90 1F 00 00 */	stw r0, 0(r31)
/* 80AEA2B4  7C 80 07 35 */	extsh. r0, r4
/* 80AEA2B8  40 81 00 08 */	ble lbl_80AEA2C0
/* 80AEA2BC  4B 7E 4A 80 */	b __dl__FPv
lbl_80AEA2C0:
/* 80AEA2C0  7F E3 FB 78 */	mr r3, r31
/* 80AEA2C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEA2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEA2CC  7C 08 03 A6 */	mtlr r0
/* 80AEA2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEA2D4  4E 80 00 20 */	blr 
