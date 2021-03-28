lbl_8009BC6C:
/* 8009BC6C  88 0D 81 00 */	lbz r0, data_80450680(r13)
/* 8009BC70  28 00 00 00 */	cmplwi r0, 0
/* 8009BC74  4D 82 00 20 */	beqlr 
/* 8009BC78  38 A0 00 00 */	li r5, 0
/* 8009BC7C  B0 AD 8A 1C */	sth r5, mNum__7dTres_c(r13)
/* 8009BC80  98 AD 81 00 */	stb r5, data_80450680(r13)
/* 8009BC84  7C A3 2B 78 */	mr r3, r5
/* 8009BC88  3C 80 80 42 */	lis r4, mTypeGroupListAll__7dTres_c@ha
/* 8009BC8C  38 84 54 38 */	addi r4, r4, mTypeGroupListAll__7dTres_c@l
/* 8009BC90  38 00 00 11 */	li r0, 0x11
/* 8009BC94  7C 09 03 A6 */	mtctr r0
lbl_8009BC98:
/* 8009BC98  7C C4 1A 14 */	add r6, r4, r3
/* 8009BC9C  90 A6 00 00 */	stw r5, 0(r6)
/* 8009BCA0  90 A6 00 04 */	stw r5, 4(r6)
/* 8009BCA4  98 A6 00 08 */	stb r5, 8(r6)
/* 8009BCA8  38 63 00 0C */	addi r3, r3, 0xc
/* 8009BCAC  42 00 FF EC */	bdnz lbl_8009BC98
/* 8009BCB0  4E 80 00 20 */	blr 
