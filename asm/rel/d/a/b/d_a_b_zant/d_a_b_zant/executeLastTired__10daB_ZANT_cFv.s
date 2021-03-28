lbl_8064A58C:
/* 8064A58C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064A590  7C 08 02 A6 */	mflr r0
/* 8064A594  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064A598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064A59C  7C 7F 1B 78 */	mr r31, r3
/* 8064A5A0  80 03 06 DC */	lwz r0, 0x6dc(r3)
/* 8064A5A4  2C 00 00 05 */	cmpwi r0, 5
/* 8064A5A8  41 82 00 8C */	beq lbl_8064A634
/* 8064A5AC  40 80 00 C8 */	bge lbl_8064A674
/* 8064A5B0  2C 00 00 00 */	cmpwi r0, 0
/* 8064A5B4  41 82 00 08 */	beq lbl_8064A5BC
/* 8064A5B8  48 00 00 BC */	b lbl_8064A674
lbl_8064A5BC:
/* 8064A5BC  88 1F 07 13 */	lbz r0, 0x713(r31)
/* 8064A5C0  28 00 00 00 */	cmplwi r0, 0
/* 8064A5C4  40 82 00 10 */	bne lbl_8064A5D4
/* 8064A5C8  38 00 00 78 */	li r0, 0x78
/* 8064A5CC  90 1F 06 E8 */	stw r0, 0x6e8(r31)
/* 8064A5D0  48 00 00 20 */	b lbl_8064A5F0
lbl_8064A5D4:
/* 8064A5D4  28 00 00 01 */	cmplwi r0, 1
/* 8064A5D8  40 82 00 10 */	bne lbl_8064A5E8
/* 8064A5DC  38 00 00 5A */	li r0, 0x5a
/* 8064A5E0  90 1F 06 E8 */	stw r0, 0x6e8(r31)
/* 8064A5E4  48 00 00 0C */	b lbl_8064A5F0
lbl_8064A5E8:
/* 8064A5E8  38 00 00 3C */	li r0, 0x3c
/* 8064A5EC  90 1F 06 E8 */	stw r0, 0x6e8(r31)
lbl_8064A5F0:
/* 8064A5F0  80 1F 06 E8 */	lwz r0, 0x6e8(r31)
/* 8064A5F4  90 1F 06 F0 */	stw r0, 0x6f0(r31)
/* 8064A5F8  38 00 00 05 */	li r0, 5
/* 8064A5FC  90 1F 06 DC */	stw r0, 0x6dc(r31)
/* 8064A600  38 00 00 00 */	li r0, 0
/* 8064A604  98 1F 07 02 */	stb r0, 0x702(r31)
/* 8064A608  7F E3 FB 78 */	mr r3, r31
/* 8064A60C  38 80 00 00 */	li r4, 0
/* 8064A610  4B FF 59 DD */	bl setTgShield__10daB_ZANT_cFi
/* 8064A614  7F E3 FB 78 */	mr r3, r31
/* 8064A618  38 80 00 01 */	li r4, 1
/* 8064A61C  4B FF 59 51 */	bl setTgHitBit__10daB_ZANT_cFi
/* 8064A620  38 00 00 00 */	li r0, 0
/* 8064A624  98 1F 07 1D */	stb r0, 0x71d(r31)
/* 8064A628  98 1F 07 03 */	stb r0, 0x703(r31)
/* 8064A62C  98 1F 07 1C */	stb r0, 0x71c(r31)
/* 8064A630  98 1F 07 12 */	stb r0, 0x712(r31)
lbl_8064A634:
/* 8064A634  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8064A638  3C 80 80 65 */	lis r4, lit_4176@ha
/* 8064A63C  C0 24 EB 44 */	lfs f1, lit_4176@l(r4)
/* 8064A640  3C 80 80 65 */	lis r4, lit_4169@ha
/* 8064A644  C0 44 EB 28 */	lfs f2, lit_4169@l(r4)
/* 8064A648  4B C2 60 F8 */	b cLib_chaseF__FPfff
/* 8064A64C  80 1F 06 E8 */	lwz r0, 0x6e8(r31)
/* 8064A650  2C 00 00 00 */	cmpwi r0, 0
/* 8064A654  40 82 00 20 */	bne lbl_8064A674
/* 8064A658  7F E3 FB 78 */	mr r3, r31
/* 8064A65C  38 80 00 00 */	li r4, 0
/* 8064A660  4B FF 59 0D */	bl setTgHitBit__10daB_ZANT_cFi
/* 8064A664  7F E3 FB 78 */	mr r3, r31
/* 8064A668  38 80 00 01 */	li r4, 1
/* 8064A66C  38 A0 00 00 */	li r5, 0
/* 8064A670  4B FF E1 09 */	bl setLastWarp__10daB_ZANT_cFii
lbl_8064A674:
/* 8064A674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064A678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064A67C  7C 08 03 A6 */	mtlr r0
/* 8064A680  38 21 00 10 */	addi r1, r1, 0x10
/* 8064A684  4E 80 00 20 */	blr 
