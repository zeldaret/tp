lbl_80C44D0C:
/* 80C44D0C  3C 80 80 C4 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80C44D10  38 04 52 30 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80C44D14  90 03 00 00 */	stw r0, 0(r3)
/* 80C44D18  3C 80 80 C4 */	lis r4, __vt__13daKiPot_HIO_c@ha
/* 80C44D1C  38 04 52 24 */	addi r0, r4, __vt__13daKiPot_HIO_c@l
/* 80C44D20  90 03 00 00 */	stw r0, 0(r3)
/* 80C44D24  38 00 00 14 */	li r0, 0x14
/* 80C44D28  98 03 00 04 */	stb r0, 4(r3)
/* 80C44D2C  4E 80 00 20 */	blr 
