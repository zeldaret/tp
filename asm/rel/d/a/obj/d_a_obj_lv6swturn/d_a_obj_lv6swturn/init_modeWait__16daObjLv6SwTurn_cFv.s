lbl_80C83E20:
/* 80C83E20  38 80 00 00 */	li r4, 0
/* 80C83E24  B0 83 05 B2 */	sth r4, 0x5b2(r3)
/* 80C83E28  38 00 FF FF */	li r0, -1
/* 80C83E2C  90 03 05 B8 */	stw r0, 0x5b8(r3)
/* 80C83E30  38 A0 00 00 */	li r5, 0
/* 80C83E34  38 00 00 02 */	li r0, 2
/* 80C83E38  7C 09 03 A6 */	mtctr r0
lbl_80C83E3C:
/* 80C83E3C  38 05 05 AE */	addi r0, r5, 0x5ae
/* 80C83E40  7C 83 01 AE */	stbx r4, r3, r0
/* 80C83E44  38 A5 00 01 */	addi r5, r5, 1
/* 80C83E48  42 00 FF F4 */	bdnz lbl_80C83E3C
/* 80C83E4C  38 00 00 00 */	li r0, 0
/* 80C83E50  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C83E54  4E 80 00 20 */	blr 
