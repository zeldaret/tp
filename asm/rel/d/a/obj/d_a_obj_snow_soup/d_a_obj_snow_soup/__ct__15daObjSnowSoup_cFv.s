lbl_80CDF878:
/* 80CDF878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF87C  7C 08 02 A6 */	mflr r0
/* 80CDF880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDF888  7C 7F 1B 78 */	mr r31, r3
/* 80CDF88C  4B 33 92 D9 */	bl __ct__10fopAc_ac_cFv
/* 80CDF890  3C 60 80 CE */	lis r3, __vt__15daObjSnowSoup_c@ha /* 0x80CE02D4@ha */
/* 80CDF894  38 03 02 D4 */	addi r0, r3, __vt__15daObjSnowSoup_c@l /* 0x80CE02D4@l */
/* 80CDF898  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80CDF89C  38 E0 00 00 */	li r7, 0
/* 80CDF8A0  38 60 00 00 */	li r3, 0
/* 80CDF8A4  38 C0 00 00 */	li r6, 0
lbl_80CDF8A8:
/* 80CDF8A8  38 80 00 00 */	li r4, 0
/* 80CDF8AC  38 00 00 02 */	li r0, 2
/* 80CDF8B0  7C 09 03 A6 */	mtctr r0
lbl_80CDF8B4:
/* 80CDF8B4  7C BF 22 14 */	add r5, r31, r4
/* 80CDF8B8  38 05 05 9C */	addi r0, r5, 0x59c
/* 80CDF8BC  7C C3 01 2E */	stwx r6, r3, r0
/* 80CDF8C0  38 84 00 04 */	addi r4, r4, 4
/* 80CDF8C4  42 00 FF F0 */	bdnz lbl_80CDF8B4
/* 80CDF8C8  38 E7 00 01 */	addi r7, r7, 1
/* 80CDF8CC  2C 07 00 03 */	cmpwi r7, 3
/* 80CDF8D0  38 63 00 08 */	addi r3, r3, 8
/* 80CDF8D4  41 80 FF D4 */	blt lbl_80CDF8A8
/* 80CDF8D8  38 7F 05 8C */	addi r3, r31, 0x58c
/* 80CDF8DC  38 80 00 00 */	li r4, 0
/* 80CDF8E0  38 A0 00 10 */	li r5, 0x10
/* 80CDF8E4  4B 32 3B 75 */	bl memset
/* 80CDF8E8  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80CDF8EC  38 80 00 00 */	li r4, 0
/* 80CDF8F0  38 A0 00 0C */	li r5, 0xc
/* 80CDF8F4  4B 32 3B 65 */	bl memset
/* 80CDF8F8  7F E3 FB 78 */	mr r3, r31
/* 80CDF8FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDF900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF904  7C 08 03 A6 */	mtlr r0
/* 80CDF908  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF90C  4E 80 00 20 */	blr 
