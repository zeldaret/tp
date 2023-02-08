lbl_80A4F1D8:
/* 80A4F1D8  34 A3 FF FF */	addic. r5, r3, -1
/* 80A4F1DC  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A4F1E0  38 83 E4 78 */	addi r4, r3, saru_p@l /* 0x80A5E478@l */
/* 80A4F1E4  54 A3 10 3A */	slwi r3, r5, 2
/* 80A4F1E8  38 05 00 01 */	addi r0, r5, 1
/* 80A4F1EC  7C 09 03 A6 */	mtctr r0
/* 80A4F1F0  41 80 00 30 */	blt lbl_80A4F220
lbl_80A4F1F4:
/* 80A4F1F4  7C A4 18 2E */	lwzx r5, r4, r3
/* 80A4F1F8  A8 05 05 E8 */	lha r0, 0x5e8(r5)
/* 80A4F1FC  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A4F200  40 82 00 10 */	bne lbl_80A4F210
/* 80A4F204  A8 05 05 F4 */	lha r0, 0x5f4(r5)
/* 80A4F208  2C 00 00 00 */	cmpwi r0, 0
/* 80A4F20C  41 82 00 0C */	beq lbl_80A4F218
lbl_80A4F210:
/* 80A4F210  38 60 00 00 */	li r3, 0
/* 80A4F214  4E 80 00 20 */	blr 
lbl_80A4F218:
/* 80A4F218  38 63 FF FC */	addi r3, r3, -4
/* 80A4F21C  42 00 FF D8 */	bdnz lbl_80A4F1F4
lbl_80A4F220:
/* 80A4F220  38 60 00 01 */	li r3, 1
/* 80A4F224  4E 80 00 20 */	blr 
