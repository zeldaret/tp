lbl_80809D6C:
/* 80809D6C  38 00 00 75 */	li r0, 0x75
/* 80809D70  90 03 09 A0 */	stw r0, 0x9a0(r3)
/* 80809D74  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80809D78  38 04 FD FF */	addi r0, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 80809D7C  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80809D80  4E 80 00 20 */	blr 
