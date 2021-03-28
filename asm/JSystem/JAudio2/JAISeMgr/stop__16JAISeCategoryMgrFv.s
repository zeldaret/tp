lbl_8029FE34:
/* 8029FE34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029FE38  7C 08 02 A6 */	mflr r0
/* 8029FE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029FE40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029FE44  83 E3 00 58 */	lwz r31, 0x58(r3)
/* 8029FE48  48 00 00 14 */	b lbl_8029FE5C
lbl_8029FE4C:
/* 8029FE4C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8029FE50  38 63 00 10 */	addi r3, r3, 0x10
/* 8029FE54  48 00 27 45 */	bl stop__8JAISoundFv
/* 8029FE58  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_8029FE5C:
/* 8029FE5C  28 1F 00 00 */	cmplwi r31, 0
/* 8029FE60  40 82 FF EC */	bne lbl_8029FE4C
/* 8029FE64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029FE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029FE6C  7C 08 03 A6 */	mtlr r0
/* 8029FE70  38 21 00 10 */	addi r1, r1, 0x10
/* 8029FE74  4E 80 00 20 */	blr 
