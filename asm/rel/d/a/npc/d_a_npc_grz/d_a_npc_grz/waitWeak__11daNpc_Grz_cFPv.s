lbl_809ECCA0:
/* 809ECCA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809ECCA4  7C 08 02 A6 */	mflr r0
/* 809ECCA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ECCAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809ECCB0  7C 7F 1B 78 */	mr r31, r3
/* 809ECCB4  A0 03 1A 7A */	lhz r0, 0x1a7a(r3)
/* 809ECCB8  2C 00 00 01 */	cmpwi r0, 1
/* 809ECCBC  41 82 00 7C */	beq lbl_809ECD38
/* 809ECCC0  40 80 00 78 */	bge lbl_809ECD38
/* 809ECCC4  2C 00 00 00 */	cmpwi r0, 0
/* 809ECCC8  40 80 00 0C */	bge lbl_809ECCD4
/* 809ECCCC  48 00 00 6C */	b lbl_809ECD38
/* 809ECCD0  48 00 00 68 */	b lbl_809ECD38
lbl_809ECCD4:
/* 809ECCD4  38 80 00 09 */	li r4, 9
/* 809ECCD8  3C A0 80 9F */	lis r5, lit_4685@ha
/* 809ECCDC  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)
/* 809ECCE0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809ECCE4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809ECCE8  7D 89 03 A6 */	mtctr r12
/* 809ECCEC  4E 80 04 21 */	bctrl 
/* 809ECCF0  7F E3 FB 78 */	mr r3, r31
/* 809ECCF4  38 80 00 01 */	li r4, 1
/* 809ECCF8  3C A0 80 9F */	lis r5, lit_4685@ha
/* 809ECCFC  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)
/* 809ECD00  38 A0 00 00 */	li r5, 0
/* 809ECD04  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809ECD08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ECD0C  7D 89 03 A6 */	mtctr r12
/* 809ECD10  4E 80 04 21 */	bctrl 
/* 809ECD14  7F E3 FB 78 */	mr r3, r31
/* 809ECD18  38 80 00 00 */	li r4, 0
/* 809ECD1C  4B FF F4 49 */	bl setLookMode__11daNpc_Grz_cFi
/* 809ECD20  38 00 00 00 */	li r0, 0
/* 809ECD24  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809ECD28  38 00 00 01 */	li r0, 1
/* 809ECD2C  98 1F 09 EA */	stb r0, 0x9ea(r31)
/* 809ECD30  38 00 00 02 */	li r0, 2
/* 809ECD34  B0 1F 1A 7A */	sth r0, 0x1a7a(r31)
lbl_809ECD38:
/* 809ECD38  38 60 00 01 */	li r3, 1
/* 809ECD3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809ECD40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809ECD44  7C 08 03 A6 */	mtlr r0
/* 809ECD48  38 21 00 10 */	addi r1, r1, 0x10
/* 809ECD4C  4E 80 00 20 */	blr 
