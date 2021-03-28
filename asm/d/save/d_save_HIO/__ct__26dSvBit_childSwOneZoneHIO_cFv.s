lbl_8025BD10:
/* 8025BD10  3C 80 80 3C */	lis r4, __vt__26dSvBit_childSwOneZoneHIO_c@ha
/* 8025BD14  38 04 33 60 */	addi r0, r4, __vt__26dSvBit_childSwOneZoneHIO_c@l
/* 8025BD18  90 03 00 00 */	stw r0, 0(r3)
/* 8025BD1C  38 C0 00 00 */	li r6, 0
/* 8025BD20  38 80 00 00 */	li r4, 0
/* 8025BD24  38 00 00 10 */	li r0, 0x10
/* 8025BD28  7C 09 03 A6 */	mtctr r0
lbl_8025BD2C:
/* 8025BD2C  7C A3 32 14 */	add r5, r3, r6
/* 8025BD30  98 85 00 05 */	stb r4, 5(r5)
/* 8025BD34  98 85 00 15 */	stb r4, 0x15(r5)
/* 8025BD38  38 C6 00 01 */	addi r6, r6, 1
/* 8025BD3C  42 00 FF F0 */	bdnz lbl_8025BD2C
/* 8025BD40  4E 80 00 20 */	blr 
