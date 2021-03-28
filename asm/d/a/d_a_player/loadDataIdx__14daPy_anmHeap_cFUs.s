lbl_8015F068:
/* 8015F068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015F06C  7C 08 02 A6 */	mflr r0
/* 8015F070  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015F074  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 8015F078  A0 03 00 00 */	lhz r0, 0(r3)
/* 8015F07C  7C 05 00 40 */	cmplw r5, r0
/* 8015F080  40 82 00 18 */	bne lbl_8015F098
/* 8015F084  A0 03 00 04 */	lhz r0, 4(r3)
/* 8015F088  28 00 FF FF */	cmplwi r0, 0xffff
/* 8015F08C  40 82 00 0C */	bne lbl_8015F098
/* 8015F090  38 60 00 00 */	li r3, 0
/* 8015F094  48 00 00 2C */	b lbl_8015F0C0
lbl_8015F098:
/* 8015F098  B0 83 00 00 */	sth r4, 0(r3)
/* 8015F09C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8015F0A0  38 05 FF FF */	addi r0, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8015F0A4  B0 03 00 04 */	sth r0, 4(r3)
/* 8015F0A8  A0 03 00 02 */	lhz r0, 2(r3)
/* 8015F0AC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8015F0B0  40 82 00 0C */	bne lbl_8015F0BC
/* 8015F0B4  4B FF FE D1 */	bl loadData__14daPy_anmHeap_cFUs
/* 8015F0B8  48 00 00 08 */	b lbl_8015F0C0
lbl_8015F0BC:
/* 8015F0BC  38 60 00 00 */	li r3, 0
lbl_8015F0C0:
/* 8015F0C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015F0C4  7C 08 03 A6 */	mtlr r0
/* 8015F0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8015F0CC  4E 80 00 20 */	blr 
