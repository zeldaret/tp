lbl_80A857B0:
/* 80A857B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A857B4  7C 08 02 A6 */	mflr r0
/* 80A857B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A857BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A857C0  7C 7F 1B 78 */	mr r31, r3
/* 80A857C4  2C 04 00 00 */	cmpwi r4, 0
/* 80A857C8  41 82 00 2C */	beq lbl_80A857F4
/* 80A857CC  38 9F 0C 84 */	addi r4, r31, 0xc84
/* 80A857D0  38 A0 00 01 */	li r5, 1
/* 80A857D4  38 C0 00 00 */	li r6, 0
/* 80A857D8  4B 6C DD A1 */	bl hitChk2__8daNpcF_cFP8dCcD_Cylii
/* 80A857DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A857E0  41 82 00 14 */	beq lbl_80A857F4
/* 80A857E4  7F E3 FB 78 */	mr r3, r31
/* 80A857E8  38 80 00 01 */	li r4, 1
/* 80A857EC  48 00 03 B9 */	bl setLookMode__13daNpc_myna2_cFi
/* 80A857F0  48 00 00 28 */	b lbl_80A85818
lbl_80A857F4:
/* 80A857F4  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80A857F8  28 00 00 00 */	cmplwi r0, 0
/* 80A857FC  41 82 00 1C */	beq lbl_80A85818
/* 80A85800  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80A85804  2C 00 00 00 */	cmpwi r0, 0
/* 80A85808  40 82 00 10 */	bne lbl_80A85818
/* 80A8580C  38 00 00 00 */	li r0, 0
/* 80A85810  B0 1F 0E 0A */	sth r0, 0xe0a(r31)
/* 80A85814  98 1F 09 F0 */	stb r0, 0x9f0(r31)
lbl_80A85818:
/* 80A85818  38 00 00 00 */	li r0, 0
/* 80A8581C  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80A85820  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80A85824  4B 8D C7 F5 */	bl __ptmf_test
/* 80A85828  2C 03 00 00 */	cmpwi r3, 0
/* 80A8582C  41 82 00 54 */	beq lbl_80A85880
/* 80A85830  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80A85834  38 9F 0D C0 */	addi r4, r31, 0xdc0
/* 80A85838  4B 8D C8 11 */	bl __ptmf_cmpr
/* 80A8583C  2C 03 00 00 */	cmpwi r3, 0
/* 80A85840  40 82 00 1C */	bne lbl_80A8585C
/* 80A85844  7F E3 FB 78 */	mr r3, r31
/* 80A85848  38 80 00 00 */	li r4, 0
/* 80A8584C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80A85850  4B 8D C8 35 */	bl __ptmf_scall
/* 80A85854  60 00 00 00 */	nop 
/* 80A85858  48 00 00 28 */	b lbl_80A85880
lbl_80A8585C:
/* 80A8585C  80 7F 0D C0 */	lwz r3, 0xdc0(r31)
/* 80A85860  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80A85864  90 61 00 08 */	stw r3, 8(r1)
/* 80A85868  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A8586C  80 1F 0D C8 */	lwz r0, 0xdc8(r31)
/* 80A85870  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A85874  7F E3 FB 78 */	mr r3, r31
/* 80A85878  38 81 00 08 */	addi r4, r1, 8
/* 80A8587C  4B FF FD 99 */	bl setAction__13daNpc_myna2_cFM13daNpc_myna2_cFPCvPvPv_i
lbl_80A85880:
/* 80A85880  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A85884  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A85888  7C 08 03 A6 */	mtlr r0
/* 80A8588C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A85890  4E 80 00 20 */	blr 
