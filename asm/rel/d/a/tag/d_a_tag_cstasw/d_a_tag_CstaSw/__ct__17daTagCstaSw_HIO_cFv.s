lbl_805A202C:
/* 805A202C  3C 80 80 5A */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x805A25AC@ha */
/* 805A2030  38 04 25 AC */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x805A25AC@l */
/* 805A2034  90 03 00 00 */	stw r0, 0(r3)
/* 805A2038  3C 80 80 5A */	lis r4, __vt__17daTagCstaSw_HIO_c@ha /* 0x805A25A0@ha */
/* 805A203C  38 04 25 A0 */	addi r0, r4, __vt__17daTagCstaSw_HIO_c@l /* 0x805A25A0@l */
/* 805A2040  90 03 00 00 */	stw r0, 0(r3)
/* 805A2044  38 00 00 00 */	li r0, 0
/* 805A2048  98 03 00 04 */	stb r0, 4(r3)
/* 805A204C  4E 80 00 20 */	blr 
