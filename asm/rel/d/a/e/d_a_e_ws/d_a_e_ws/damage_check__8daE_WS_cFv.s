lbl_807E56D0:
/* 807E56D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807E56D4  7C 08 02 A6 */	mflr r0
/* 807E56D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E56DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807E56E0  7C 7F 1B 78 */	mr r31, r3
/* 807E56E4  A8 03 06 8E */	lha r0, 0x68e(r3)
/* 807E56E8  2C 00 00 00 */	cmpwi r0, 0
/* 807E56EC  40 82 01 AC */	bne lbl_807E5898
/* 807E56F0  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 807E56F4  2C 00 00 02 */	cmpwi r0, 2
/* 807E56F8  41 82 01 A0 */	beq lbl_807E5898
/* 807E56FC  2C 00 00 03 */	cmpwi r0, 3
/* 807E5700  40 82 00 08 */	bne lbl_807E5708
/* 807E5704  48 00 01 94 */	b lbl_807E5898
lbl_807E5708:
/* 807E5708  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 807E570C  4B 89 E1 24 */	b Move__10dCcD_GSttsFv
/* 807E5710  38 7F 0A 20 */	addi r3, r31, 0xa20
/* 807E5714  4B 89 ED 4C */	b ChkTgHit__12dCcD_GObjInfFv
/* 807E5718  28 03 00 00 */	cmplwi r3, 0
/* 807E571C  41 82 00 F0 */	beq lbl_807E580C
/* 807E5720  38 7F 0A 20 */	addi r3, r31, 0xa20
/* 807E5724  4B 89 ED D4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807E5728  90 7F 0B 58 */	stw r3, 0xb58(r31)
/* 807E572C  80 7F 0B 58 */	lwz r3, 0xb58(r31)
/* 807E5730  80 83 00 10 */	lwz r4, 0x10(r3)
/* 807E5734  54 80 03 9D */	rlwinm. r0, r4, 0, 0xe, 0xe
/* 807E5738  41 82 00 68 */	beq lbl_807E57A0
/* 807E573C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E5740  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E5744  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807E5748  38 80 00 01 */	li r4, 1
/* 807E574C  7F E5 FB 78 */	mr r5, r31
/* 807E5750  38 DF 05 38 */	addi r6, r31, 0x538
/* 807E5754  38 E0 00 00 */	li r7, 0
/* 807E5758  39 00 00 00 */	li r8, 0
/* 807E575C  39 20 00 00 */	li r9, 0
/* 807E5760  4B 86 6A B8 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 807E5764  38 00 00 04 */	li r0, 4
/* 807E5768  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 807E576C  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)
/* 807E5770  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070171@ha */
/* 807E5774  38 03 01 71 */	addi r0, r3, 0x0171 /* 0x00070171@l */
/* 807E5778  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E577C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807E5780  38 81 00 0C */	addi r4, r1, 0xc
/* 807E5784  38 A0 00 00 */	li r5, 0
/* 807E5788  38 C0 FF FF */	li r6, -1
/* 807E578C  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 807E5790  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E5794  7D 89 03 A6 */	mtctr r12
/* 807E5798  4E 80 04 21 */	bctrl 
/* 807E579C  48 00 00 54 */	b lbl_807E57F0
lbl_807E57A0:
/* 807E57A0  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 807E57A4  41 82 00 4C */	beq lbl_807E57F0
/* 807E57A8  4B A7 E2 A0 */	b GetAc__8cCcD_ObjFv
/* 807E57AC  A8 03 00 08 */	lha r0, 8(r3)
/* 807E57B0  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 807E57B4  40 82 00 3C */	bne lbl_807E57F0
/* 807E57B8  88 03 0C F0 */	lbz r0, 0xcf0(r3)
/* 807E57BC  2C 00 00 06 */	cmpwi r0, 6
/* 807E57C0  40 82 00 30 */	bne lbl_807E57F0
/* 807E57C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070171@ha */
/* 807E57C8  38 03 01 71 */	addi r0, r3, 0x0171 /* 0x00070171@l */
/* 807E57CC  90 01 00 08 */	stw r0, 8(r1)
/* 807E57D0  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807E57D4  38 81 00 08 */	addi r4, r1, 8
/* 807E57D8  38 A0 00 00 */	li r5, 0
/* 807E57DC  38 C0 FF FF */	li r6, -1
/* 807E57E0  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 807E57E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E57E8  7D 89 03 A6 */	mtctr r12
/* 807E57EC  4E 80 04 21 */	bctrl 
lbl_807E57F0:
/* 807E57F0  7F E3 FB 78 */	mr r3, r31
/* 807E57F4  38 9F 0B 58 */	addi r4, r31, 0xb58
/* 807E57F8  4B 8A 24 0C */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807E57FC  7F E3 FB 78 */	mr r3, r31
/* 807E5800  38 80 00 02 */	li r4, 2
/* 807E5804  4B FF E7 8D */	bl setActionMode__8daE_WS_cFi
/* 807E5808  48 00 00 90 */	b lbl_807E5898
lbl_807E580C:
/* 807E580C  38 7F 08 E8 */	addi r3, r31, 0x8e8
/* 807E5810  4B 89 EC 50 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807E5814  28 03 00 00 */	cmplwi r3, 0
/* 807E5818  41 82 00 80 */	beq lbl_807E5898
/* 807E581C  38 7F 08 E8 */	addi r3, r31, 0x8e8
/* 807E5820  4B 89 EC D8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807E5824  90 7F 0B 58 */	stw r3, 0xb58(r31)
/* 807E5828  7F E3 FB 78 */	mr r3, r31
/* 807E582C  38 9F 0B 58 */	addi r4, r31, 0xb58
/* 807E5830  4B 8A 23 D4 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807E5834  80 7F 0B 58 */	lwz r3, 0xb58(r31)
/* 807E5838  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807E583C  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 807E5840  41 82 00 10 */	beq lbl_807E5850
/* 807E5844  38 00 00 14 */	li r0, 0x14
/* 807E5848  B0 1F 06 8E */	sth r0, 0x68e(r31)
/* 807E584C  48 00 00 0C */	b lbl_807E5858
lbl_807E5850:
/* 807E5850  38 00 00 0A */	li r0, 0xa
/* 807E5854  B0 1F 06 8E */	sth r0, 0x68e(r31)
lbl_807E5858:
/* 807E5858  A0 1F 0B 74 */	lhz r0, 0xb74(r31)
/* 807E585C  28 00 00 01 */	cmplwi r0, 1
/* 807E5860  41 81 00 0C */	bgt lbl_807E586C
/* 807E5864  38 00 00 0A */	li r0, 0xa
/* 807E5868  B0 1F 06 8E */	sth r0, 0x68e(r31)
lbl_807E586C:
/* 807E586C  80 7F 0B 58 */	lwz r3, 0xb58(r31)
/* 807E5870  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807E5874  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 807E5878  41 82 00 14 */	beq lbl_807E588C
/* 807E587C  7F E3 FB 78 */	mr r3, r31
/* 807E5880  38 80 00 03 */	li r4, 3
/* 807E5884  4B FF E7 0D */	bl setActionMode__8daE_WS_cFi
/* 807E5888  48 00 00 10 */	b lbl_807E5898
lbl_807E588C:
/* 807E588C  7F E3 FB 78 */	mr r3, r31
/* 807E5890  38 80 00 02 */	li r4, 2
/* 807E5894  4B FF E6 FD */	bl setActionMode__8daE_WS_cFi
lbl_807E5898:
/* 807E5898  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807E589C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807E58A0  7C 08 03 A6 */	mtlr r0
/* 807E58A4  38 21 00 20 */	addi r1, r1, 0x20
/* 807E58A8  4E 80 00 20 */	blr 
