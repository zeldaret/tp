lbl_800DCF04:
/* 800DCF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DCF08  7C 08 02 A6 */	mflr r0
/* 800DCF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DCF10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DCF14  93 C1 00 08 */	stw r30, 8(r1)
/* 800DCF18  7C 7E 1B 78 */	mr r30, r3
/* 800DCF1C  3B E0 00 00 */	li r31, 0
/* 800DCF20  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800DCF24  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 800DCF28  7D 89 03 A6 */	mtctr r12
/* 800DCF2C  4E 80 04 21 */	bctrl 
/* 800DCF30  2C 03 00 00 */	cmpwi r3, 0
/* 800DCF34  40 82 00 10 */	bne lbl_800DCF44
/* 800DCF38  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800DCF3C  28 00 00 1E */	cmplwi r0, 0x1e
/* 800DCF40  40 82 00 08 */	bne lbl_800DCF48
lbl_800DCF44:
/* 800DCF44  3B E0 00 01 */	li r31, 1
lbl_800DCF48:
/* 800DCF48  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800DCF4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DCF50  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DCF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DCF58  7C 08 03 A6 */	mtlr r0
/* 800DCF5C  38 21 00 10 */	addi r1, r1, 0x10
/* 800DCF60  4E 80 00 20 */	blr 
