lbl_805DB184:
/* 805DB184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DB188  7C 08 02 A6 */	mflr r0
/* 805DB18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DB190  4B FF FC 35 */	bl execute__8daB_DS_cFv
/* 805DB194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DB198  7C 08 03 A6 */	mtlr r0
/* 805DB19C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DB1A0  4E 80 00 20 */	blr 
