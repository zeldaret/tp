lbl_801CD2FC:
/* 801CD2FC  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 801CD300  28 03 00 00 */	cmplwi r3, 0
/* 801CD304  41 82 00 44 */	beq lbl_801CD348
/* 801CD308  80 03 00 08 */	lwz r0, 8(r3)
/* 801CD30C  7C A3 02 14 */	add r5, r3, r0
/* 801CD310  38 C5 00 04 */	addi r6, r5, 4
/* 801CD314  38 60 00 00 */	li r3, 0
/* 801CD318  88 05 00 00 */	lbz r0, 0(r5)
/* 801CD31C  7C 09 03 A6 */	mtctr r0
/* 801CD320  2C 00 00 00 */	cmpwi r0, 0
/* 801CD324  40 81 00 24 */	ble lbl_801CD348
lbl_801CD328:
/* 801CD328  7C 06 18 AE */	lbzx r0, r6, r3
/* 801CD32C  7C 04 00 00 */	cmpw r4, r0
/* 801CD330  40 82 00 10 */	bne lbl_801CD340
/* 801CD334  7C 66 1A 14 */	add r3, r6, r3
/* 801CD338  88 63 00 01 */	lbz r3, 1(r3)
/* 801CD33C  4E 80 00 20 */	blr 
lbl_801CD340:
/* 801CD340  38 63 00 28 */	addi r3, r3, 0x28
/* 801CD344  42 00 FF E4 */	bdnz lbl_801CD328
lbl_801CD348:
/* 801CD348  38 60 00 00 */	li r3, 0
/* 801CD34C  4E 80 00 20 */	blr 
