lbl_8097A7E0:
/* 8097A7E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8097A7E4  7C 08 02 A6 */	mflr r0
/* 8097A7E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097A7EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8097A7F0  4B 9E 79 ED */	bl _savegpr_29
/* 8097A7F4  7C 7D 1B 78 */	mr r29, r3
/* 8097A7F8  3C 60 80 98 */	lis r3, lit_4037@ha /* 0x8097F540@ha */
/* 8097A7FC  3B E3 F5 40 */	addi r31, r3, lit_4037@l /* 0x8097F540@l */
/* 8097A800  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 8097A804  38 80 00 01 */	li r4, 1
/* 8097A808  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8097A80C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8097A810  40 82 00 18 */	bne lbl_8097A828
/* 8097A814  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8097A818  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8097A81C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8097A820  41 82 00 08 */	beq lbl_8097A828
/* 8097A824  38 80 00 00 */	li r4, 0
lbl_8097A828:
/* 8097A828  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8097A82C  41 82 00 34 */	beq lbl_8097A860
/* 8097A830  7F A3 EB 78 */	mr r3, r29
/* 8097A834  38 80 00 2A */	li r4, 0x2a
/* 8097A838  80 BD 0B 58 */	lwz r5, 0xb58(r29)
/* 8097A83C  4B 7D D8 B5 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A840  7C 64 1B 78 */	mr r4, r3
/* 8097A844  7F A3 EB 78 */	mr r3, r29
/* 8097A848  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8097A84C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8097A850  38 A0 00 02 */	li r5, 2
/* 8097A854  38 C0 00 00 */	li r6, 0
/* 8097A858  38 E0 FF FF */	li r7, -1
/* 8097A85C  4B 7D E6 A5 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_8097A860:
/* 8097A860  7F A3 EB 78 */	mr r3, r29
/* 8097A864  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097A868  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097A86C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8097A870  4B 69 FE A1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8097A874  B0 7D 0B 92 */	sth r3, 0xb92(r29)
/* 8097A878  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 8097A87C  83 C3 00 08 */	lwz r30, 8(r3)
/* 8097A880  7F A3 EB 78 */	mr r3, r29
/* 8097A884  38 80 00 29 */	li r4, 0x29
/* 8097A888  80 BD 0B 58 */	lwz r5, 0xb58(r29)
/* 8097A88C  4B 7D D8 65 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A890  7C 1E 18 40 */	cmplw r30, r3
/* 8097A894  41 82 00 A0 */	beq lbl_8097A934
/* 8097A898  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 8097A89C  38 63 00 0C */	addi r3, r3, 0xc
/* 8097A8A0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8097A8A4  4B 9A DB 89 */	bl checkPass__12J3DFrameCtrlFf
/* 8097A8A8  2C 03 00 00 */	cmpwi r3, 0
/* 8097A8AC  41 82 00 10 */	beq lbl_8097A8BC
/* 8097A8B0  38 7D 05 94 */	addi r3, r29, 0x594
/* 8097A8B4  38 80 00 02 */	li r4, 2
/* 8097A8B8  4B 94 65 61 */	bl playVoice__17Z2CreatureCitizenFi
lbl_8097A8BC:
/* 8097A8BC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8097A8C0  A8 9D 0B 92 */	lha r4, 0xb92(r29)
/* 8097A8C4  4B 8F 65 61 */	bl cLib_distanceAngleS__Fss
/* 8097A8C8  2C 03 06 00 */	cmpwi r3, 0x600
/* 8097A8CC  40 81 00 38 */	ble lbl_8097A904
/* 8097A8D0  7F A3 EB 78 */	mr r3, r29
/* 8097A8D4  38 80 00 2C */	li r4, 0x2c
/* 8097A8D8  80 BD 0B 58 */	lwz r5, 0xb58(r29)
/* 8097A8DC  4B 7D D8 15 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A8E0  7C 64 1B 78 */	mr r4, r3
/* 8097A8E4  7F A3 EB 78 */	mr r3, r29
/* 8097A8E8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8097A8EC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8097A8F0  38 A0 00 02 */	li r5, 2
/* 8097A8F4  38 C0 00 00 */	li r6, 0
/* 8097A8F8  38 E0 FF FF */	li r7, -1
/* 8097A8FC  4B 7D E6 05 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097A900  48 00 00 34 */	b lbl_8097A934
lbl_8097A904:
/* 8097A904  7F A3 EB 78 */	mr r3, r29
/* 8097A908  38 80 00 2A */	li r4, 0x2a
/* 8097A90C  80 BD 0B 58 */	lwz r5, 0xb58(r29)
/* 8097A910  4B 7D D7 E1 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A914  7C 64 1B 78 */	mr r4, r3
/* 8097A918  7F A3 EB 78 */	mr r3, r29
/* 8097A91C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8097A920  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8097A924  38 A0 00 02 */	li r5, 2
/* 8097A928  38 C0 00 00 */	li r6, 0
/* 8097A92C  38 E0 FF FF */	li r7, -1
/* 8097A930  4B 7D E5 D1 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_8097A934:
/* 8097A934  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8097A938  A8 9D 0B 92 */	lha r4, 0xb92(r29)
/* 8097A93C  38 A0 00 03 */	li r5, 3
/* 8097A940  38 C0 06 00 */	li r6, 0x600
/* 8097A944  4B 8F 5C C5 */	bl cLib_addCalcAngleS2__FPssss
/* 8097A948  39 61 00 20 */	addi r11, r1, 0x20
/* 8097A94C  4B 9E 78 DD */	bl _restgpr_29
/* 8097A950  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8097A954  7C 08 03 A6 */	mtlr r0
/* 8097A958  38 21 00 20 */	addi r1, r1, 0x20
/* 8097A95C  4E 80 00 20 */	blr 
