lbl_80CE7778:
/* 80CE7778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE777C  7C 08 02 A6 */	mflr r0
/* 80CE7780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7784  7C 64 1B 78 */	mr r4, r3
/* 80CE7788  80 63 05 6C */	lwz r3, 0x56c(r3)
/* 80CE778C  28 03 00 00 */	cmplwi r3, 0
/* 80CE7790  41 82 00 2C */	beq lbl_80CE77BC
/* 80CE7794  88 03 09 2F */	lbz r0, 0x92f(r3)
/* 80CE7798  60 00 00 01 */	ori r0, r0, 1
/* 80CE779C  98 03 09 2F */	stb r0, 0x92f(r3)
/* 80CE77A0  80 64 05 6C */	lwz r3, 0x56c(r4)
/* 80CE77A4  28 04 00 00 */	cmplwi r4, 0
/* 80CE77A8  41 82 00 0C */	beq lbl_80CE77B4
/* 80CE77AC  80 84 00 04 */	lwz r4, 4(r4)
/* 80CE77B0  48 00 00 08 */	b lbl_80CE77B8
lbl_80CE77B4:
/* 80CE77B4  38 80 FF FF */	li r4, -1
lbl_80CE77B8:
/* 80CE77B8  4B C6 10 35 */	bl soldoutItem__8daMyna_cFUi
lbl_80CE77BC:
/* 80CE77BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE77C0  7C 08 03 A6 */	mtlr r0
/* 80CE77C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE77C8  4E 80 00 20 */	blr 
