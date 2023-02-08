lbl_8029CFBC:
/* 8029CFBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029CFC0  7C 08 02 A6 */	mflr r0
/* 8029CFC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029CFC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029CFCC  83 ED 86 0C */	lwz r31, data_80450B8C(r13)
lbl_8029CFD0:
/* 8029CFD0  48 0B 54 71 */	bl DSPCheckMailFromDSP
/* 8029CFD4  28 03 00 00 */	cmplwi r3, 0
/* 8029CFD8  41 82 FF F8 */	beq lbl_8029CFD0
/* 8029CFDC  48 0B 54 75 */	bl DSPReadMailFromDSP
/* 8029CFE0  54 60 84 3E */	srwi r0, r3, 0x10
/* 8029CFE4  28 00 F3 55 */	cmplwi r0, 0xf355
/* 8029CFE8  40 82 00 2C */	bne lbl_8029D014
/* 8029CFEC  54 60 04 2E */	rlwinm r0, r3, 0, 0x10, 0x17
/* 8029CFF0  28 00 FF 00 */	cmplwi r0, 0xff00
/* 8029CFF4  40 82 00 18 */	bne lbl_8029D00C
/* 8029CFF8  38 7F 00 30 */	addi r3, r31, 0x30
/* 8029CFFC  38 80 00 01 */	li r4, 1
/* 8029D000  38 A0 00 00 */	li r5, 0
/* 8029D004  48 0A 19 F1 */	bl OSSendMessage
/* 8029D008  48 00 00 0C */	b lbl_8029D014
lbl_8029D00C:
/* 8029D00C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8029D010  48 00 09 B5 */	bl finishWork__6JASDspFUs
lbl_8029D014:
/* 8029D014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029D018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D01C  7C 08 03 A6 */	mtlr r0
/* 8029D020  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D024  4E 80 00 20 */	blr 
