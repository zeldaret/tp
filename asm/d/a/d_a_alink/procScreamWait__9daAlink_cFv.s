lbl_800DBDA4:
/* 800DBDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DBDA8  7C 08 02 A6 */	mflr r0
/* 800DBDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DBDB0  80 03 05 88 */	lwz r0, 0x588(r3)
/* 800DBDB4  64 00 08 00 */	oris r0, r0, 0x800
/* 800DBDB8  90 03 05 88 */	stw r0, 0x588(r3)
/* 800DBDBC  80 83 05 8C */	lwz r4, 0x58c(r3)
/* 800DBDC0  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 800DBDC4  40 82 00 10 */	bne lbl_800DBDD4
/* 800DBDC8  38 80 00 00 */	li r4, 0
/* 800DBDCC  4B FD E3 05 */	bl checkNextAction__9daAlink_cFi
/* 800DBDD0  48 00 00 1C */	b lbl_800DBDEC
lbl_800DBDD4:
/* 800DBDD4  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 800DBDD8  2C 00 00 00 */	cmpwi r0, 0
/* 800DBDDC  40 82 00 10 */	bne lbl_800DBDEC
/* 800DBDE0  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 800DBDE4  41 82 00 08 */	beq lbl_800DBDEC
/* 800DBDE8  4B FF FE B1 */	bl setScreamWaitAnime__9daAlink_cFv
lbl_800DBDEC:
/* 800DBDEC  38 60 00 01 */	li r3, 1
/* 800DBDF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DBDF4  7C 08 03 A6 */	mtlr r0
/* 800DBDF8  38 21 00 10 */	addi r1, r1, 0x10
/* 800DBDFC  4E 80 00 20 */	blr 
