lbl_80368BE4:
/* 80368BE4  38 83 FF FF */	addi r4, r3, -1
/* 80368BE8  38 60 FF FF */	li r3, -1
lbl_80368BEC:
/* 80368BEC  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80368BF0  38 63 00 01 */	addi r3, r3, 1
/* 80368BF4  28 00 00 00 */	cmplwi r0, 0
/* 80368BF8  40 82 FF F4 */	bne lbl_80368BEC
/* 80368BFC  4E 80 00 20 */	blr 
