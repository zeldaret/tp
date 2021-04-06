lbl_8025BEA8:
/* 8025BEA8  3C 80 80 3C */	lis r4, __vt__23dSvBit_childItZoneHIO_c@ha /* 0x803C333C@ha */
/* 8025BEAC  38 04 33 3C */	addi r0, r4, __vt__23dSvBit_childItZoneHIO_c@l /* 0x803C333C@l */
/* 8025BEB0  90 03 00 00 */	stw r0, 0(r3)
/* 8025BEB4  38 C0 00 00 */	li r6, 0
/* 8025BEB8  38 80 00 00 */	li r4, 0
/* 8025BEBC  38 00 00 20 */	li r0, 0x20
/* 8025BEC0  7C 09 03 A6 */	mtctr r0
lbl_8025BEC4:
/* 8025BEC4  7C A3 32 14 */	add r5, r3, r6
/* 8025BEC8  98 85 00 05 */	stb r4, 5(r5)
/* 8025BECC  98 85 00 25 */	stb r4, 0x25(r5)
/* 8025BED0  38 C6 00 01 */	addi r6, r6, 1
/* 8025BED4  42 00 FF F0 */	bdnz lbl_8025BEC4
/* 8025BED8  4E 80 00 20 */	blr 
