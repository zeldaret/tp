lbl_80270B90:
/* 80270B90  7C A0 07 35 */	extsh. r0, r5
/* 80270B94  41 82 00 50 */	beq lbl_80270BE4
/* 80270B98  7C 86 07 34 */	extsh r6, r4
/* 80270B9C  A8 03 00 00 */	lha r0, 0(r3)
/* 80270BA0  7C 06 00 50 */	subf r0, r6, r0
/* 80270BA4  7C 00 07 35 */	extsh. r0, r0
/* 80270BA8  40 81 00 0C */	ble lbl_80270BB4
/* 80270BAC  7C 05 00 D0 */	neg r0, r5
/* 80270BB0  7C 05 07 34 */	extsh r5, r0
lbl_80270BB4:
/* 80270BB4  A8 03 00 00 */	lha r0, 0(r3)
/* 80270BB8  7C 00 2A 14 */	add r0, r0, r5
/* 80270BBC  B0 03 00 00 */	sth r0, 0(r3)
/* 80270BC0  7C A5 07 34 */	extsh r5, r5
/* 80270BC4  A8 03 00 00 */	lha r0, 0(r3)
/* 80270BC8  7C 06 00 50 */	subf r0, r6, r0
/* 80270BCC  7C 00 07 34 */	extsh r0, r0
/* 80270BD0  7C 05 01 D7 */	mullw. r0, r5, r0
/* 80270BD4  41 80 00 28 */	blt lbl_80270BFC
/* 80270BD8  B0 83 00 00 */	sth r4, 0(r3)
/* 80270BDC  38 60 00 01 */	li r3, 1
/* 80270BE0  4E 80 00 20 */	blr 
lbl_80270BE4:
/* 80270BE4  A8 63 00 00 */	lha r3, 0(r3)
/* 80270BE8  7C 80 07 34 */	extsh r0, r4
/* 80270BEC  7C 03 00 00 */	cmpw r3, r0
/* 80270BF0  40 82 00 0C */	bne lbl_80270BFC
/* 80270BF4  38 60 00 01 */	li r3, 1
/* 80270BF8  4E 80 00 20 */	blr 
lbl_80270BFC:
/* 80270BFC  38 60 00 00 */	li r3, 0
/* 80270C00  4E 80 00 20 */	blr 
