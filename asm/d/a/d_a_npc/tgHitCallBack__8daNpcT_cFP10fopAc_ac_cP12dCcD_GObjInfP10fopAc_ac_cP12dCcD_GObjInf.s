lbl_80147FA4:
/* 80147FA4  38 00 00 00 */	li r0, 0
/* 80147FA8  28 05 00 00 */	cmplwi r5, 0
/* 80147FAC  41 82 00 1C */	beq lbl_80147FC8
/* 80147FB0  A8 05 00 0E */	lha r0, 0xe(r5)
/* 80147FB4  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80147FB8  40 82 00 0C */	bne lbl_80147FC4
/* 80147FBC  88 05 05 68 */	lbz r0, 0x568(r5)
/* 80147FC0  48 00 00 08 */	b lbl_80147FC8
lbl_80147FC4:
/* 80147FC4  38 00 00 01 */	li r0, 1
lbl_80147FC8:
/* 80147FC8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80147FCC  90 03 0D B0 */	stw r0, 0xdb0(r3)
/* 80147FD0  4E 80 00 20 */	blr 
