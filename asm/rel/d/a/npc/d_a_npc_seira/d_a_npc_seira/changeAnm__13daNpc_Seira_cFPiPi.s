lbl_80ACD570:
/* 80ACD570  88 03 10 C1 */	lbz r0, 0x10c1(r3)
/* 80ACD574  28 00 00 05 */	cmplwi r0, 5
/* 80ACD578  4C 82 00 20 */	bnelr 
/* 80ACD57C  80 04 00 00 */	lwz r0, 0(r4)
/* 80ACD580  2C 00 00 26 */	cmpwi r0, 0x26
/* 80ACD584  41 82 00 40 */	beq lbl_80ACD5C4
/* 80ACD588  40 80 00 10 */	bge lbl_80ACD598
/* 80ACD58C  2C 00 00 17 */	cmpwi r0, 0x17
/* 80ACD590  41 82 00 20 */	beq lbl_80ACD5B0
/* 80ACD594  4E 80 00 20 */	blr 
lbl_80ACD598:
/* 80ACD598  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80ACD59C  41 82 00 50 */	beq lbl_80ACD5EC
/* 80ACD5A0  4C 80 00 20 */	bgelr 
/* 80ACD5A4  2C 00 00 29 */	cmpwi r0, 0x29
/* 80ACD5A8  40 80 00 30 */	bge lbl_80ACD5D8
/* 80ACD5AC  4E 80 00 20 */	blr 
lbl_80ACD5B0:
/* 80ACD5B0  38 00 00 0B */	li r0, 0xb
/* 80ACD5B4  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD5B8  38 00 00 04 */	li r0, 4
/* 80ACD5BC  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD5C0  4E 80 00 20 */	blr 
lbl_80ACD5C4:
/* 80ACD5C4  38 00 00 0C */	li r0, 0xc
/* 80ACD5C8  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD5CC  38 00 00 04 */	li r0, 4
/* 80ACD5D0  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD5D4  4E 80 00 20 */	blr 
lbl_80ACD5D8:
/* 80ACD5D8  38 00 00 0D */	li r0, 0xd
/* 80ACD5DC  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD5E0  38 00 00 04 */	li r0, 4
/* 80ACD5E4  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD5E8  4E 80 00 20 */	blr 
lbl_80ACD5EC:
/* 80ACD5EC  38 00 00 0E */	li r0, 0xe
/* 80ACD5F0  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD5F4  38 00 00 04 */	li r0, 4
/* 80ACD5F8  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD5FC  4E 80 00 20 */	blr 
