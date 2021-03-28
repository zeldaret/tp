lbl_8081DDE0:
/* 8081DDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8081DDE4  7C 08 02 A6 */	mflr r0
/* 8081DDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8081DDEC  28 03 00 00 */	cmplwi r3, 0
/* 8081DDF0  41 82 00 10 */	beq lbl_8081DE00
/* 8081DDF4  4B FF FD DD */	bl demo_skip__9daE_YMB_cFi
/* 8081DDF8  38 60 00 01 */	li r3, 1
/* 8081DDFC  48 00 00 08 */	b lbl_8081DE04
lbl_8081DE00:
/* 8081DE00  38 60 00 00 */	li r3, 0
lbl_8081DE04:
/* 8081DE04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8081DE08  7C 08 03 A6 */	mtlr r0
/* 8081DE0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8081DE10  4E 80 00 20 */	blr 
