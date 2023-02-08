lbl_8082DB64:
/* 8082DB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082DB68  7C 08 02 A6 */	mflr r0
/* 8082DB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082DB70  4B FF FE 41 */	bl executeEntryCheck__8daE_ZH_cFv
/* 8082DB74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082DB78  7C 08 03 A6 */	mtlr r0
/* 8082DB7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8082DB80  4E 80 00 20 */	blr 
