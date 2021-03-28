lbl_80047DAC:
/* 80047DAC  38 E0 00 00 */	li r7, 0
/* 80047DB0  48 00 00 4C */	b lbl_80047DFC
lbl_80047DB4:
/* 80047DB4  88 C4 00 00 */	lbz r6, 0(r4)
/* 80047DB8  7C C0 07 75 */	extsb. r0, r6
/* 80047DBC  40 82 00 0C */	bne lbl_80047DC8
/* 80047DC0  38 60 00 01 */	li r3, 1
/* 80047DC4  4E 80 00 20 */	blr 
lbl_80047DC8:
/* 80047DC8  28 07 00 64 */	cmplwi r7, 0x64
/* 80047DCC  41 80 00 0C */	blt lbl_80047DD8
/* 80047DD0  38 60 FF FF */	li r3, -1
/* 80047DD4  4E 80 00 20 */	blr 
lbl_80047DD8:
/* 80047DD8  7C A5 07 74 */	extsb r5, r5
/* 80047DDC  7C C0 07 74 */	extsb r0, r6
/* 80047DE0  7C 05 00 00 */	cmpw r5, r0
/* 80047DE4  41 82 00 0C */	beq lbl_80047DF0
/* 80047DE8  38 60 00 01 */	li r3, 1
/* 80047DEC  4E 80 00 20 */	blr 
lbl_80047DF0:
/* 80047DF0  38 E7 00 01 */	addi r7, r7, 1
/* 80047DF4  38 63 00 01 */	addi r3, r3, 1
/* 80047DF8  38 84 00 01 */	addi r4, r4, 1
lbl_80047DFC:
/* 80047DFC  88 A3 00 00 */	lbz r5, 0(r3)
/* 80047E00  7C A0 07 75 */	extsb. r0, r5
/* 80047E04  40 82 FF B0 */	bne lbl_80047DB4
/* 80047E08  38 60 00 00 */	li r3, 0
/* 80047E0C  4E 80 00 20 */	blr 
