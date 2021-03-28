lbl_804C6184:
/* 804C6184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C6188  7C 08 02 A6 */	mflr r0
/* 804C618C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C6190  4B FF F8 79 */	bl draw__9daMidna_cFv
/* 804C6194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6198  7C 08 03 A6 */	mtlr r0
/* 804C619C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C61A0  4E 80 00 20 */	blr 
