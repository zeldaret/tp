lbl_809BCB50:
/* 809BCB50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809BCB54  7C 08 02 A6 */	mflr r0
/* 809BCB58  90 01 00 34 */	stw r0, 0x34(r1)
/* 809BCB5C  39 61 00 30 */	addi r11, r1, 0x30
/* 809BCB60  4B 9A 56 6D */	bl _savegpr_25
/* 809BCB64  7C 7A 1B 78 */	mr r26, r3
/* 809BCB68  7C BB 2B 78 */	mr r27, r5
/* 809BCB6C  3C A0 80 9C */	lis r5, cNullVec__6Z2Calc@ha /* 0x809BE59C@ha */
/* 809BCB70  3B E5 E5 9C */	addi r31, r5, cNullVec__6Z2Calc@l /* 0x809BE59C@l */
/* 809BCB74  3B 20 00 00 */	li r25, 0
/* 809BCB78  3B 80 00 00 */	li r28, 0
/* 809BCB7C  54 9E 18 38 */	slwi r30, r4, 3
/* 809BCB80  3B BF 00 CC */	addi r29, r31, 0xcc
/* 809BCB84  7C BD F0 2E */	lwzx r5, r29, r30
/* 809BCB88  2C 05 FF FF */	cmpwi r5, -1
/* 809BCB8C  41 82 00 20 */	beq lbl_809BCBAC
/* 809BCB90  7C 9D F2 14 */	add r4, r29, r30
/* 809BCB94  80 04 00 04 */	lwz r0, 4(r4)
/* 809BCB98  54 00 10 3A */	slwi r0, r0, 2
/* 809BCB9C  38 9F 00 38 */	addi r4, r31, 0x38
/* 809BCBA0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809BCBA4  4B 78 B5 A5 */	bl getTevRegKeyAnmP__8daNpcT_cFPCci
/* 809BCBA8  7C 79 1B 78 */	mr r25, r3
lbl_809BCBAC:
/* 809BCBAC  28 19 00 00 */	cmplwi r25, 0
/* 809BCBB0  41 82 00 58 */	beq lbl_809BCC08
/* 809BCBB4  80 1A 06 70 */	lwz r0, 0x670(r26)
/* 809BCBB8  7C 00 C8 40 */	cmplw r0, r25
/* 809BCBBC  40 82 00 14 */	bne lbl_809BCBD0
/* 809BCBC0  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 809BCBC4  60 00 01 00 */	ori r0, r0, 0x100
/* 809BCBC8  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 809BCBCC  48 00 00 3C */	b lbl_809BCC08
lbl_809BCBD0:
/* 809BCBD0  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 809BCBD4  80 63 00 04 */	lwz r3, 4(r3)
/* 809BCBD8  80 A3 00 04 */	lwz r5, 4(r3)
/* 809BCBDC  7F 43 D3 78 */	mr r3, r26
/* 809BCBE0  7F 24 CB 78 */	mr r4, r25
/* 809BCBE4  3C C0 80 9C */	lis r6, lit_4331@ha /* 0x809BE54C@ha */
/* 809BCBE8  C0 26 E5 4C */	lfs f1, lit_4331@l(r6)  /* 0x809BE54C@l */
/* 809BCBEC  7F 66 DB 78 */	mr r6, r27
/* 809BCBF0  4B 78 B7 89 */	bl setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi
/* 809BCBF4  2C 03 00 00 */	cmpwi r3, 0
/* 809BCBF8  41 82 00 10 */	beq lbl_809BCC08
/* 809BCBFC  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 809BCC00  60 00 01 04 */	ori r0, r0, 0x104
/* 809BCC04  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_809BCC08:
/* 809BCC08  28 19 00 00 */	cmplwi r25, 0
/* 809BCC0C  40 82 00 18 */	bne lbl_809BCC24
/* 809BCC10  7C 1D F0 2E */	lwzx r0, r29, r30
/* 809BCC14  2C 00 FF FF */	cmpwi r0, -1
/* 809BCC18  41 82 00 0C */	beq lbl_809BCC24
/* 809BCC1C  38 60 00 00 */	li r3, 0
/* 809BCC20  48 00 00 B0 */	b lbl_809BCCD0
lbl_809BCC24:
/* 809BCC24  3B BF 00 D4 */	addi r29, r31, 0xd4
/* 809BCC28  7C BD F0 2E */	lwzx r5, r29, r30
/* 809BCC2C  2C 05 FF FF */	cmpwi r5, -1
/* 809BCC30  41 82 00 24 */	beq lbl_809BCC54
/* 809BCC34  7F 43 D3 78 */	mr r3, r26
/* 809BCC38  7C 9D F2 14 */	add r4, r29, r30
/* 809BCC3C  80 04 00 04 */	lwz r0, 4(r4)
/* 809BCC40  54 00 10 3A */	slwi r0, r0, 2
/* 809BCC44  38 9F 00 38 */	addi r4, r31, 0x38
/* 809BCC48  7C 84 00 2E */	lwzx r4, r4, r0
/* 809BCC4C  4B 78 B5 39 */	bl getColorAnmP__8daNpcT_cFPCci
/* 809BCC50  7C 7C 1B 78 */	mr r28, r3
lbl_809BCC54:
/* 809BCC54  28 1C 00 00 */	cmplwi r28, 0
/* 809BCC58  41 82 00 58 */	beq lbl_809BCCB0
/* 809BCC5C  80 1A 06 88 */	lwz r0, 0x688(r26)
/* 809BCC60  7C 00 E0 40 */	cmplw r0, r28
/* 809BCC64  40 82 00 14 */	bne lbl_809BCC78
/* 809BCC68  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 809BCC6C  60 00 02 00 */	ori r0, r0, 0x200
/* 809BCC70  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 809BCC74  48 00 00 3C */	b lbl_809BCCB0
lbl_809BCC78:
/* 809BCC78  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 809BCC7C  80 63 00 04 */	lwz r3, 4(r3)
/* 809BCC80  80 A3 00 04 */	lwz r5, 4(r3)
/* 809BCC84  7F 43 D3 78 */	mr r3, r26
/* 809BCC88  7F 84 E3 78 */	mr r4, r28
/* 809BCC8C  3C C0 80 9C */	lis r6, lit_4331@ha /* 0x809BE54C@ha */
/* 809BCC90  C0 26 E5 4C */	lfs f1, lit_4331@l(r6)  /* 0x809BE54C@l */
/* 809BCC94  7F 66 DB 78 */	mr r6, r27
/* 809BCC98  4B 78 B7 21 */	bl setBpkAnm__8daNpcT_cFP11J3DAnmColorP12J3DModelDatafi
/* 809BCC9C  2C 03 00 00 */	cmpwi r3, 0
/* 809BCCA0  41 82 00 10 */	beq lbl_809BCCB0
/* 809BCCA4  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 809BCCA8  60 00 02 08 */	ori r0, r0, 0x208
/* 809BCCAC  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_809BCCB0:
/* 809BCCB0  28 1C 00 00 */	cmplwi r28, 0
/* 809BCCB4  40 82 00 18 */	bne lbl_809BCCCC
/* 809BCCB8  7C 1D F0 2E */	lwzx r0, r29, r30
/* 809BCCBC  2C 00 FF FF */	cmpwi r0, -1
/* 809BCCC0  41 82 00 0C */	beq lbl_809BCCCC
/* 809BCCC4  38 60 00 00 */	li r3, 0
/* 809BCCC8  48 00 00 08 */	b lbl_809BCCD0
lbl_809BCCCC:
/* 809BCCCC  38 60 00 01 */	li r3, 1
lbl_809BCCD0:
/* 809BCCD0  39 61 00 30 */	addi r11, r1, 0x30
/* 809BCCD4  4B 9A 55 45 */	bl _restgpr_25
/* 809BCCD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809BCCDC  7C 08 03 A6 */	mtlr r0
/* 809BCCE0  38 21 00 30 */	addi r1, r1, 0x30
/* 809BCCE4  4E 80 00 20 */	blr 
