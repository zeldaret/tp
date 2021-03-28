lbl_809ECBF0:
/* 809ECBF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809ECBF4  7C 08 02 A6 */	mflr r0
/* 809ECBF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ECBFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809ECC00  7C 7F 1B 78 */	mr r31, r3
/* 809ECC04  A0 03 1A 7A */	lhz r0, 0x1a7a(r3)
/* 809ECC08  2C 00 00 01 */	cmpwi r0, 1
/* 809ECC0C  41 82 00 7C */	beq lbl_809ECC88
/* 809ECC10  40 80 00 78 */	bge lbl_809ECC88
/* 809ECC14  2C 00 00 00 */	cmpwi r0, 0
/* 809ECC18  40 80 00 0C */	bge lbl_809ECC24
/* 809ECC1C  48 00 00 6C */	b lbl_809ECC88
/* 809ECC20  48 00 00 68 */	b lbl_809ECC88
lbl_809ECC24:
/* 809ECC24  38 80 00 07 */	li r4, 7
/* 809ECC28  3C A0 80 9F */	lis r5, lit_4685@ha
/* 809ECC2C  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)
/* 809ECC30  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809ECC34  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809ECC38  7D 89 03 A6 */	mtctr r12
/* 809ECC3C  4E 80 04 21 */	bctrl 
/* 809ECC40  7F E3 FB 78 */	mr r3, r31
/* 809ECC44  38 80 00 0B */	li r4, 0xb
/* 809ECC48  3C A0 80 9F */	lis r5, lit_4685@ha
/* 809ECC4C  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)
/* 809ECC50  38 A0 00 00 */	li r5, 0
/* 809ECC54  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809ECC58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ECC5C  7D 89 03 A6 */	mtctr r12
/* 809ECC60  4E 80 04 21 */	bctrl 
/* 809ECC64  7F E3 FB 78 */	mr r3, r31
/* 809ECC68  38 80 00 01 */	li r4, 1
/* 809ECC6C  4B FF F4 F9 */	bl setLookMode__11daNpc_Grz_cFi
/* 809ECC70  38 00 00 00 */	li r0, 0
/* 809ECC74  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809ECC78  38 00 00 01 */	li r0, 1
/* 809ECC7C  98 1F 09 EA */	stb r0, 0x9ea(r31)
/* 809ECC80  38 00 00 02 */	li r0, 2
/* 809ECC84  B0 1F 1A 7A */	sth r0, 0x1a7a(r31)
lbl_809ECC88:
/* 809ECC88  38 60 00 01 */	li r3, 1
/* 809ECC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809ECC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809ECC94  7C 08 03 A6 */	mtlr r0
/* 809ECC98  38 21 00 10 */	addi r1, r1, 0x10
/* 809ECC9C  4E 80 00 20 */	blr 
