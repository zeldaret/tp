lbl_800ADC50:
/* 800ADC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ADC54  7C 08 02 A6 */	mflr r0
/* 800ADC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ADC5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ADC60  93 C1 00 08 */	stw r30, 8(r1)
/* 800ADC64  7C 7E 1B 78 */	mr r30, r3
/* 800ADC68  3B E0 00 00 */	li r31, 0
/* 800ADC6C  38 80 00 10 */	li r4, 0x10
/* 800ADC70  4B FF E8 E9 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ADC74  2C 03 00 00 */	cmpwi r3, 0
/* 800ADC78  40 82 00 54 */	bne lbl_800ADCCC
/* 800ADC7C  7F C3 F3 78 */	mr r3, r30
/* 800ADC80  38 80 00 06 */	li r4, 6
/* 800ADC84  4B FF E8 D5 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ADC88  2C 03 00 00 */	cmpwi r3, 0
/* 800ADC8C  40 82 00 40 */	bne lbl_800ADCCC
/* 800ADC90  7F C3 F3 78 */	mr r3, r30
/* 800ADC94  38 80 00 0A */	li r4, 0xa
/* 800ADC98  4B FF E8 C1 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ADC9C  2C 03 00 00 */	cmpwi r3, 0
/* 800ADCA0  40 82 00 2C */	bne lbl_800ADCCC
/* 800ADCA4  7F C3 F3 78 */	mr r3, r30
/* 800ADCA8  38 80 00 07 */	li r4, 7
/* 800ADCAC  4B FF E8 AD */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ADCB0  2C 03 00 00 */	cmpwi r3, 0
/* 800ADCB4  40 82 00 18 */	bne lbl_800ADCCC
/* 800ADCB8  7F C3 F3 78 */	mr r3, r30
/* 800ADCBC  38 80 00 0B */	li r4, 0xb
/* 800ADCC0  4B FF E8 99 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ADCC4  2C 03 00 00 */	cmpwi r3, 0
/* 800ADCC8  41 82 00 08 */	beq lbl_800ADCD0
lbl_800ADCCC:
/* 800ADCCC  3B E0 00 01 */	li r31, 1
lbl_800ADCD0:
/* 800ADCD0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800ADCD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ADCD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ADCDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ADCE0  7C 08 03 A6 */	mtlr r0
/* 800ADCE4  38 21 00 10 */	addi r1, r1, 0x10
/* 800ADCE8  4E 80 00 20 */	blr 
