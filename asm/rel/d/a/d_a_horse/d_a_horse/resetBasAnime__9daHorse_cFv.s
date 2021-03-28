lbl_80839EBC:
/* 80839EBC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80839EC0  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80839EC4  B0 03 16 F6 */	sth r0, 0x16f6(r3)
/* 80839EC8  38 00 00 00 */	li r0, 0
/* 80839ECC  90 03 11 44 */	stw r0, 0x1144(r3)
/* 80839ED0  4E 80 00 20 */	blr 
