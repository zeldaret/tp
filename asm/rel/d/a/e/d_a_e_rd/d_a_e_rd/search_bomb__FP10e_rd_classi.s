lbl_80505DFC:
/* 80505DFC  80 03 0A 20 */	lwz r0, 0xa20(r3)
/* 80505E00  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 80505E04  40 82 00 0C */	bne lbl_80505E10
/* 80505E08  38 60 00 00 */	li r3, 0
/* 80505E0C  4E 80 00 20 */	blr 
lbl_80505E10:
/* 80505E10  38 A0 00 00 */	li r5, 0
/* 80505E14  3C 60 80 52 */	lis r3, target_info_count@ha
/* 80505E18  90 A3 92 2C */	stw r5, target_info_count@l(r3)
/* 80505E1C  7C A3 2B 78 */	mr r3, r5
/* 80505E20  3C 80 80 52 */	lis r4, target_info@ha
/* 80505E24  38 84 92 04 */	addi r4, r4, target_info@l
/* 80505E28  38 00 00 0A */	li r0, 0xa
/* 80505E2C  7C 09 03 A6 */	mtctr r0
lbl_80505E30:
/* 80505E30  7C A4 19 2E */	stwx r5, r4, r3
/* 80505E34  38 63 00 04 */	addi r3, r3, 4
/* 80505E38  42 00 FF F8 */	bdnz lbl_80505E30
/* 80505E3C  38 60 00 00 */	li r3, 0
/* 80505E40  4E 80 00 20 */	blr 
