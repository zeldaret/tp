lbl_8061F31C:
/* 8061F31C  2C 04 00 0C */	cmpwi r4, 0xc
/* 8061F320  41 80 00 08 */	blt lbl_8061F328
/* 8061F324  38 80 00 0D */	li r4, 0xd
lbl_8061F328:
/* 8061F328  39 00 00 00 */	li r8, 0
/* 8061F32C  38 A0 00 00 */	li r5, 0
/* 8061F330  3C C0 80 63 */	lis r6, break_part_no2@ha /* 0x8062EC5C@ha */
/* 8061F334  38 E6 EC 5C */	addi r7, r6, break_part_no2@l /* 0x8062EC5C@l */
/* 8061F338  38 00 00 0D */	li r0, 0xd
/* 8061F33C  7C 09 03 A6 */	mtctr r0
lbl_8061F340:
/* 8061F340  7C 07 28 2E */	lwzx r0, r7, r5
/* 8061F344  54 06 08 3C */	slwi r6, r0, 1
/* 8061F348  38 06 09 FC */	addi r0, r6, 0x9fc
/* 8061F34C  7C 03 02 2E */	lhzx r0, r3, r0
/* 8061F350  28 00 00 00 */	cmplwi r0, 0
/* 8061F354  41 82 00 08 */	beq lbl_8061F35C
/* 8061F358  39 08 00 01 */	addi r8, r8, 1
lbl_8061F35C:
/* 8061F35C  38 A5 00 04 */	addi r5, r5, 4
/* 8061F360  42 00 FF E0 */	bdnz lbl_8061F340
/* 8061F364  7D 08 20 51 */	subf. r8, r8, r4
/* 8061F368  4D 82 00 20 */	beqlr 
/* 8061F36C  38 80 00 00 */	li r4, 0
/* 8061F370  38 C0 00 02 */	li r6, 2
/* 8061F374  3C A0 80 63 */	lis r5, break_part_no2@ha /* 0x8062EC5C@ha */
/* 8061F378  38 E5 EC 5C */	addi r7, r5, break_part_no2@l /* 0x8062EC5C@l */
/* 8061F37C  38 00 00 0D */	li r0, 0xd
/* 8061F380  7C 09 03 A6 */	mtctr r0
lbl_8061F384:
/* 8061F384  7C 07 20 2E */	lwzx r0, r7, r4
/* 8061F388  54 05 08 3C */	slwi r5, r0, 1
/* 8061F38C  38 A5 09 FC */	addi r5, r5, 0x9fc
/* 8061F390  7C 03 2A 2E */	lhzx r0, r3, r5
/* 8061F394  28 00 00 00 */	cmplwi r0, 0
/* 8061F398  40 82 00 2C */	bne lbl_8061F3C4
/* 8061F39C  7C C3 2B 2E */	sthx r6, r3, r5
/* 8061F3A0  7C 07 20 2E */	lwzx r0, r7, r4
/* 8061F3A4  2C 00 00 04 */	cmpwi r0, 4
/* 8061F3A8  40 82 00 14 */	bne lbl_8061F3BC
/* 8061F3AC  80 A3 0A 78 */	lwz r5, 0xa78(r3)
/* 8061F3B0  38 05 00 01 */	addi r0, r5, 1
/* 8061F3B4  90 03 0A 78 */	stw r0, 0xa78(r3)
/* 8061F3B8  39 08 00 01 */	addi r8, r8, 1
lbl_8061F3BC:
/* 8061F3BC  35 08 FF FF */	addic. r8, r8, -1
/* 8061F3C0  4D 82 00 20 */	beqlr 
lbl_8061F3C4:
/* 8061F3C4  38 84 00 04 */	addi r4, r4, 4
/* 8061F3C8  42 00 FF BC */	bdnz lbl_8061F384
/* 8061F3CC  4E 80 00 20 */	blr 
