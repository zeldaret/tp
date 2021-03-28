lbl_8015C200:
/* 8015C200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015C204  7C 08 02 A6 */	mflr r0
/* 8015C208  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015C20C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015C210  7C 7F 1B 78 */	mr r31, r3
/* 8015C214  4B ED B8 51 */	bl hide__12daItemBase_cFv
/* 8015C218  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015C21C  28 00 00 06 */	cmplwi r0, 6
/* 8015C220  41 82 00 0C */	beq lbl_8015C22C
/* 8015C224  28 00 00 07 */	cmplwi r0, 7
/* 8015C228  40 82 00 18 */	bne lbl_8015C240
lbl_8015C22C:
/* 8015C22C  38 7F 09 98 */	addi r3, r31, 0x998
/* 8015C230  81 9F 09 98 */	lwz r12, 0x998(r31)
/* 8015C234  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8015C238  7D 89 03 A6 */	mtctr r12
/* 8015C23C  4E 80 04 21 */	bctrl 
lbl_8015C240:
/* 8015C240  38 00 00 0A */	li r0, 0xa
/* 8015C244  98 1F 09 C1 */	stb r0, 0x9c1(r31)
/* 8015C248  7F E3 FB 78 */	mr r3, r31
/* 8015C24C  38 80 00 00 */	li r4, 0
/* 8015C250  38 A0 00 00 */	li r5, 0
/* 8015C254  4B EB F7 7D */	bl fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 8015C258  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8015C25C  60 00 00 08 */	ori r0, r0, 8
/* 8015C260  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8015C264  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8015C268  88 9F 09 2A */	lbz r4, 0x92a(r31)
/* 8015C26C  38 A0 FF FF */	li r5, -1
/* 8015C270  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8015C274  7C 06 07 74 */	extsb r6, r0
/* 8015C278  38 E0 00 00 */	li r7, 0
/* 8015C27C  39 00 00 00 */	li r8, 0
/* 8015C280  4B EB F9 F5 */	bl fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 8015C284  90 7F 09 4C */	stw r3, 0x94c(r31)
/* 8015C288  38 00 00 03 */	li r0, 3
/* 8015C28C  98 1F 09 4A */	stb r0, 0x94a(r31)
/* 8015C290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015C294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015C298  7C 08 03 A6 */	mtlr r0
/* 8015C29C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015C2A0  4E 80 00 20 */	blr 
