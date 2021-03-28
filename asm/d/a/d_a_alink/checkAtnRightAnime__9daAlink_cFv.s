lbl_800ADCEC:
/* 800ADCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ADCF0  7C 08 02 A6 */	mflr r0
/* 800ADCF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ADCF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ADCFC  93 C1 00 08 */	stw r30, 8(r1)
/* 800ADD00  7C 7E 1B 78 */	mr r30, r3
/* 800ADD04  3B E0 00 00 */	li r31, 0
/* 800ADD08  38 80 00 11 */	li r4, 0x11
/* 800ADD0C  4B FF E8 4D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ADD10  2C 03 00 00 */	cmpwi r3, 0
/* 800ADD14  40 82 00 54 */	bne lbl_800ADD68
/* 800ADD18  7F C3 F3 78 */	mr r3, r30
/* 800ADD1C  38 80 00 08 */	li r4, 8
/* 800ADD20  4B FF E8 39 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ADD24  2C 03 00 00 */	cmpwi r3, 0
/* 800ADD28  40 82 00 40 */	bne lbl_800ADD68
/* 800ADD2C  7F C3 F3 78 */	mr r3, r30
/* 800ADD30  38 80 00 0C */	li r4, 0xc
/* 800ADD34  4B FF E8 25 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ADD38  2C 03 00 00 */	cmpwi r3, 0
/* 800ADD3C  40 82 00 2C */	bne lbl_800ADD68
/* 800ADD40  7F C3 F3 78 */	mr r3, r30
/* 800ADD44  38 80 00 09 */	li r4, 9
/* 800ADD48  4B FF E8 11 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ADD4C  2C 03 00 00 */	cmpwi r3, 0
/* 800ADD50  40 82 00 18 */	bne lbl_800ADD68
/* 800ADD54  7F C3 F3 78 */	mr r3, r30
/* 800ADD58  38 80 00 0D */	li r4, 0xd
/* 800ADD5C  4B FF E7 FD */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ADD60  2C 03 00 00 */	cmpwi r3, 0
/* 800ADD64  41 82 00 08 */	beq lbl_800ADD6C
lbl_800ADD68:
/* 800ADD68  3B E0 00 01 */	li r31, 1
lbl_800ADD6C:
/* 800ADD6C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800ADD70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ADD74  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ADD78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ADD7C  7C 08 03 A6 */	mtlr r0
/* 800ADD80  38 21 00 10 */	addi r1, r1, 0x10
/* 800ADD84  4E 80 00 20 */	blr 
