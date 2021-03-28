lbl_8084AA64:
/* 8084AA64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084AA68  7C 08 02 A6 */	mflr r0
/* 8084AA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084AA70  28 03 00 00 */	cmplwi r3, 0
/* 8084AA74  41 82 00 10 */	beq lbl_8084AA84
/* 8084AA78  4B FF FC 6D */	bl demo_skip__8daKago_cFi
/* 8084AA7C  38 60 00 01 */	li r3, 1
/* 8084AA80  48 00 00 08 */	b lbl_8084AA88
lbl_8084AA84:
/* 8084AA84  38 60 00 00 */	li r3, 0
lbl_8084AA88:
/* 8084AA88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084AA8C  7C 08 03 A6 */	mtlr r0
/* 8084AA90  38 21 00 10 */	addi r1, r1, 0x10
/* 8084AA94  4E 80 00 20 */	blr 
