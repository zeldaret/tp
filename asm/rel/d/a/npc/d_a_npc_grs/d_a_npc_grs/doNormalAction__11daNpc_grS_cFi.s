lbl_809E6444:
/* 809E6444  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E6448  7C 08 02 A6 */	mflr r0
/* 809E644C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E6450  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809E6454  7C 7F 1B 78 */	mr r31, r3
/* 809E6458  2C 04 00 00 */	cmpwi r4, 0
/* 809E645C  41 82 00 5C */	beq lbl_809E64B8
/* 809E6460  38 9F 0C 90 */	addi r4, r31, 0xc90
/* 809E6464  38 A0 00 01 */	li r5, 1
/* 809E6468  38 C0 00 00 */	li r6, 0
/* 809E646C  4B 76 D1 0D */	bl hitChk2__8daNpcF_cFP8dCcD_Cylii
/* 809E6470  2C 03 00 00 */	cmpwi r3, 0
/* 809E6474  41 82 00 44 */	beq lbl_809E64B8
/* 809E6478  7F E3 FB 78 */	mr r3, r31
/* 809E647C  80 1F 09 30 */	lwz r0, 0x930(r31)
/* 809E6480  2C 00 00 08 */	cmpwi r0, 8
/* 809E6484  40 82 00 0C */	bne lbl_809E6490
/* 809E6488  38 80 00 14 */	li r4, 0x14
/* 809E648C  48 00 00 10 */	b lbl_809E649C
lbl_809E6490:
/* 809E6490  3C 80 80 9E */	lis r4, m__17daNpc_grS_Param_c@ha /* 0x809E7DCC@ha */
/* 809E6494  38 84 7D CC */	addi r4, r4, m__17daNpc_grS_Param_c@l /* 0x809E7DCC@l */
/* 809E6498  A8 84 00 62 */	lha r4, 0x62(r4)
lbl_809E649C:
/* 809E649C  38 A0 00 03 */	li r5, 3
/* 809E64A0  38 C0 00 00 */	li r6, 0
/* 809E64A4  4B 76 D1 B5 */	bl setDamage__8daNpcF_cFiii
/* 809E64A8  7F E3 FB 78 */	mr r3, r31
/* 809E64AC  38 80 00 01 */	li r4, 1
/* 809E64B0  48 00 03 A5 */	bl setLookMode__11daNpc_grS_cFi
/* 809E64B4  48 00 00 28 */	b lbl_809E64DC
lbl_809E64B8:
/* 809E64B8  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809E64BC  28 00 00 00 */	cmplwi r0, 0
/* 809E64C0  41 82 00 1C */	beq lbl_809E64DC
/* 809E64C4  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809E64C8  2C 00 00 00 */	cmpwi r0, 0
/* 809E64CC  40 82 00 10 */	bne lbl_809E64DC
/* 809E64D0  38 00 00 00 */	li r0, 0
/* 809E64D4  B0 1F 0E 12 */	sth r0, 0xe12(r31)
/* 809E64D8  98 1F 09 F0 */	stb r0, 0x9f0(r31)
lbl_809E64DC:
/* 809E64DC  88 1F 09 EF */	lbz r0, 0x9ef(r31)
/* 809E64E0  28 00 00 08 */	cmplwi r0, 8
/* 809E64E4  40 82 00 10 */	bne lbl_809E64F4
/* 809E64E8  38 00 00 01 */	li r0, 1
/* 809E64EC  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809E64F0  48 00 00 0C */	b lbl_809E64FC
lbl_809E64F4:
/* 809E64F4  38 00 00 00 */	li r0, 0
/* 809E64F8  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
lbl_809E64FC:
/* 809E64FC  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 809E6500  4B 97 BB 19 */	bl __ptmf_test
/* 809E6504  2C 03 00 00 */	cmpwi r3, 0
/* 809E6508  41 82 00 54 */	beq lbl_809E655C
/* 809E650C  38 7F 0D D8 */	addi r3, r31, 0xdd8
/* 809E6510  38 9F 0D CC */	addi r4, r31, 0xdcc
/* 809E6514  4B 97 BB 35 */	bl __ptmf_cmpr
/* 809E6518  2C 03 00 00 */	cmpwi r3, 0
/* 809E651C  40 82 00 1C */	bne lbl_809E6538
/* 809E6520  7F E3 FB 78 */	mr r3, r31
/* 809E6524  38 80 00 00 */	li r4, 0
/* 809E6528  39 9F 0D D8 */	addi r12, r31, 0xdd8
/* 809E652C  4B 97 BB 59 */	bl __ptmf_scall
/* 809E6530  60 00 00 00 */	nop 
/* 809E6534  48 00 00 28 */	b lbl_809E655C
lbl_809E6538:
/* 809E6538  80 7F 0D CC */	lwz r3, 0xdcc(r31)
/* 809E653C  80 1F 0D D0 */	lwz r0, 0xdd0(r31)
/* 809E6540  90 61 00 08 */	stw r3, 8(r1)
/* 809E6544  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E6548  80 1F 0D D4 */	lwz r0, 0xdd4(r31)
/* 809E654C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E6550  7F E3 FB 78 */	mr r3, r31
/* 809E6554  38 81 00 08 */	addi r4, r1, 8
/* 809E6558  4B FF FD C5 */	bl setAction__11daNpc_grS_cFM11daNpc_grS_cFPCvPvPv_i
lbl_809E655C:
/* 809E655C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809E6560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E6564  7C 08 03 A6 */	mtlr r0
/* 809E6568  38 21 00 20 */	addi r1, r1, 0x20
/* 809E656C  4E 80 00 20 */	blr 
