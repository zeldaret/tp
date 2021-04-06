lbl_8025BCB0:
/* 8025BCB0  3C 80 80 3C */	lis r4, __vt__23dSvBit_childSwZoneHIO_c@ha /* 0x803C336C@ha */
/* 8025BCB4  38 04 33 6C */	addi r0, r4, __vt__23dSvBit_childSwZoneHIO_c@l /* 0x803C336C@l */
/* 8025BCB8  90 03 00 00 */	stw r0, 0(r3)
/* 8025BCBC  38 C0 00 00 */	li r6, 0
/* 8025BCC0  38 80 00 00 */	li r4, 0
/* 8025BCC4  38 00 00 20 */	li r0, 0x20
/* 8025BCC8  7C 09 03 A6 */	mtctr r0
lbl_8025BCCC:
/* 8025BCCC  7C A3 32 14 */	add r5, r3, r6
/* 8025BCD0  98 85 00 05 */	stb r4, 5(r5)
/* 8025BCD4  98 85 00 25 */	stb r4, 0x25(r5)
/* 8025BCD8  38 C6 00 01 */	addi r6, r6, 1
/* 8025BCDC  42 00 FF F0 */	bdnz lbl_8025BCCC
/* 8025BCE0  4E 80 00 20 */	blr 
