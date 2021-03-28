lbl_8025C004:
/* 8025C004  3C 80 80 3C */	lis r4, __vt__25dSvBit_childDarknessHIO_c@ha
/* 8025C008  38 04 33 18 */	addi r0, r4, __vt__25dSvBit_childDarknessHIO_c@l
/* 8025C00C  90 03 00 00 */	stw r0, 0(r3)
/* 8025C010  38 C0 00 00 */	li r6, 0
/* 8025C014  38 80 00 00 */	li r4, 0
/* 8025C018  38 00 00 06 */	li r0, 6
/* 8025C01C  7C 09 03 A6 */	mtctr r0
lbl_8025C020:
/* 8025C020  7C A3 32 14 */	add r5, r3, r6
/* 8025C024  98 85 00 05 */	stb r4, 5(r5)
/* 8025C028  98 85 00 0B */	stb r4, 0xb(r5)
/* 8025C02C  38 C6 00 01 */	addi r6, r6, 1
/* 8025C030  42 00 FF F0 */	bdnz lbl_8025C020
/* 8025C034  4E 80 00 20 */	blr 
