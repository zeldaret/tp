lbl_80D4EEF8:
/* 80D4EEF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4EEFC  7C 08 02 A6 */	mflr r0
/* 80D4EF00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4EF04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4EF08  7C 7F 1B 78 */	mr r31, r3
/* 80D4EF0C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D4EF10  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D4EF14  40 82 00 1C */	bne lbl_80D4EF30
/* 80D4EF18  28 1F 00 00 */	cmplwi r31, 0
/* 80D4EF1C  41 82 00 08 */	beq lbl_80D4EF24
/* 80D4EF20  4B 2C 9C 45 */	bl __ct__10fopAc_ac_cFv
lbl_80D4EF24:
/* 80D4EF24  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D4EF28  60 00 00 08 */	ori r0, r0, 8
/* 80D4EF2C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D4EF30:
/* 80D4EF30  7F E3 FB 78 */	mr r3, r31
/* 80D4EF34  4B FF FF 79 */	bl Create__11daSwLBall_cFv
/* 80D4EF38  2C 03 00 00 */	cmpwi r3, 0
/* 80D4EF3C  40 82 00 0C */	bne lbl_80D4EF48
/* 80D4EF40  38 60 00 05 */	li r3, 5
/* 80D4EF44  48 00 00 08 */	b lbl_80D4EF4C
lbl_80D4EF48:
/* 80D4EF48  38 60 00 04 */	li r3, 4
lbl_80D4EF4C:
/* 80D4EF4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4EF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4EF54  7C 08 03 A6 */	mtlr r0
/* 80D4EF58  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4EF5C  4E 80 00 20 */	blr 
