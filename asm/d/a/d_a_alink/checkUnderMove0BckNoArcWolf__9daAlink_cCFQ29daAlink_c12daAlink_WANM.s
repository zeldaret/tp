lbl_8012880C:
/* 8012880C  38 A0 00 00 */	li r5, 0
/* 80128810  A0 03 1F 5C */	lhz r0, 0x1f5c(r3)
/* 80128814  28 00 FF FF */	cmplwi r0, 0xffff
/* 80128818  40 82 00 24 */	bne lbl_8012883C
/* 8012881C  54 80 18 38 */	slwi r0, r4, 3
/* 80128820  3C 80 80 39 */	lis r4, m_wlAnmDataTable__9daAlink_c@ha
/* 80128824  38 84 10 10 */	addi r4, r4, m_wlAnmDataTable__9daAlink_c@l
/* 80128828  7C 84 02 2E */	lhzx r4, r4, r0
/* 8012882C  A0 03 1F 58 */	lhz r0, 0x1f58(r3)
/* 80128830  7C 04 00 40 */	cmplw r4, r0
/* 80128834  40 82 00 08 */	bne lbl_8012883C
/* 80128838  38 A0 00 01 */	li r5, 1
lbl_8012883C:
/* 8012883C  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80128840  4E 80 00 20 */	blr 
