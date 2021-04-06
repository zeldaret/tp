lbl_806FEF00:
/* 806FEF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FEF04  7C 08 02 A6 */	mflr r0
/* 806FEF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FEF0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FEF10  7C 7F 1B 79 */	or. r31, r3, r3
/* 806FEF14  41 82 00 1C */	beq lbl_806FEF30
/* 806FEF18  3C A0 80 70 */	lis r5, __vt__8cM3dGAab@ha /* 0x806FF838@ha */
/* 806FEF1C  38 05 F8 38 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x806FF838@l */
/* 806FEF20  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806FEF24  7C 80 07 35 */	extsh. r0, r4
/* 806FEF28  40 81 00 08 */	ble lbl_806FEF30
/* 806FEF2C  4B BC FE 11 */	bl __dl__FPv
lbl_806FEF30:
/* 806FEF30  7F E3 FB 78 */	mr r3, r31
/* 806FEF34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FEF38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FEF3C  7C 08 03 A6 */	mtlr r0
/* 806FEF40  38 21 00 10 */	addi r1, r1, 0x10
/* 806FEF44  4E 80 00 20 */	blr 
