lbl_8034D8C4:
/* 8034D8C4  3C A0 CC 00 */	lis r5, 0xCC00 /* 0xCC002000@ha */
/* 8034D8C8  38 E5 20 00 */	addi r7, r5, 0x2000 /* 0xCC002000@l */
/* 8034D8CC  A4 07 00 2C */	lhzu r0, 0x2c(r7)
/* 8034D8D0  38 C5 20 00 */	addi r6, r5, 0x2000
/* 8034D8D4  54 09 05 7E */	clrlwi r9, r0, 0x15
lbl_8034D8D8:
/* 8034D8D8  A0 07 00 00 */	lhz r0, 0(r7)
/* 8034D8DC  7D 28 4B 78 */	mr r8, r9
/* 8034D8E0  A0 A6 00 2E */	lhz r5, 0x2e(r6)
/* 8034D8E4  54 09 05 7E */	clrlwi r9, r0, 0x15
/* 8034D8E8  7C 08 48 40 */	cmplw r8, r9
/* 8034D8EC  54 A0 05 7E */	clrlwi r0, r5, 0x15
/* 8034D8F0  40 82 FF E8 */	bne lbl_8034D8D8
/* 8034D8F4  90 03 00 00 */	stw r0, 0(r3)
/* 8034D8F8  91 24 00 00 */	stw r9, 0(r4)
/* 8034D8FC  4E 80 00 20 */	blr 
