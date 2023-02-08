lbl_80C8DA2C:
/* 80C8DA2C  3C 80 80 C9 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C8E834@ha */
/* 80C8DA30  38 04 E8 34 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C8E834@l */
/* 80C8DA34  90 03 00 00 */	stw r0, 0(r3)
/* 80C8DA38  3C 80 80 C9 */	lis r4, __vt__15daMagLift_HIO_c@ha /* 0x80C8E828@ha */
/* 80C8DA3C  38 04 E8 28 */	addi r0, r4, __vt__15daMagLift_HIO_c@l /* 0x80C8E828@l */
/* 80C8DA40  90 03 00 00 */	stw r0, 0(r3)
/* 80C8DA44  38 00 00 3C */	li r0, 0x3c
/* 80C8DA48  98 03 00 04 */	stb r0, 4(r3)
/* 80C8DA4C  38 00 00 01 */	li r0, 1
/* 80C8DA50  98 03 00 05 */	stb r0, 5(r3)
/* 80C8DA54  4E 80 00 20 */	blr 
