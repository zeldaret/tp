lbl_80A4DDF8:
/* 80A4DDF8  38 80 00 00 */	li r4, 0
/* 80A4DDFC  38 C0 00 0A */	li r6, 0xa
/* 80A4DE00  3C A0 80 A6 */	lis r5, saru_p@ha
/* 80A4DE04  38 A5 E4 78 */	addi r5, r5, saru_p@l
/* 80A4DE08  7C 80 23 78 */	mr r0, r4
/* 80A4DE0C  7C 69 03 A6 */	mtctr r3
/* 80A4DE10  2C 03 00 00 */	cmpwi r3, 0
/* 80A4DE14  4C 81 00 20 */	blelr 
lbl_80A4DE18:
/* 80A4DE18  7C 65 20 2E */	lwzx r3, r5, r4
/* 80A4DE1C  B0 C3 05 E8 */	sth r6, 0x5e8(r3)
/* 80A4DE20  7C 65 20 2E */	lwzx r3, r5, r4
/* 80A4DE24  B0 03 05 EA */	sth r0, 0x5ea(r3)
/* 80A4DE28  38 84 00 04 */	addi r4, r4, 4
/* 80A4DE2C  42 00 FF EC */	bdnz lbl_80A4DE18
/* 80A4DE30  4E 80 00 20 */	blr 
