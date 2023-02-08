lbl_80B949A0:
/* 80B949A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B949A4  7C 08 02 A6 */	mflr r0
/* 80B949A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B949AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B949B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B949B4  41 82 00 10 */	beq lbl_80B949C4
/* 80B949B8  7C 80 07 35 */	extsh. r0, r4
/* 80B949BC  40 81 00 08 */	ble lbl_80B949C4
/* 80B949C0  4B 73 A3 7D */	bl __dl__FPv
lbl_80B949C4:
/* 80B949C4  7F E3 FB 78 */	mr r3, r31
/* 80B949C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B949CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B949D0  7C 08 03 A6 */	mtlr r0
/* 80B949D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B949D8  4E 80 00 20 */	blr 
