lbl_80267BDC:
/* 80267BDC  80 A3 00 08 */	lwz r5, 8(r3)
/* 80267BE0  3C 05 00 01 */	addis r0, r5, 1
/* 80267BE4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80267BE8  41 82 00 1C */	beq lbl_80267C04
/* 80267BEC  3C 04 00 01 */	addis r0, r4, 1
/* 80267BF0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80267BF4  41 82 00 10 */	beq lbl_80267C04
/* 80267BF8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80267BFC  28 00 00 00 */	cmplwi r0, 0
/* 80267C00  40 82 00 0C */	bne lbl_80267C0C
lbl_80267C04:
/* 80267C04  38 60 00 00 */	li r3, 0
/* 80267C08  4E 80 00 20 */	blr 
lbl_80267C0C:
/* 80267C0C  7C 05 20 50 */	subf r0, r5, r4
/* 80267C10  7C 00 00 34 */	cntlzw r0, r0
/* 80267C14  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80267C18  4E 80 00 20 */	blr 
