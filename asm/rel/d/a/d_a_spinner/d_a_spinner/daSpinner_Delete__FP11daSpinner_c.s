lbl_804D21B8:
/* 804D21B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D21BC  7C 08 02 A6 */	mflr r0
/* 804D21C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D21C4  38 80 FF FF */	li r4, -1
/* 804D21C8  4B FF FE 09 */	bl __dt__11daSpinner_cFv
/* 804D21CC  38 60 00 01 */	li r3, 1
/* 804D21D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D21D4  7C 08 03 A6 */	mtlr r0
/* 804D21D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D21DC  4E 80 00 20 */	blr 
