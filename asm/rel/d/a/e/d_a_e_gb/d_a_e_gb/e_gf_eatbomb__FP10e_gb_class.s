lbl_806C4688:
/* 806C4688  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806C468C  7C 08 02 A6 */	mflr r0
/* 806C4690  90 01 00 54 */	stw r0, 0x54(r1)
/* 806C4694  39 61 00 50 */	addi r11, r1, 0x50
/* 806C4698  4B C9 DB 31 */	bl _savegpr_24
/* 806C469C  7C 7D 1B 78 */	mr r29, r3
/* 806C46A0  3C 80 80 6C */	lis r4, lit_3906@ha /* 0x806C74E8@ha */
/* 806C46A4  3B E4 74 E8 */	addi r31, r4, lit_3906@l /* 0x806C74E8@l */
/* 806C46A8  A8 03 06 A0 */	lha r0, 0x6a0(r3)
/* 806C46AC  2C 00 00 01 */	cmpwi r0, 1
/* 806C46B0  41 82 00 7C */	beq lbl_806C472C
/* 806C46B4  40 80 00 10 */	bge lbl_806C46C4
/* 806C46B8  2C 00 00 00 */	cmpwi r0, 0
/* 806C46BC  40 80 00 14 */	bge lbl_806C46D0
/* 806C46C0  48 00 01 4C */	b lbl_806C480C
lbl_806C46C4:
/* 806C46C4  2C 00 00 03 */	cmpwi r0, 3
/* 806C46C8  40 80 01 44 */	bge lbl_806C480C
/* 806C46CC  48 00 00 F4 */	b lbl_806C47C0
lbl_806C46D0:
/* 806C46D0  38 80 00 17 */	li r4, 0x17
/* 806C46D4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806C46D8  38 A0 00 00 */	li r5, 0
/* 806C46DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C46E0  4B FF D7 0D */	bl body_anm_init__FP10e_gb_classifUcf
/* 806C46E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070156@ha */
/* 806C46E8  38 03 01 56 */	addi r0, r3, 0x0156 /* 0x00070156@l */
/* 806C46EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C46F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806C46F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806C46F8  80 63 00 00 */	lwz r3, 0(r3)
/* 806C46FC  38 81 00 24 */	addi r4, r1, 0x24
/* 806C4700  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 806C4704  38 C0 00 00 */	li r6, 0
/* 806C4708  38 E0 00 00 */	li r7, 0
/* 806C470C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C4710  FC 40 08 90 */	fmr f2, f1
/* 806C4714  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 806C4718  FC 80 18 90 */	fmr f4, f3
/* 806C471C  39 00 00 00 */	li r8, 0
/* 806C4720  4B BE 72 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806C4724  38 00 00 01 */	li r0, 1
/* 806C4728  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
lbl_806C472C:
/* 806C472C  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806C4730  38 80 00 01 */	li r4, 1
/* 806C4734  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C4738  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C473C  40 82 00 18 */	bne lbl_806C4754
/* 806C4740  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C4744  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C4748  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C474C  41 82 00 08 */	beq lbl_806C4754
/* 806C4750  38 80 00 00 */	li r4, 0
lbl_806C4754:
/* 806C4754  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C4758  41 82 00 B4 */	beq lbl_806C480C
/* 806C475C  7F A3 EB 78 */	mr r3, r29
/* 806C4760  38 80 00 14 */	li r4, 0x14
/* 806C4764  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806C4768  38 A0 00 00 */	li r5, 0
/* 806C476C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C4770  4B FF D6 7D */	bl body_anm_init__FP10e_gb_classifUcf
/* 806C4774  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070157@ha */
/* 806C4778  38 03 01 57 */	addi r0, r3, 0x0157 /* 0x00070157@l */
/* 806C477C  90 01 00 20 */	stw r0, 0x20(r1)
/* 806C4780  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806C4784  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806C4788  80 63 00 00 */	lwz r3, 0(r3)
/* 806C478C  38 81 00 20 */	addi r4, r1, 0x20
/* 806C4790  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 806C4794  38 C0 00 00 */	li r6, 0
/* 806C4798  38 E0 00 00 */	li r7, 0
/* 806C479C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C47A0  FC 40 08 90 */	fmr f2, f1
/* 806C47A4  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 806C47A8  FC 80 18 90 */	fmr f4, f3
/* 806C47AC  39 00 00 00 */	li r8, 0
/* 806C47B0  4B BE 71 D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806C47B4  38 00 00 02 */	li r0, 2
/* 806C47B8  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 806C47BC  48 00 00 50 */	b lbl_806C480C
lbl_806C47C0:
/* 806C47C0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806C47C4  38 80 00 01 */	li r4, 1
/* 806C47C8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C47CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C47D0  40 82 00 18 */	bne lbl_806C47E8
/* 806C47D4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C47D8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C47DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C47E0  41 82 00 08 */	beq lbl_806C47E8
/* 806C47E4  38 80 00 00 */	li r4, 0
lbl_806C47E8:
/* 806C47E8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C47EC  41 82 00 20 */	beq lbl_806C480C
/* 806C47F0  38 00 00 0A */	li r0, 0xa
/* 806C47F4  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 806C47F8  38 00 00 00 */	li r0, 0
/* 806C47FC  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 806C4800  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806C4804  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 806C4808  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_806C480C:
/* 806C480C  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 806C4810  2C 00 00 14 */	cmpwi r0, 0x14
/* 806C4814  40 82 00 C0 */	bne lbl_806C48D4
/* 806C4818  3B C0 00 00 */	li r30, 0
/* 806C481C  3B 80 00 00 */	li r28, 0
/* 806C4820  3B 60 00 00 */	li r27, 0
/* 806C4824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C4828  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C482C  3C 60 80 6C */	lis r3, eno_4864@ha /* 0x806C77B8@ha */
/* 806C4830  3B 43 77 B8 */	addi r26, r3, eno_4864@l /* 0x806C77B8@l */
lbl_806C4834:
/* 806C4834  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806C4838  38 00 00 FF */	li r0, 0xff
/* 806C483C  90 01 00 08 */	stw r0, 8(r1)
/* 806C4840  38 80 00 00 */	li r4, 0
/* 806C4844  90 81 00 0C */	stw r4, 0xc(r1)
/* 806C4848  38 00 FF FF */	li r0, -1
/* 806C484C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806C4850  90 81 00 14 */	stw r4, 0x14(r1)
/* 806C4854  90 81 00 18 */	stw r4, 0x18(r1)
/* 806C4858  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806C485C  3B 1B 0E 7C */	addi r24, r27, 0xe7c
/* 806C4860  7C 9D C0 2E */	lwzx r4, r29, r24
/* 806C4864  38 A0 00 00 */	li r5, 0
/* 806C4868  7C DA E2 2E */	lhzx r6, r26, r28
/* 806C486C  38 FD 04 A8 */	addi r7, r29, 0x4a8
/* 806C4870  39 00 00 00 */	li r8, 0
/* 806C4874  39 20 00 00 */	li r9, 0
/* 806C4878  39 40 00 00 */	li r10, 0
/* 806C487C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C4880  4B 98 8C 4D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806C4884  7C 7D C1 2E */	stwx r3, r29, r24
/* 806C4888  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806C488C  38 63 02 10 */	addi r3, r3, 0x210
/* 806C4890  7C 9D C0 2E */	lwzx r4, r29, r24
/* 806C4894  4B 98 70 85 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806C4898  7C 65 1B 79 */	or. r5, r3, r3
/* 806C489C  41 82 00 24 */	beq lbl_806C48C0
/* 806C48A0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806C48A4  80 63 00 04 */	lwz r3, 4(r3)
/* 806C48A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806C48AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806C48B0  38 63 00 F0 */	addi r3, r3, 0xf0
/* 806C48B4  38 85 00 68 */	addi r4, r5, 0x68
/* 806C48B8  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 806C48BC  4B BB BF 25 */	bl func_802807E0
lbl_806C48C0:
/* 806C48C0  3B DE 00 01 */	addi r30, r30, 1
/* 806C48C4  2C 1E 00 05 */	cmpwi r30, 5
/* 806C48C8  3B 9C 00 02 */	addi r28, r28, 2
/* 806C48CC  3B 7B 00 04 */	addi r27, r27, 4
/* 806C48D0  41 80 FF 64 */	blt lbl_806C4834
lbl_806C48D4:
/* 806C48D4  39 61 00 50 */	addi r11, r1, 0x50
/* 806C48D8  4B C9 D9 3D */	bl _restgpr_24
/* 806C48DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806C48E0  7C 08 03 A6 */	mtlr r0
/* 806C48E4  38 21 00 50 */	addi r1, r1, 0x50
/* 806C48E8  4E 80 00 20 */	blr 
