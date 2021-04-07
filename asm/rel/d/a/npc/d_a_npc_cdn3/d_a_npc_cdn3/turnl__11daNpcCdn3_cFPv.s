lbl_8097C12C:
/* 8097C12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097C130  7C 08 02 A6 */	mflr r0
/* 8097C134  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097C138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097C13C  7C 7F 1B 78 */	mr r31, r3
/* 8097C140  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097C144  28 00 00 00 */	cmplwi r0, 0
/* 8097C148  41 82 00 4C */	beq lbl_8097C194
/* 8097C14C  38 80 00 00 */	li r4, 0
/* 8097C150  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097C154  4B 7D BF 9D */	bl getAnmP__10daNpcCd2_cFii
/* 8097C158  7C 64 1B 78 */	mr r4, r3
/* 8097C15C  7F E3 FB 78 */	mr r3, r31
/* 8097C160  3C A0 80 98 */	lis r5, lit_4091@ha /* 0x8097F544@ha */
/* 8097C164  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)  /* 0x8097F544@l */
/* 8097C168  3C A0 80 98 */	lis r5, lit_4092@ha /* 0x8097F548@ha */
/* 8097C16C  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)  /* 0x8097F548@l */
/* 8097C170  38 A0 00 02 */	li r5, 2
/* 8097C174  38 C0 00 00 */	li r6, 0
/* 8097C178  38 E0 FF FF */	li r7, -1
/* 8097C17C  4B 7D CD 85 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097C180  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8097C184  38 03 40 00 */	addi r0, r3, 0x4000
/* 8097C188  B0 1F 0B 92 */	sth r0, 0xb92(r31)
/* 8097C18C  38 00 00 00 */	li r0, 0
/* 8097C190  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097C194:
/* 8097C194  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8097C198  A8 9F 0B 92 */	lha r4, 0xb92(r31)
/* 8097C19C  38 A0 00 04 */	li r5, 4
/* 8097C1A0  38 C0 20 00 */	li r6, 0x2000
/* 8097C1A4  4B 8F 44 65 */	bl cLib_addCalcAngleS2__FPssss
/* 8097C1A8  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8097C1AC  A8 1F 0B 92 */	lha r0, 0xb92(r31)
/* 8097C1B0  7C 63 00 50 */	subf r3, r3, r0
/* 8097C1B4  4B 9E 8F 1D */	bl abs
/* 8097C1B8  2C 03 00 04 */	cmpwi r3, 4
/* 8097C1BC  41 81 00 14 */	bgt lbl_8097C1D0
/* 8097C1C0  A8 1F 0B 92 */	lha r0, 0xb92(r31)
/* 8097C1C4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8097C1C8  38 60 00 01 */	li r3, 1
/* 8097C1CC  48 00 00 08 */	b lbl_8097C1D4
lbl_8097C1D0:
/* 8097C1D0  38 60 00 00 */	li r3, 0
lbl_8097C1D4:
/* 8097C1D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097C1D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097C1DC  7C 08 03 A6 */	mtlr r0
/* 8097C1E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8097C1E4  4E 80 00 20 */	blr 
