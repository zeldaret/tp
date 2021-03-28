lbl_8025BE0C:
/* 8025BE0C  3C 80 80 3C */	lis r4, __vt__26dSvBit_childItDungeonHIO_c@ha
/* 8025BE10  38 04 33 48 */	addi r0, r4, __vt__26dSvBit_childItDungeonHIO_c@l
/* 8025BE14  90 03 00 00 */	stw r0, 0(r3)
/* 8025BE18  38 C0 00 00 */	li r6, 0
/* 8025BE1C  38 80 00 00 */	li r4, 0
/* 8025BE20  38 00 00 80 */	li r0, 0x80
/* 8025BE24  7C 09 03 A6 */	mtctr r0
lbl_8025BE28:
/* 8025BE28  7C A3 32 14 */	add r5, r3, r6
/* 8025BE2C  98 85 00 05 */	stb r4, 5(r5)
/* 8025BE30  98 85 00 85 */	stb r4, 0x85(r5)
/* 8025BE34  38 C6 00 01 */	addi r6, r6, 1
/* 8025BE38  42 00 FF F0 */	bdnz lbl_8025BE28
/* 8025BE3C  4E 80 00 20 */	blr 
