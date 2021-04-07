lbl_802EB510:
/* 802EB510  38 A0 00 00 */	li r5, 0
/* 802EB514  90 A3 00 00 */	stw r5, 0(r3)
/* 802EB518  3C 80 80 3A */	lis r4, j2dDefaultTexCoordInfo@ha /* 0x803A1B80@ha */
/* 802EB51C  38 84 1B 80 */	addi r4, r4, j2dDefaultTexCoordInfo@l /* 0x803A1B80@l */
/* 802EB520  38 00 00 08 */	li r0, 8
/* 802EB524  7C 09 03 A6 */	mtctr r0
lbl_802EB528:
/* 802EB528  88 04 00 00 */	lbz r0, 0(r4)
/* 802EB52C  7C C3 2A 14 */	add r6, r3, r5
/* 802EB530  98 06 00 04 */	stb r0, 4(r6)
/* 802EB534  88 04 00 01 */	lbz r0, 1(r4)
/* 802EB538  98 06 00 05 */	stb r0, 5(r6)
/* 802EB53C  88 04 00 02 */	lbz r0, 2(r4)
/* 802EB540  98 06 00 06 */	stb r0, 6(r6)
/* 802EB544  38 A5 00 04 */	addi r5, r5, 4
/* 802EB548  42 00 FF E0 */	bdnz lbl_802EB528
/* 802EB54C  38 80 00 00 */	li r4, 0
/* 802EB550  38 A0 00 00 */	li r5, 0
/* 802EB554  38 00 00 08 */	li r0, 8
/* 802EB558  7C 09 03 A6 */	mtctr r0
lbl_802EB55C:
/* 802EB55C  38 04 00 24 */	addi r0, r4, 0x24
/* 802EB560  7C A3 01 2E */	stwx r5, r3, r0
/* 802EB564  38 84 00 04 */	addi r4, r4, 4
/* 802EB568  42 00 FF F4 */	bdnz lbl_802EB55C
/* 802EB56C  4E 80 00 20 */	blr 
