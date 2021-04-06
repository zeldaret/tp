lbl_8025BD70:
/* 8025BD70  3C 80 80 3C */	lis r4, __vt__29dSvBit_childItPerfectionHIO_c@ha /* 0x803C3354@ha */
/* 8025BD74  38 04 33 54 */	addi r0, r4, __vt__29dSvBit_childItPerfectionHIO_c@l /* 0x803C3354@l */
/* 8025BD78  90 03 00 00 */	stw r0, 0(r3)
/* 8025BD7C  38 C0 00 00 */	li r6, 0
/* 8025BD80  38 80 00 00 */	li r4, 0
/* 8025BD84  38 00 00 20 */	li r0, 0x20
/* 8025BD88  7C 09 03 A6 */	mtctr r0
lbl_8025BD8C:
/* 8025BD8C  7C A3 32 14 */	add r5, r3, r6
/* 8025BD90  98 85 00 05 */	stb r4, 5(r5)
/* 8025BD94  98 85 00 25 */	stb r4, 0x25(r5)
/* 8025BD98  38 C6 00 01 */	addi r6, r6, 1
/* 8025BD9C  42 00 FF F0 */	bdnz lbl_8025BD8C
/* 8025BDA0  4E 80 00 20 */	blr 
