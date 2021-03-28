lbl_8025C0A0:
/* 8025C0A0  3C 80 80 3C */	lis r4, __vt__26dSvBit_childTransformHIO_c@ha
/* 8025C0A4  38 04 33 0C */	addi r0, r4, __vt__26dSvBit_childTransformHIO_c@l
/* 8025C0A8  90 03 00 00 */	stw r0, 0(r3)
/* 8025C0AC  38 C0 00 00 */	li r6, 0
/* 8025C0B0  38 80 00 00 */	li r4, 0
/* 8025C0B4  38 00 00 04 */	li r0, 4
/* 8025C0B8  7C 09 03 A6 */	mtctr r0
lbl_8025C0BC:
/* 8025C0BC  7C A3 32 14 */	add r5, r3, r6
/* 8025C0C0  98 85 00 05 */	stb r4, 5(r5)
/* 8025C0C4  98 85 00 09 */	stb r4, 9(r5)
/* 8025C0C8  38 C6 00 01 */	addi r6, r6, 1
/* 8025C0CC  42 00 FF F0 */	bdnz lbl_8025C0BC
/* 8025C0D0  4E 80 00 20 */	blr 
