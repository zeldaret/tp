lbl_80C56CAC:
/* 80C56CAC  3C 80 80 C5 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80C56CB0  38 04 79 AC */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80C56CB4  90 03 00 00 */	stw r0, 0(r3)
/* 80C56CB8  3C 80 80 C5 */	lis r4, __vt__16daLv1Cdl01_HIO_c@ha
/* 80C56CBC  38 04 79 A0 */	addi r0, r4, __vt__16daLv1Cdl01_HIO_c@l
/* 80C56CC0  90 03 00 00 */	stw r0, 0(r3)
/* 80C56CC4  38 00 00 3C */	li r0, 0x3c
/* 80C56CC8  98 03 00 04 */	stb r0, 4(r3)
/* 80C56CCC  38 00 00 01 */	li r0, 1
/* 80C56CD0  98 03 00 05 */	stb r0, 5(r3)
/* 80C56CD4  4E 80 00 20 */	blr 
