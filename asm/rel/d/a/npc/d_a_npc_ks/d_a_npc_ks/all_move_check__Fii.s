lbl_80A4F170:
/* 80A4F170  38 A0 00 00 */	li r5, 0
/* 80A4F174  3C C0 80 A6 */	lis r6, saru_p@ha /* 0x80A5E478@ha */
/* 80A4F178  38 C6 E4 78 */	addi r6, r6, saru_p@l /* 0x80A5E478@l */
/* 80A4F17C  7C 89 03 A6 */	mtctr r4
/* 80A4F180  2C 04 00 00 */	cmpwi r4, 0
/* 80A4F184  40 81 00 4C */	ble lbl_80A4F1D0
lbl_80A4F188:
/* 80A4F188  7C 86 28 2E */	lwzx r4, r6, r5
/* 80A4F18C  28 04 00 00 */	cmplwi r4, 0
/* 80A4F190  40 82 00 0C */	bne lbl_80A4F19C
/* 80A4F194  38 60 00 00 */	li r3, 0
/* 80A4F198  4E 80 00 20 */	blr 
lbl_80A4F19C:
/* 80A4F19C  88 04 05 B6 */	lbz r0, 0x5b6(r4)
/* 80A4F1A0  7C 03 00 00 */	cmpw r3, r0
/* 80A4F1A4  41 82 00 24 */	beq lbl_80A4F1C8
/* 80A4F1A8  A8 04 05 E8 */	lha r0, 0x5e8(r4)
/* 80A4F1AC  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A4F1B0  40 82 00 10 */	bne lbl_80A4F1C0
/* 80A4F1B4  A8 04 05 EA */	lha r0, 0x5ea(r4)
/* 80A4F1B8  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A4F1BC  41 82 00 0C */	beq lbl_80A4F1C8
lbl_80A4F1C0:
/* 80A4F1C0  38 60 00 00 */	li r3, 0
/* 80A4F1C4  4E 80 00 20 */	blr 
lbl_80A4F1C8:
/* 80A4F1C8  38 A5 00 04 */	addi r5, r5, 4
/* 80A4F1CC  42 00 FF BC */	bdnz lbl_80A4F188
lbl_80A4F1D0:
/* 80A4F1D0  38 60 00 01 */	li r3, 1
/* 80A4F1D4  4E 80 00 20 */	blr 
