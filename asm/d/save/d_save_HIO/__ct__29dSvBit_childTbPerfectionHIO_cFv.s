lbl_8025BF68:
/* 8025BF68  3C 80 80 3C */	lis r4, __vt__29dSvBit_childTbPerfectionHIO_c@ha /* 0x803C3324@ha */
/* 8025BF6C  38 04 33 24 */	addi r0, r4, __vt__29dSvBit_childTbPerfectionHIO_c@l /* 0x803C3324@l */
/* 8025BF70  90 03 00 00 */	stw r0, 0(r3)
/* 8025BF74  38 C0 00 00 */	li r6, 0
/* 8025BF78  38 80 00 00 */	li r4, 0
/* 8025BF7C  38 00 00 40 */	li r0, 0x40
/* 8025BF80  7C 09 03 A6 */	mtctr r0
lbl_8025BF84:
/* 8025BF84  7C A3 32 14 */	add r5, r3, r6
/* 8025BF88  98 85 00 05 */	stb r4, 5(r5)
/* 8025BF8C  98 85 00 45 */	stb r4, 0x45(r5)
/* 8025BF90  38 C6 00 01 */	addi r6, r6, 1
/* 8025BF94  42 00 FF F0 */	bdnz lbl_8025BF84
/* 8025BF98  4E 80 00 20 */	blr 
