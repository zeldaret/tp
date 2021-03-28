lbl_800ECF04:
/* 800ECF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECF08  7C 08 02 A6 */	mflr r0
/* 800ECF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECF10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECF14  93 C1 00 08 */	stw r30, 8(r1)
/* 800ECF18  7C 7E 1B 78 */	mr r30, r3
/* 800ECF1C  3B E0 00 00 */	li r31, 0
/* 800ECF20  38 80 00 55 */	li r4, 0x55
/* 800ECF24  4B FB F6 35 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ECF28  2C 03 00 00 */	cmpwi r3, 0
/* 800ECF2C  40 82 00 10 */	bne lbl_800ECF3C
/* 800ECF30  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800ECF34  28 00 02 65 */	cmplwi r0, 0x265
/* 800ECF38  40 82 00 08 */	bne lbl_800ECF40
lbl_800ECF3C:
/* 800ECF3C  3B E0 00 01 */	li r31, 1
lbl_800ECF40:
/* 800ECF40  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800ECF44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECF48  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ECF4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECF50  7C 08 03 A6 */	mtlr r0
/* 800ECF54  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECF58  4E 80 00 20 */	blr 
