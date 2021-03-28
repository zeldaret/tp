lbl_80BA918C:
/* 80BA918C  3C 80 80 BB */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80BA9190  38 04 9D 04 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80BA9194  90 03 00 00 */	stw r0, 0(r3)
/* 80BA9198  3C 80 80 BB */	lis r4, __vt__15daBarDesk_HIO_c@ha
/* 80BA919C  38 04 9C F8 */	addi r0, r4, __vt__15daBarDesk_HIO_c@l
/* 80BA91A0  90 03 00 00 */	stw r0, 0(r3)
/* 80BA91A4  38 00 00 0A */	li r0, 0xa
/* 80BA91A8  98 03 00 04 */	stb r0, 4(r3)
/* 80BA91AC  38 00 00 03 */	li r0, 3
/* 80BA91B0  98 03 00 05 */	stb r0, 5(r3)
/* 80BA91B4  4E 80 00 20 */	blr 
