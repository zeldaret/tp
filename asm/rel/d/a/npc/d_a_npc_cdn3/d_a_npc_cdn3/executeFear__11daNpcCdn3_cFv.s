lbl_8097A518:
/* 8097A518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097A51C  7C 08 02 A6 */	mflr r0
/* 8097A520  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097A524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097A528  93 C1 00 08 */	stw r30, 8(r1)
/* 8097A52C  7C 7E 1B 78 */	mr r30, r3
/* 8097A530  3C 60 80 98 */	lis r3, lit_4037@ha /* 0x8097F540@ha */
/* 8097A534  3B E3 F5 40 */	addi r31, r3, lit_4037@l /* 0x8097F540@l */
/* 8097A538  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 8097A53C  38 63 00 0C */	addi r3, r3, 0xc
/* 8097A540  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8097A544  4B 9A DE E9 */	bl checkPass__12J3DFrameCtrlFf
/* 8097A548  2C 03 00 00 */	cmpwi r3, 0
/* 8097A54C  41 82 00 10 */	beq lbl_8097A55C
/* 8097A550  38 7E 05 94 */	addi r3, r30, 0x594
/* 8097A554  38 80 00 02 */	li r4, 2
/* 8097A558  4B 94 68 C1 */	bl playVoice__17Z2CreatureCitizenFi
lbl_8097A55C:
/* 8097A55C  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 8097A560  38 80 00 01 */	li r4, 1
/* 8097A564  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8097A568  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8097A56C  40 82 00 18 */	bne lbl_8097A584
/* 8097A570  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8097A574  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8097A578  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8097A57C  41 82 00 08 */	beq lbl_8097A584
/* 8097A580  38 80 00 00 */	li r4, 0
lbl_8097A584:
/* 8097A584  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8097A588  41 82 00 58 */	beq lbl_8097A5E0
/* 8097A58C  38 00 00 00 */	li r0, 0
/* 8097A590  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8097A594  7F C3 F3 78 */	mr r3, r30
/* 8097A598  80 9E 0B 78 */	lwz r4, 0xb78(r30)
/* 8097A59C  80 BE 0B 58 */	lwz r5, 0xb58(r30)
/* 8097A5A0  4B 7D DB 51 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A5A4  7C 64 1B 78 */	mr r4, r3
/* 8097A5A8  7F C3 F3 78 */	mr r3, r30
/* 8097A5AC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8097A5B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8097A5B4  38 A0 00 02 */	li r5, 2
/* 8097A5B8  38 C0 00 00 */	li r6, 0
/* 8097A5BC  38 E0 FF FF */	li r7, -1
/* 8097A5C0  4B 7D E9 41 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097A5C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097A5C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097A5CC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8097A5D0  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8097A5D4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8097A5D8  4B 8F 66 2D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8097A5DC  B0 7E 0B 92 */	sth r3, 0xb92(r30)
lbl_8097A5E0:
/* 8097A5E0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8097A5E4  A8 9E 0B 92 */	lha r4, 0xb92(r30)
/* 8097A5E8  38 A0 00 03 */	li r5, 3
/* 8097A5EC  38 C0 06 00 */	li r6, 0x600
/* 8097A5F0  4B 8F 60 19 */	bl cLib_addCalcAngleS2__FPssss
/* 8097A5F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097A5F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097A5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097A600  7C 08 03 A6 */	mtlr r0
/* 8097A604  38 21 00 10 */	addi r1, r1, 0x10
/* 8097A608  4E 80 00 20 */	blr 
