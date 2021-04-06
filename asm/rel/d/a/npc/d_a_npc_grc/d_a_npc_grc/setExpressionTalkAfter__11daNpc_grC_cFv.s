lbl_809CE12C:
/* 809CE12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CE130  7C 08 02 A6 */	mflr r0
/* 809CE134  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CE138  A8 03 09 DE */	lha r0, 0x9de(r3)
/* 809CE13C  2C 00 00 09 */	cmpwi r0, 9
/* 809CE140  41 82 00 6C */	beq lbl_809CE1AC
/* 809CE144  40 80 00 1C */	bge lbl_809CE160
/* 809CE148  2C 00 00 02 */	cmpwi r0, 2
/* 809CE14C  41 82 00 40 */	beq lbl_809CE18C
/* 809CE150  40 80 00 7C */	bge lbl_809CE1CC
/* 809CE154  2C 00 00 01 */	cmpwi r0, 1
/* 809CE158  40 80 00 14 */	bge lbl_809CE16C
/* 809CE15C  48 00 00 70 */	b lbl_809CE1CC
lbl_809CE160:
/* 809CE160  2C 00 00 0B */	cmpwi r0, 0xb
/* 809CE164  40 80 00 68 */	bge lbl_809CE1CC
/* 809CE168  48 00 00 80 */	b lbl_809CE1E8
lbl_809CE16C:
/* 809CE16C  38 80 00 0B */	li r4, 0xb
/* 809CE170  3C A0 80 9D */	lis r5, lit_5043@ha /* 0x809CF5D4@ha */
/* 809CE174  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)  /* 0x809CF5D4@l */
/* 809CE178  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809CE17C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CE180  7D 89 03 A6 */	mtctr r12
/* 809CE184  4E 80 04 21 */	bctrl 
/* 809CE188  48 00 00 60 */	b lbl_809CE1E8
lbl_809CE18C:
/* 809CE18C  38 80 00 0C */	li r4, 0xc
/* 809CE190  3C A0 80 9D */	lis r5, lit_5043@ha /* 0x809CF5D4@ha */
/* 809CE194  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)  /* 0x809CF5D4@l */
/* 809CE198  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809CE19C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CE1A0  7D 89 03 A6 */	mtctr r12
/* 809CE1A4  4E 80 04 21 */	bctrl 
/* 809CE1A8  48 00 00 40 */	b lbl_809CE1E8
lbl_809CE1AC:
/* 809CE1AC  38 80 00 0D */	li r4, 0xd
/* 809CE1B0  3C A0 80 9D */	lis r5, lit_5043@ha /* 0x809CF5D4@ha */
/* 809CE1B4  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)  /* 0x809CF5D4@l */
/* 809CE1B8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809CE1BC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CE1C0  7D 89 03 A6 */	mtctr r12
/* 809CE1C4  4E 80 04 21 */	bctrl 
/* 809CE1C8  48 00 00 20 */	b lbl_809CE1E8
lbl_809CE1CC:
/* 809CE1CC  38 80 00 0E */	li r4, 0xe
/* 809CE1D0  3C A0 80 9D */	lis r5, lit_5043@ha /* 0x809CF5D4@ha */
/* 809CE1D4  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)  /* 0x809CF5D4@l */
/* 809CE1D8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809CE1DC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CE1E0  7D 89 03 A6 */	mtctr r12
/* 809CE1E4  4E 80 04 21 */	bctrl 
lbl_809CE1E8:
/* 809CE1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CE1EC  7C 08 03 A6 */	mtlr r0
/* 809CE1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 809CE1F4  4E 80 00 20 */	blr 
