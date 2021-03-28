lbl_80D0E8EC:
/* 80D0E8EC  3C 80 80 D1 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80D0E8F0  38 04 F1 5C */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80D0E8F4  90 03 00 00 */	stw r0, 0(r3)
/* 80D0E8F8  3C 80 80 D1 */	lis r4, __vt__16daTimeFire_HIO_c@ha
/* 80D0E8FC  38 04 F1 50 */	addi r0, r4, __vt__16daTimeFire_HIO_c@l
/* 80D0E900  90 03 00 00 */	stw r0, 0(r3)
/* 80D0E904  38 00 00 14 */	li r0, 0x14
/* 80D0E908  98 03 00 04 */	stb r0, 4(r3)
/* 80D0E90C  4E 80 00 20 */	blr 
