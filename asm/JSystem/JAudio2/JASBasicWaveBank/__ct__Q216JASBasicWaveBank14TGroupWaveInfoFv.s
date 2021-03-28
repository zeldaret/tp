lbl_80298C4C:
/* 80298C4C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80298C50  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80298C54  B0 03 00 00 */	sth r0, 0(r3)
/* 80298C58  38 00 FF FF */	li r0, -1
/* 80298C5C  90 03 00 04 */	stw r0, 4(r3)
/* 80298C60  4E 80 00 20 */	blr 
