lbl_8034B83C:
/* 8034B83C  7C 08 02 A6 */	mflr r0
/* 8034B840  3C 80 80 45 */	lis r4, ResetAlarm@ha /* 0x8044C970@ha */
/* 8034B844  90 01 00 04 */	stw r0, 4(r1)
/* 8034B848  38 04 C9 70 */	addi r0, r4, ResetAlarm@l /* 0x8044C970@l */
/* 8034B84C  7C 03 00 40 */	cmplw r3, r0
/* 8034B850  94 21 FF F8 */	stwu r1, -8(r1)
/* 8034B854  40 82 00 0C */	bne lbl_8034B860
/* 8034B858  38 60 00 01 */	li r3, 1
/* 8034B85C  48 00 00 08 */	b lbl_8034B864
lbl_8034B860:
/* 8034B860  4B FF CC 59 */	bl __DVDLowTestAlarm
lbl_8034B864:
/* 8034B864  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034B868  38 21 00 08 */	addi r1, r1, 8
/* 8034B86C  7C 08 03 A6 */	mtlr r0
/* 8034B870  4E 80 00 20 */	blr 
