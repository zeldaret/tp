lbl_80CFF2B4:
/* 80CFF2B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFF2B8  7C 08 02 A6 */	mflr r0
/* 80CFF2BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFF2C0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CFF2C4  28 00 00 02 */	cmplwi r0, 2
/* 80CFF2C8  40 82 00 10 */	bne lbl_80CFF2D8
/* 80CFF2CC  38 80 00 01 */	li r4, 1
/* 80CFF2D0  48 00 00 1D */	bl demo_runPause_init__Q212daObjSwpush25Act_cFi
/* 80CFF2D4  48 00 00 08 */	b lbl_80CFF2DC
lbl_80CFF2D8:
/* 80CFF2D8  4B FF FF 75 */	bl demo_non_init__Q212daObjSwpush25Act_cFv
lbl_80CFF2DC:
/* 80CFF2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFF2E0  7C 08 03 A6 */	mtlr r0
/* 80CFF2E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFF2E8  4E 80 00 20 */	blr 
