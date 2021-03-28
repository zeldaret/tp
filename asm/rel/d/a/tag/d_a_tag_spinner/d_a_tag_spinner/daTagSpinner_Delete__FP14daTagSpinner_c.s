lbl_80D61ADC:
/* 80D61ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61AE0  7C 08 02 A6 */	mflr r0
/* 80D61AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61AE8  4B FF FF CD */	bl _delete__14daTagSpinner_cFv
/* 80D61AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61AF0  7C 08 03 A6 */	mtlr r0
/* 80D61AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61AF8  4E 80 00 20 */	blr 
