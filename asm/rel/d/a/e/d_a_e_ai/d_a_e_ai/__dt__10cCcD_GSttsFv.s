lbl_8067BEF8:
/* 8067BEF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067BEFC  7C 08 02 A6 */	mflr r0
/* 8067BF00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067BF04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067BF08  7C 7F 1B 79 */	or. r31, r3, r3
/* 8067BF0C  41 82 00 1C */	beq lbl_8067BF28
/* 8067BF10  3C A0 80 68 */	lis r5, __vt__10cCcD_GStts@ha /* 0x8067C618@ha */
/* 8067BF14  38 05 C6 18 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x8067C618@l */
/* 8067BF18  90 1F 00 00 */	stw r0, 0(r31)
/* 8067BF1C  7C 80 07 35 */	extsh. r0, r4
/* 8067BF20  40 81 00 08 */	ble lbl_8067BF28
/* 8067BF24  4B C5 2E 19 */	bl __dl__FPv
lbl_8067BF28:
/* 8067BF28  7F E3 FB 78 */	mr r3, r31
/* 8067BF2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067BF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067BF34  7C 08 03 A6 */	mtlr r0
/* 8067BF38  38 21 00 10 */	addi r1, r1, 0x10
/* 8067BF3C  4E 80 00 20 */	blr 
