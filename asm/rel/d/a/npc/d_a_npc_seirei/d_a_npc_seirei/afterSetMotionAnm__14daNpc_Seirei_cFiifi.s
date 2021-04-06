lbl_80AD646C:
/* 80AD646C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AD6470  7C 08 02 A6 */	mflr r0
/* 80AD6474  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD6478  39 61 00 30 */	addi r11, r1, 0x30
/* 80AD647C  4B 88 BD 51 */	bl _savegpr_25
/* 80AD6480  7C 7A 1B 78 */	mr r26, r3
/* 80AD6484  7C BB 2B 78 */	mr r27, r5
/* 80AD6488  3C A0 80 AD */	lis r5, cNullVec__6Z2Calc@ha /* 0x80AD7DE4@ha */
/* 80AD648C  3B E5 7D E4 */	addi r31, r5, cNullVec__6Z2Calc@l /* 0x80AD7DE4@l */
/* 80AD6490  3B 20 00 00 */	li r25, 0
/* 80AD6494  3B 80 00 00 */	li r28, 0
/* 80AD6498  54 9E 18 38 */	slwi r30, r4, 3
/* 80AD649C  3B BF 01 44 */	addi r29, r31, 0x144
/* 80AD64A0  7C BD F0 2E */	lwzx r5, r29, r30
/* 80AD64A4  2C 05 FF FF */	cmpwi r5, -1
/* 80AD64A8  41 82 00 20 */	beq lbl_80AD64C8
/* 80AD64AC  7C 9D F2 14 */	add r4, r29, r30
/* 80AD64B0  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD64B4  54 00 10 3A */	slwi r0, r0, 2
/* 80AD64B8  38 9F 00 48 */	addi r4, r31, 0x48
/* 80AD64BC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD64C0  4B 67 1C 4D */	bl getTexSRTKeyAnmP__8daNpcT_cFPCci
/* 80AD64C4  7C 79 1B 78 */	mr r25, r3
lbl_80AD64C8:
/* 80AD64C8  28 19 00 00 */	cmplwi r25, 0
/* 80AD64CC  41 82 00 58 */	beq lbl_80AD6524
/* 80AD64D0  80 1A 06 58 */	lwz r0, 0x658(r26)
/* 80AD64D4  7C 00 C8 40 */	cmplw r0, r25
/* 80AD64D8  40 82 00 14 */	bne lbl_80AD64EC
/* 80AD64DC  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AD64E0  60 00 00 80 */	ori r0, r0, 0x80
/* 80AD64E4  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 80AD64E8  48 00 00 3C */	b lbl_80AD6524
lbl_80AD64EC:
/* 80AD64EC  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80AD64F0  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD64F4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AD64F8  7F 43 D3 78 */	mr r3, r26
/* 80AD64FC  7F 24 CB 78 */	mr r4, r25
/* 80AD6500  3C C0 80 AD */	lis r6, lit_4260@ha /* 0x80AD7D4C@ha */
/* 80AD6504  C0 26 7D 4C */	lfs f1, lit_4260@l(r6)  /* 0x80AD7D4C@l */
/* 80AD6508  7F 66 DB 78 */	mr r6, r27
/* 80AD650C  4B 67 1E 2D */	bl setBtkAnm__8daNpcT_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80AD6510  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6514  41 82 00 10 */	beq lbl_80AD6524
/* 80AD6518  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AD651C  60 00 00 82 */	ori r0, r0, 0x82
/* 80AD6520  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_80AD6524:
/* 80AD6524  28 19 00 00 */	cmplwi r25, 0
/* 80AD6528  40 82 00 18 */	bne lbl_80AD6540
/* 80AD652C  7C 1D F0 2E */	lwzx r0, r29, r30
/* 80AD6530  2C 00 FF FF */	cmpwi r0, -1
/* 80AD6534  41 82 00 0C */	beq lbl_80AD6540
/* 80AD6538  38 60 00 00 */	li r3, 0
/* 80AD653C  48 00 00 B0 */	b lbl_80AD65EC
lbl_80AD6540:
/* 80AD6540  3B BF 01 54 */	addi r29, r31, 0x154
/* 80AD6544  7C BD F0 2E */	lwzx r5, r29, r30
/* 80AD6548  2C 05 FF FF */	cmpwi r5, -1
/* 80AD654C  41 82 00 24 */	beq lbl_80AD6570
/* 80AD6550  7F 43 D3 78 */	mr r3, r26
/* 80AD6554  7C 9D F2 14 */	add r4, r29, r30
/* 80AD6558  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD655C  54 00 10 3A */	slwi r0, r0, 2
/* 80AD6560  38 9F 00 48 */	addi r4, r31, 0x48
/* 80AD6564  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD6568  4B 67 1B E1 */	bl getTevRegKeyAnmP__8daNpcT_cFPCci
/* 80AD656C  7C 7C 1B 78 */	mr r28, r3
lbl_80AD6570:
/* 80AD6570  28 1C 00 00 */	cmplwi r28, 0
/* 80AD6574  41 82 00 58 */	beq lbl_80AD65CC
/* 80AD6578  80 1A 06 70 */	lwz r0, 0x670(r26)
/* 80AD657C  7C 00 E0 40 */	cmplw r0, r28
/* 80AD6580  40 82 00 14 */	bne lbl_80AD6594
/* 80AD6584  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AD6588  60 00 01 00 */	ori r0, r0, 0x100
/* 80AD658C  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 80AD6590  48 00 00 3C */	b lbl_80AD65CC
lbl_80AD6594:
/* 80AD6594  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80AD6598  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD659C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AD65A0  7F 43 D3 78 */	mr r3, r26
/* 80AD65A4  7F 84 E3 78 */	mr r4, r28
/* 80AD65A8  3C C0 80 AD */	lis r6, lit_4260@ha /* 0x80AD7D4C@ha */
/* 80AD65AC  C0 26 7D 4C */	lfs f1, lit_4260@l(r6)  /* 0x80AD7D4C@l */
/* 80AD65B0  7F 66 DB 78 */	mr r6, r27
/* 80AD65B4  4B 67 1D C5 */	bl setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi
/* 80AD65B8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD65BC  41 82 00 10 */	beq lbl_80AD65CC
/* 80AD65C0  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AD65C4  60 00 01 04 */	ori r0, r0, 0x104
/* 80AD65C8  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_80AD65CC:
/* 80AD65CC  28 1C 00 00 */	cmplwi r28, 0
/* 80AD65D0  40 82 00 18 */	bne lbl_80AD65E8
/* 80AD65D4  7C 1D F0 2E */	lwzx r0, r29, r30
/* 80AD65D8  2C 00 FF FF */	cmpwi r0, -1
/* 80AD65DC  41 82 00 0C */	beq lbl_80AD65E8
/* 80AD65E0  38 60 00 00 */	li r3, 0
/* 80AD65E4  48 00 00 08 */	b lbl_80AD65EC
lbl_80AD65E8:
/* 80AD65E8  38 60 00 01 */	li r3, 1
lbl_80AD65EC:
/* 80AD65EC  39 61 00 30 */	addi r11, r1, 0x30
/* 80AD65F0  4B 88 BC 29 */	bl _restgpr_25
/* 80AD65F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD65F8  7C 08 03 A6 */	mtlr r0
/* 80AD65FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80AD6600  4E 80 00 20 */	blr 
