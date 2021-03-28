lbl_80B9ECCC:
/* 80B9ECCC  3C 80 80 BA */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80B9ECD0  38 04 F9 B8 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80B9ECD4  90 03 00 00 */	stw r0, 0(r3)
/* 80B9ECD8  3C 80 80 BA */	lis r4, __vt__15daTvCdlst_HIO_c@ha
/* 80B9ECDC  38 04 F9 AC */	addi r0, r4, __vt__15daTvCdlst_HIO_c@l
/* 80B9ECE0  90 03 00 00 */	stw r0, 0(r3)
/* 80B9ECE4  38 00 00 3C */	li r0, 0x3c
/* 80B9ECE8  98 03 00 04 */	stb r0, 4(r3)
/* 80B9ECEC  38 00 00 01 */	li r0, 1
/* 80B9ECF0  98 03 00 05 */	stb r0, 5(r3)
/* 80B9ECF4  4E 80 00 20 */	blr 
