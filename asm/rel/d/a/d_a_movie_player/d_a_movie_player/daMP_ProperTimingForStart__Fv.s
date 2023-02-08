lbl_80877ADC:
/* 80877ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80877AE0  7C 08 02 A6 */	mflr r0
/* 80877AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80877AE8  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877AEC  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877AF0  80 63 00 88 */	lwz r3, 0x88(r3)
/* 80877AF4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80877AF8  41 82 00 18 */	beq lbl_80877B10
/* 80877AFC  4B AD 5E 6D */	bl VIGetNextField
/* 80877B00  28 03 00 00 */	cmplwi r3, 0
/* 80877B04  40 82 00 30 */	bne lbl_80877B34
/* 80877B08  38 60 00 01 */	li r3, 1
/* 80877B0C  48 00 00 2C */	b lbl_80877B38
lbl_80877B10:
/* 80877B10  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80877B14  41 82 00 18 */	beq lbl_80877B2C
/* 80877B18  4B AD 5E 51 */	bl VIGetNextField
/* 80877B1C  28 03 00 01 */	cmplwi r3, 1
/* 80877B20  40 82 00 14 */	bne lbl_80877B34
/* 80877B24  38 60 00 01 */	li r3, 1
/* 80877B28  48 00 00 10 */	b lbl_80877B38
lbl_80877B2C:
/* 80877B2C  38 60 00 01 */	li r3, 1
/* 80877B30  48 00 00 08 */	b lbl_80877B38
lbl_80877B34:
/* 80877B34  38 60 00 00 */	li r3, 0
lbl_80877B38:
/* 80877B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80877B3C  7C 08 03 A6 */	mtlr r0
/* 80877B40  38 21 00 10 */	addi r1, r1, 0x10
/* 80877B44  4E 80 00 20 */	blr 
