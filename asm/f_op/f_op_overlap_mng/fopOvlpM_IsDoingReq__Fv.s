lbl_8001E5A8:
/* 8001E5A8  80 6D 80 30 */	lwz r3, l_fopOvlpM_overlap(r13)
/* 8001E5AC  28 03 00 00 */	cmplwi r3, 0
/* 8001E5B0  41 82 00 18 */	beq lbl_8001E5C8
/* 8001E5B4  A0 03 00 04 */	lhz r0, 4(r3)
/* 8001E5B8  28 00 00 01 */	cmplwi r0, 1
/* 8001E5BC  40 82 00 0C */	bne lbl_8001E5C8
/* 8001E5C0  38 60 00 01 */	li r3, 1
/* 8001E5C4  4E 80 00 20 */	blr 
lbl_8001E5C8:
/* 8001E5C8  38 60 00 00 */	li r3, 0
/* 8001E5CC  4E 80 00 20 */	blr 
