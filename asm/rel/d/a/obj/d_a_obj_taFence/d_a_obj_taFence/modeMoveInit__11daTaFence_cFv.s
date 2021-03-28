lbl_80D05B5C:
/* 80D05B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D05B60  7C 08 02 A6 */	mflr r0
/* 80D05B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D05B68  88 83 13 86 */	lbz r4, 0x1386(r3)
/* 80D05B6C  28 04 00 00 */	cmplwi r4, 0
/* 80D05B70  40 82 00 0C */	bne lbl_80D05B7C
/* 80D05B74  48 00 00 21 */	bl init_modeMove__11daTaFence_cFv
/* 80D05B78  48 00 00 0C */	b lbl_80D05B84
lbl_80D05B7C:
/* 80D05B7C  38 04 FF FF */	addi r0, r4, -1
/* 80D05B80  98 03 13 86 */	stb r0, 0x1386(r3)
lbl_80D05B84:
/* 80D05B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D05B88  7C 08 03 A6 */	mtlr r0
/* 80D05B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D05B90  4E 80 00 20 */	blr 
