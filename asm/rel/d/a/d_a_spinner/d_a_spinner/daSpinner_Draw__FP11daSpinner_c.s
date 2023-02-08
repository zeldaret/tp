lbl_804D4D08:
/* 804D4D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4D0C  7C 08 02 A6 */	mflr r0
/* 804D4D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4D14  4B FF FE A1 */	bl draw__11daSpinner_cFv
/* 804D4D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4D1C  7C 08 03 A6 */	mtlr r0
/* 804D4D20  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4D24  4E 80 00 20 */	blr 
