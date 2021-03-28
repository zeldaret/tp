lbl_801E0E34:
/* 801E0E34  39 00 00 00 */	li r8, 0
/* 801E0E38  38 80 00 00 */	li r4, 0
/* 801E0E3C  38 E0 00 01 */	li r7, 1
/* 801E0E40  7C 86 23 78 */	mr r6, r4
/* 801E0E44  38 00 00 09 */	li r0, 9
/* 801E0E48  7C 09 03 A6 */	mtctr r0
lbl_801E0E4C:
/* 801E0E4C  88 03 03 6F */	lbz r0, 0x36f(r3)
/* 801E0E50  7C 08 00 00 */	cmpw r8, r0
/* 801E0E54  40 82 00 14 */	bne lbl_801E0E68
/* 801E0E58  38 04 02 14 */	addi r0, r4, 0x214
/* 801E0E5C  7C A3 00 2E */	lwzx r5, r3, r0
/* 801E0E60  98 E5 00 B0 */	stb r7, 0xb0(r5)
/* 801E0E64  48 00 00 10 */	b lbl_801E0E74
lbl_801E0E68:
/* 801E0E68  38 04 02 14 */	addi r0, r4, 0x214
/* 801E0E6C  7C A3 00 2E */	lwzx r5, r3, r0
/* 801E0E70  98 C5 00 B0 */	stb r6, 0xb0(r5)
lbl_801E0E74:
/* 801E0E74  39 08 00 01 */	addi r8, r8, 1
/* 801E0E78  38 84 00 04 */	addi r4, r4, 4
/* 801E0E7C  42 00 FF D0 */	bdnz lbl_801E0E4C
/* 801E0E80  4E 80 00 20 */	blr 
