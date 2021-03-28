lbl_80046C9C:
/* 80046C9C  80 A3 04 9C */	lwz r5, 0x49c(r3)
/* 80046CA0  3C 80 FF FF */	lis r4, 0xFFFF /* 0xFFFF6FFF@ha */
/* 80046CA4  38 04 6F FF */	addi r0, r4, 0x6FFF /* 0xFFFF6FFF@l */
/* 80046CA8  7C A0 00 38 */	and r0, r5, r0
/* 80046CAC  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80046CB0  38 60 00 00 */	li r3, 0
/* 80046CB4  4E 80 00 20 */	blr 
