lbl_809F5770:
/* 809F5770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F5774  7C 08 02 A6 */	mflr r0
/* 809F5778  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F577C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809F5780  7C 7F 1B 78 */	mr r31, r3
/* 809F5784  2C 04 00 00 */	cmpwi r4, 0
/* 809F5788  41 82 00 5C */	beq lbl_809F57E4
/* 809F578C  38 9F 0C 8C */	addi r4, r31, 0xc8c
/* 809F5790  38 A0 00 01 */	li r5, 1
/* 809F5794  38 C0 00 00 */	li r6, 0
/* 809F5798  4B 75 DD E1 */	bl hitChk2__8daNpcF_cFP8dCcD_Cylii
/* 809F579C  2C 03 00 00 */	cmpwi r3, 0
/* 809F57A0  41 82 00 44 */	beq lbl_809F57E4
/* 809F57A4  7F E3 FB 78 */	mr r3, r31
/* 809F57A8  80 1F 09 30 */	lwz r0, 0x930(r31)
/* 809F57AC  2C 00 00 08 */	cmpwi r0, 8
/* 809F57B0  40 82 00 0C */	bne lbl_809F57BC
/* 809F57B4  38 80 00 14 */	li r4, 0x14
/* 809F57B8  48 00 00 10 */	b lbl_809F57C8
lbl_809F57BC:
/* 809F57BC  3C 80 80 A0 */	lis r4, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F57C0  38 84 84 F4 */	addi r4, r4, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F57C4  A8 84 00 62 */	lha r4, 0x62(r4)
lbl_809F57C8:
/* 809F57C8  38 A0 FF FF */	li r5, -1
/* 809F57CC  38 C0 00 00 */	li r6, 0
/* 809F57D0  4B 75 DE 89 */	bl setDamage__8daNpcF_cFiii
/* 809F57D4  7F E3 FB 78 */	mr r3, r31
/* 809F57D8  38 80 00 01 */	li r4, 1
/* 809F57DC  48 00 03 85 */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F57E0  48 00 00 28 */	b lbl_809F5808
lbl_809F57E4:
/* 809F57E4  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809F57E8  28 00 00 00 */	cmplwi r0, 0
/* 809F57EC  41 82 00 1C */	beq lbl_809F5808
/* 809F57F0  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809F57F4  2C 00 00 00 */	cmpwi r0, 0
/* 809F57F8  40 82 00 10 */	bne lbl_809F5808
/* 809F57FC  38 00 00 00 */	li r0, 0
/* 809F5800  B0 1F 0E 0E */	sth r0, 0xe0e(r31)
/* 809F5804  98 1F 09 F0 */	stb r0, 0x9f0(r31)
lbl_809F5808:
/* 809F5808  38 00 00 00 */	li r0, 0
/* 809F580C  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809F5810  38 7F 0D C8 */	addi r3, r31, 0xdc8
/* 809F5814  4B 96 C8 05 */	bl __ptmf_test
/* 809F5818  2C 03 00 00 */	cmpwi r3, 0
/* 809F581C  41 82 00 54 */	beq lbl_809F5870
/* 809F5820  38 7F 0D D4 */	addi r3, r31, 0xdd4
/* 809F5824  38 9F 0D C8 */	addi r4, r31, 0xdc8
/* 809F5828  4B 96 C8 21 */	bl __ptmf_cmpr
/* 809F582C  2C 03 00 00 */	cmpwi r3, 0
/* 809F5830  40 82 00 1C */	bne lbl_809F584C
/* 809F5834  7F E3 FB 78 */	mr r3, r31
/* 809F5838  38 80 00 00 */	li r4, 0
/* 809F583C  39 9F 0D D4 */	addi r12, r31, 0xdd4
/* 809F5840  4B 96 C8 45 */	bl __ptmf_scall
/* 809F5844  60 00 00 00 */	nop 
/* 809F5848  48 00 00 28 */	b lbl_809F5870
lbl_809F584C:
/* 809F584C  80 7F 0D C8 */	lwz r3, 0xdc8(r31)
/* 809F5850  80 1F 0D CC */	lwz r0, 0xdcc(r31)
/* 809F5854  90 61 00 08 */	stw r3, 8(r1)
/* 809F5858  90 01 00 0C */	stw r0, 0xc(r1)
/* 809F585C  80 1F 0D D0 */	lwz r0, 0xdd0(r31)
/* 809F5860  90 01 00 10 */	stw r0, 0x10(r1)
/* 809F5864  7F E3 FB 78 */	mr r3, r31
/* 809F5868  38 81 00 08 */	addi r4, r1, 8
/* 809F586C  4B FF FD 91 */	bl setAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i
lbl_809F5870:
/* 809F5870  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809F5874  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F5878  7C 08 03 A6 */	mtlr r0
/* 809F587C  38 21 00 20 */	addi r1, r1, 0x20
/* 809F5880  4E 80 00 20 */	blr 
