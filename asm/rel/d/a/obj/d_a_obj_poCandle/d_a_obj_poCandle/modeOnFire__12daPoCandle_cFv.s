lbl_80CB22D4:
/* 80CB22D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB22D8  7C 08 02 A6 */	mflr r0
/* 80CB22DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB22E0  4B FF FE 61 */	bl init_modeWait__12daPoCandle_cFv
/* 80CB22E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB22E8  7C 08 03 A6 */	mtlr r0
/* 80CB22EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB22F0  4E 80 00 20 */	blr 
