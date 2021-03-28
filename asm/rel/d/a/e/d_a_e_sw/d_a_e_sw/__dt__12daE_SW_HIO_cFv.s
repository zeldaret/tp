lbl_807AF870:
/* 807AF870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AF874  7C 08 02 A6 */	mflr r0
/* 807AF878  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AF87C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AF880  7C 7F 1B 79 */	or. r31, r3, r3
/* 807AF884  41 82 00 1C */	beq lbl_807AF8A0
/* 807AF888  3C A0 80 7B */	lis r5, __vt__12daE_SW_HIO_c@ha
/* 807AF88C  38 05 01 A4 */	addi r0, r5, __vt__12daE_SW_HIO_c@l
/* 807AF890  90 1F 00 00 */	stw r0, 0(r31)
/* 807AF894  7C 80 07 35 */	extsh. r0, r4
/* 807AF898  40 81 00 08 */	ble lbl_807AF8A0
/* 807AF89C  4B B1 F4 A0 */	b __dl__FPv
lbl_807AF8A0:
/* 807AF8A0  7F E3 FB 78 */	mr r3, r31
/* 807AF8A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AF8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AF8AC  7C 08 03 A6 */	mtlr r0
/* 807AF8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 807AF8B4  4E 80 00 20 */	blr 
