lbl_8051BEFC:
/* 8051BEFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BF00  7C 08 02 A6 */	mflr r0
/* 8051BF04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BF08  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha
/* 8051BF0C  80 03 0D B0 */	lwz r0, m_grass__9daGrass_c@l(r3)
/* 8051BF10  28 00 00 00 */	cmplwi r0, 0
/* 8051BF14  41 82 00 0C */	beq lbl_8051BF20
/* 8051BF18  38 60 00 01 */	li r3, 1
/* 8051BF1C  48 00 00 3C */	b lbl_8051BF58
lbl_8051BF20:
/* 8051BF20  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001D718@ha */
/* 8051BF24  38 63 D7 18 */	addi r3, r3, 0xD718 /* 0x0001D718@l */
/* 8051BF28  4B DB 2D 24 */	b __nw__FUl
/* 8051BF2C  7C 60 1B 79 */	or. r0, r3, r3
/* 8051BF30  41 82 00 0C */	beq lbl_8051BF3C
/* 8051BF34  48 00 2F 59 */	bl __ct__15dGrass_packet_cFv
/* 8051BF38  7C 60 1B 78 */	mr r0, r3
lbl_8051BF3C:
/* 8051BF3C  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha
/* 8051BF40  90 03 0D B0 */	stw r0, m_grass__9daGrass_c@l(r3)
/* 8051BF44  28 00 00 00 */	cmplwi r0, 0
/* 8051BF48  40 82 00 0C */	bne lbl_8051BF54
/* 8051BF4C  38 60 00 00 */	li r3, 0
/* 8051BF50  48 00 00 08 */	b lbl_8051BF58
lbl_8051BF54:
/* 8051BF54  38 60 00 01 */	li r3, 1
lbl_8051BF58:
/* 8051BF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BF5C  7C 08 03 A6 */	mtlr r0
/* 8051BF60  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BF64  4E 80 00 20 */	blr 
