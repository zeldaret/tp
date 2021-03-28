lbl_8000614C:
/* 8000614C  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 80006150  21 6B FF 80 */	subfic r11, r11, -128
/* 80006154  7C 2C 0B 78 */	mr r12, r1
/* 80006158  7C 21 59 6E */	stwux r1, r1, r11
/* 8000615C  7C 08 02 A6 */	mflr r0
/* 80006160  90 0C 00 04 */	stw r0, 4(r12)
/* 80006164  3C 60 80 37 */	lis r3, m_Do_m_Do_main__stringBase0@ha
/* 80006168  38 63 39 A0 */	addi r3, r3, m_Do_m_Do_main__stringBase0@l
/* 8000616C  38 63 02 83 */	addi r3, r3, 0x283
/* 80006170  38 81 00 40 */	addi r4, r1, 0x40
/* 80006174  48 34 27 1D */	bl DVDOpen
/* 80006178  2C 03 00 00 */	cmpwi r3, 0
/* 8000617C  41 82 00 38 */	beq lbl_800061B4
/* 80006180  38 61 00 40 */	addi r3, r1, 0x40
/* 80006184  38 81 00 20 */	addi r4, r1, 0x20
/* 80006188  38 A0 00 20 */	li r5, 0x20
/* 8000618C  38 C0 00 00 */	li r6, 0
/* 80006190  38 E0 00 02 */	li r7, 2
/* 80006194  48 34 2C B1 */	bl DVDReadPrio
/* 80006198  3C 60 80 3A */	lis r3, COPYDATE_STRING__7mDoMain@ha
/* 8000619C  38 63 2E E0 */	addi r3, r3, COPYDATE_STRING__7mDoMain@l
/* 800061A0  38 81 00 20 */	addi r4, r1, 0x20
/* 800061A4  38 A0 00 11 */	li r5, 0x11
/* 800061A8  4B FF D3 99 */	bl memcpy
/* 800061AC  38 61 00 40 */	addi r3, r1, 0x40
/* 800061B0  48 34 27 A9 */	bl DVDClose
lbl_800061B4:
/* 800061B4  81 41 00 00 */	lwz r10, 0(r1)
/* 800061B8  80 0A 00 04 */	lwz r0, 4(r10)
/* 800061BC  7C 08 03 A6 */	mtlr r0
/* 800061C0  7D 41 53 78 */	mr r1, r10
/* 800061C4  4E 80 00 20 */	blr 
