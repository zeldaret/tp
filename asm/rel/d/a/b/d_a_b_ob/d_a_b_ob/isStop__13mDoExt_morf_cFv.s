lbl_8061AD20:
/* 8061AD20  38 A0 00 01 */	li r5, 1
/* 8061AD24  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8061AD28  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8061AD2C  40 82 00 1C */	bne lbl_8061AD48
/* 8061AD30  3C 80 80 62 */	lis r4, lit_3788@ha
/* 8061AD34  C0 24 AD 90 */	lfs f1, lit_3788@l(r4)
/* 8061AD38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8061AD3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8061AD40  41 82 00 08 */	beq lbl_8061AD48
/* 8061AD44  38 A0 00 00 */	li r5, 0
lbl_8061AD48:
/* 8061AD48  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8061AD4C  4E 80 00 20 */	blr 
