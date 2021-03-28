lbl_8048ADBC:
/* 8048ADBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048ADC0  7C 08 02 A6 */	mflr r0
/* 8048ADC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048ADC8  4B FF FF C5 */	bl getType__13daTag_Event_cFv
/* 8048ADCC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8048ADD0  20 00 00 05 */	subfic r0, r0, 5
/* 8048ADD4  7C 00 00 34 */	cntlzw r0, r0
/* 8048ADD8  54 03 D9 7E */	srwi r3, r0, 5
/* 8048ADDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048ADE0  7C 08 03 A6 */	mtlr r0
/* 8048ADE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048ADE8  4E 80 00 20 */	blr 
