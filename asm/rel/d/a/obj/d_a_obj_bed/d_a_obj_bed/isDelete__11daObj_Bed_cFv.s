lbl_80BADEF0:
/* 80BADEF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADEF4  7C 08 02 A6 */	mflr r0
/* 80BADEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADEFC  88 03 08 3C */	lbz r0, 0x83c(r3)
/* 80BADF00  2C 00 00 00 */	cmpwi r0, 0
/* 80BADF04  41 82 00 08 */	beq lbl_80BADF0C
/* 80BADF08  48 00 00 18 */	b lbl_80BADF20
lbl_80BADF0C:
/* 80BADF0C  38 60 01 08 */	li r3, 0x108
/* 80BADF10  4B 59 EB 9D */	bl daNpcT_chkEvtBit__FUl
/* 80BADF14  7C 60 00 34 */	cntlzw r0, r3
/* 80BADF18  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80BADF1C  48 00 00 08 */	b lbl_80BADF24
lbl_80BADF20:
/* 80BADF20  38 60 00 00 */	li r3, 0
lbl_80BADF24:
/* 80BADF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADF28  7C 08 03 A6 */	mtlr r0
/* 80BADF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADF30  4E 80 00 20 */	blr 
