lbl_8025BB78:
/* 8025BB78  3C 80 80 3C */	lis r4, __vt__29dSvBit_childSwPerfectionHIO_c@ha
/* 8025BB7C  38 04 33 84 */	addi r0, r4, __vt__29dSvBit_childSwPerfectionHIO_c@l
/* 8025BB80  90 03 00 00 */	stw r0, 0(r3)
/* 8025BB84  38 C0 00 00 */	li r6, 0
/* 8025BB88  38 80 00 00 */	li r4, 0
/* 8025BB8C  38 00 00 80 */	li r0, 0x80
/* 8025BB90  7C 09 03 A6 */	mtctr r0
lbl_8025BB94:
/* 8025BB94  7C A3 32 14 */	add r5, r3, r6
/* 8025BB98  98 85 00 05 */	stb r4, 5(r5)
/* 8025BB9C  98 85 00 85 */	stb r4, 0x85(r5)
/* 8025BBA0  38 C6 00 01 */	addi r6, r6, 1
/* 8025BBA4  42 00 FF F0 */	bdnz lbl_8025BB94
/* 8025BBA8  4E 80 00 20 */	blr 
