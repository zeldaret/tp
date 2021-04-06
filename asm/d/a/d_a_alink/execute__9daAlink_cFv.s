lbl_800C8700:
/* 800C8700  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800C8704  7C 08 02 A6 */	mflr r0
/* 800C8708  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800C870C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 800C8710  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 800C8714  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800C8718  48 29 9A BD */	bl _savegpr_27
/* 800C871C  7C 7F 1B 78 */	mr r31, r3
/* 800C8720  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800C8724  3B C4 D6 58 */	addi r30, r4, lit_3757@l /* 0x8038D658@l */
/* 800C8728  48 07 79 49 */	bl loadModelDVD__9daAlink_cFv
/* 800C872C  7F E3 FB 78 */	mr r3, r31
/* 800C8730  3C 80 02 00 */	lis r4, 0x200
/* 800C8734  48 07 8D C1 */	bl checkEndResetFlg0__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG0
/* 800C8738  28 03 00 00 */	cmplwi r3, 0
/* 800C873C  41 82 00 14 */	beq lbl_800C8750
/* 800C8740  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 800C8744  28 03 00 00 */	cmplwi r3, 0
/* 800C8748  41 82 00 08 */	beq lbl_800C8750
/* 800C874C  48 07 93 39 */	bl onNoServiceWait__9daMidna_cFv
lbl_800C8750:
/* 800C8750  A0 1F 30 FE */	lhz r0, 0x30fe(r31)
/* 800C8754  28 00 00 00 */	cmplwi r0, 0
/* 800C8758  41 82 00 48 */	beq lbl_800C87A0
/* 800C875C  38 61 00 0C */	addi r3, r1, 0xc
/* 800C8760  38 9F 37 2C */	addi r4, r31, 0x372c
/* 800C8764  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800C8768  C8 22 96 08 */	lfd f1, lit_32072(r2)
/* 800C876C  90 01 00 84 */	stw r0, 0x84(r1)
/* 800C8770  3C 00 43 30 */	lis r0, 0x4330
/* 800C8774  90 01 00 80 */	stw r0, 0x80(r1)
/* 800C8778  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 800C877C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800C8780  EC 22 00 24 */	fdivs f1, f2, f0
/* 800C8784  48 19 E4 01 */	bl __ml__4cXyzCFf
/* 800C8788  38 7F 08 14 */	addi r3, r31, 0x814
/* 800C878C  38 81 00 0C */	addi r4, r1, 0xc
/* 800C8790  4B FC F0 49 */	bl __as__4cXyzFRC4cXyz
/* 800C8794  38 61 00 0C */	addi r3, r1, 0xc
/* 800C8798  38 80 FF FF */	li r4, -1
/* 800C879C  4B F4 09 E9 */	bl __dt__4cXyzFv
lbl_800C87A0:
/* 800C87A0  7F E3 FB 78 */	mr r3, r31
/* 800C87A4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800C87A8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800C87AC  7D 89 03 A6 */	mtctr r12
/* 800C87B0  4E 80 04 21 */	bctrl 
/* 800C87B4  28 03 00 00 */	cmplwi r3, 0
/* 800C87B8  41 82 00 38 */	beq lbl_800C87F0
/* 800C87BC  7F E3 FB 78 */	mr r3, r31
/* 800C87C0  48 07 8D 29 */	bl checkBoarSingleBattle__9daPy_py_cCFv
/* 800C87C4  28 03 00 00 */	cmplwi r3, 0
/* 800C87C8  41 82 00 28 */	beq lbl_800C87F0
/* 800C87CC  48 07 8D 0D */	bl dComIfGp_getHorseActor__Fv
/* 800C87D0  28 03 00 00 */	cmplwi r3, 0
/* 800C87D4  41 82 00 1C */	beq lbl_800C87F0
/* 800C87D8  48 07 8D 01 */	bl dComIfGp_getHorseActor__Fv
/* 800C87DC  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800C87E0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800C87E4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C87E8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C87EC  48 00 00 48 */	b lbl_800C8834
lbl_800C87F0:
/* 800C87F0  7F E3 FB 78 */	mr r3, r31
/* 800C87F4  48 07 8C D9 */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 800C87F8  28 03 00 00 */	cmplwi r3, 0
/* 800C87FC  41 82 00 10 */	beq lbl_800C880C
/* 800C8800  A8 1F 31 18 */	lha r0, 0x3118(r31)
/* 800C8804  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800C8808  48 00 00 2C */	b lbl_800C8834
lbl_800C880C:
/* 800C880C  7F E3 FB 78 */	mr r3, r31
/* 800C8810  3C 80 00 01 */	lis r4, 1
/* 800C8814  48 00 79 79 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C8818  28 03 00 00 */	cmplwi r3, 0
/* 800C881C  40 82 00 10 */	bne lbl_800C882C
/* 800C8820  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800C8824  28 00 00 2C */	cmplwi r0, 0x2c
/* 800C8828  40 82 00 0C */	bne lbl_800C8834
lbl_800C882C:
/* 800C882C  A8 1F 31 08 */	lha r0, 0x3108(r31)
/* 800C8830  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_800C8834:
/* 800C8834  7F E3 FB 78 */	mr r3, r31
/* 800C8838  38 80 00 01 */	li r4, 1
/* 800C883C  48 07 8C 85 */	bl checkNoResetFlg2__9daPy_py_cCFQ29daPy_py_c9daPy_FLG2
/* 800C8840  28 03 00 00 */	cmplwi r3, 0
/* 800C8844  41 82 00 2C */	beq lbl_800C8870
/* 800C8848  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C884C  28 00 00 48 */	cmplwi r0, 0x48
/* 800C8850  41 82 00 20 */	beq lbl_800C8870
/* 800C8854  7F E3 FB 78 */	mr r3, r31
/* 800C8858  38 80 00 48 */	li r4, 0x48
/* 800C885C  4B FF 79 AD */	bl checkItemSetButton__9daAlink_cFi
/* 800C8860  2C 03 00 02 */	cmpwi r3, 2
/* 800C8864  40 82 00 0C */	bne lbl_800C8870
/* 800C8868  7F E3 FB 78 */	mr r3, r31
/* 800C886C  48 04 7F D5 */	bl offKandelaarModel__9daAlink_cFv
lbl_800C8870:
/* 800C8870  38 00 00 00 */	li r0, 0
/* 800C8874  98 1F 2F D6 */	stb r0, 0x2fd6(r31)
/* 800C8878  7F E3 FB 78 */	mr r3, r31
/* 800C887C  38 80 00 00 */	li r4, 0
/* 800C8880  4B FD C0 91 */	bl setSelectEquipItem__9daAlink_cFi
/* 800C8884  48 07 8C 21 */	bl dComIfGp_event_runCheck__Fv
/* 800C8888  2C 03 00 00 */	cmpwi r3, 0
/* 800C888C  41 82 00 5C */	beq lbl_800C88E8
/* 800C8890  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C8894  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C8898  38 63 05 3D */	addi r3, r3, 0x53d
/* 800C889C  7F E4 FB 78 */	mr r4, r31
/* 800C88A0  38 A0 00 00 */	li r5, 0
/* 800C88A4  48 07 8B C1 */	bl dComIfGp_evmng_getMyStaffId__FPCcP10fopAc_ac_ci
/* 800C88A8  90 7F 31 84 */	stw r3, 0x3184(r31)
/* 800C88AC  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 800C88B0  48 07 8B A1 */	bl checkCommandDoor__11dEvt_info_cFv
/* 800C88B4  2C 03 00 00 */	cmpwi r3, 0
/* 800C88B8  41 82 00 30 */	beq lbl_800C88E8
/* 800C88BC  38 60 00 04 */	li r3, 4
/* 800C88C0  48 07 8B 79 */	bl dComIfGp_event_chkEventFlag__FUs
/* 800C88C4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800C88C8  40 82 00 20 */	bne lbl_800C88E8
/* 800C88CC  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C88D0  28 00 01 02 */	cmplwi r0, 0x102
/* 800C88D4  40 82 00 14 */	bne lbl_800C88E8
/* 800C88D8  7F E3 FB 78 */	mr r3, r31
/* 800C88DC  38 80 00 00 */	li r4, 0
/* 800C88E0  38 A0 00 00 */	li r5, 0
/* 800C88E4  4B FF 89 F9 */	bl deleteEquipItem__9daAlink_cFii
lbl_800C88E8:
/* 800C88E8  A0 7F 05 6E */	lhz r3, 0x56e(r31)
/* 800C88EC  28 03 00 00 */	cmplwi r3, 0
/* 800C88F0  41 82 00 0C */	beq lbl_800C88FC
/* 800C88F4  38 03 FF FF */	addi r0, r3, -1
/* 800C88F8  B0 1F 05 6E */	sth r0, 0x56e(r31)
lbl_800C88FC:
/* 800C88FC  38 60 00 00 */	li r3, 0
/* 800C8900  48 07 8B 1D */	bl dComIfGp_getPlayerCameraID__Fi
/* 800C8904  90 7F 31 7C */	stw r3, 0x317c(r31)
/* 800C8908  38 7F 35 10 */	addi r3, r31, 0x3510
/* 800C890C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800C8910  4B FC EE C9 */	bl __as__4cXyzFRC4cXyz
/* 800C8914  7F E3 FB 78 */	mr r3, r31
/* 800C8918  48 07 8B B5 */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 800C891C  28 03 00 00 */	cmplwi r3, 0
/* 800C8920  41 82 01 2C */	beq lbl_800C8A4C
/* 800C8924  7F E3 FB 78 */	mr r3, r31
/* 800C8928  38 80 20 00 */	li r4, 0x2000
/* 800C892C  48 07 8A E5 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C8930  28 03 00 00 */	cmplwi r3, 0
/* 800C8934  41 82 02 14 */	beq lbl_800C8B48
/* 800C8938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C893C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C8940  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 800C8944  7F 83 E3 78 */	mr r3, r28
/* 800C8948  38 9F 1D C0 */	addi r4, r31, 0x1dc0
/* 800C894C  4B FA BD 15 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800C8950  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C8954  41 82 01 F4 */	beq lbl_800C8B48
/* 800C8958  7F 83 E3 78 */	mr r3, r28
/* 800C895C  38 9F 1D C0 */	addi r4, r31, 0x1dc0
/* 800C8960  4B FA C1 5D */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 800C8964  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C8968  41 82 01 E0 */	beq lbl_800C8B48
/* 800C896C  AB BF 04 E6 */	lha r29, 0x4e6(r31)
/* 800C8970  AB 7F 04 DE */	lha r27, 0x4de(r31)
/* 800C8974  C3 FF 04 D4 */	lfs f31, 0x4d4(r31)
/* 800C8978  7F 83 E3 78 */	mr r3, r28
/* 800C897C  38 9F 1D C0 */	addi r4, r31, 0x1dc0
/* 800C8980  38 A0 00 01 */	li r5, 1
/* 800C8984  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 800C8988  38 FF 04 DC */	addi r7, r31, 0x4dc
/* 800C898C  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 800C8990  39 20 00 00 */	li r9, 0
/* 800C8994  39 40 00 00 */	li r10, 0
/* 800C8998  4B FA CD DD */	bl MoveBgCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyzbb
/* 800C899C  A8 1F 31 14 */	lha r0, 0x3114(r31)
/* 800C89A0  2C 00 60 00 */	cmpwi r0, 0x6000
/* 800C89A4  41 81 00 0C */	bgt lbl_800C89B0
/* 800C89A8  2C 00 80 00 */	cmpwi r0, -32768
/* 800C89AC  40 82 00 2C */	bne lbl_800C89D8
lbl_800C89B0:
/* 800C89B0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C89B4  7C 1D 00 50 */	subf r0, r29, r0
/* 800C89B8  7C 00 07 34 */	extsh r0, r0
/* 800C89BC  7C 00 E8 50 */	subf r0, r0, r29
/* 800C89C0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800C89C4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800C89C8  7C 1B 00 50 */	subf r0, r27, r0
/* 800C89CC  7C 00 07 34 */	extsh r0, r0
/* 800C89D0  7C 00 D8 50 */	subf r0, r0, r27
/* 800C89D4  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800C89D8:
/* 800C89D8  7F 83 E3 78 */	mr r3, r28
/* 800C89DC  38 9F 1D C0 */	addi r4, r31, 0x1dc0
/* 800C89E0  38 A0 00 01 */	li r5, 1
/* 800C89E4  38 DF 04 BC */	addi r6, r31, 0x4bc
/* 800C89E8  38 E0 00 00 */	li r7, 0
/* 800C89EC  39 00 00 00 */	li r8, 0
/* 800C89F0  39 20 00 00 */	li r9, 0
/* 800C89F4  39 40 00 00 */	li r10, 0
/* 800C89F8  4B FA CD 7D */	bl MoveBgCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyzbb
/* 800C89FC  38 7F 1D C0 */	addi r3, r31, 0x1dc0
/* 800C8A00  38 80 00 00 */	li r4, 0
/* 800C8A04  4B FD 97 DD */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800C8A08  7C 60 07 34 */	extsh r0, r3
/* 800C8A0C  2C 00 00 C6 */	cmpwi r0, 0xc6
/* 800C8A10  40 82 00 1C */	bne lbl_800C8A2C
/* 800C8A14  C0 3F 34 CC */	lfs f1, 0x34cc(r31)
/* 800C8A18  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800C8A1C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 800C8A20  EC 01 00 2A */	fadds f0, f1, f0
/* 800C8A24  D0 1F 34 CC */	stfs f0, 0x34cc(r31)
/* 800C8A28  48 00 01 20 */	b lbl_800C8B48
lbl_800C8A2C:
/* 800C8A2C  C0 5F 34 CC */	lfs f2, 0x34cc(r31)
/* 800C8A30  C0 22 93 A0 */	lfs f1, lit_9054(r2)
/* 800C8A34  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800C8A38  EC 00 F8 28 */	fsubs f0, f0, f31
/* 800C8A3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C8A40  EC 02 00 2A */	fadds f0, f2, f0
/* 800C8A44  D0 1F 34 CC */	stfs f0, 0x34cc(r31)
/* 800C8A48  48 00 01 00 */	b lbl_800C8B48
lbl_800C8A4C:
/* 800C8A4C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C8A50  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800C8A54  41 82 00 F4 */	beq lbl_800C8B48
/* 800C8A58  7F E3 FB 78 */	mr r3, r31
/* 800C8A5C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010800@ha */
/* 800C8A60  38 84 08 00 */	addi r4, r4, 0x0800 /* 0x00010800@l */
/* 800C8A64  48 00 77 29 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C8A68  28 03 00 00 */	cmplwi r3, 0
/* 800C8A6C  40 82 00 DC */	bne lbl_800C8B48
/* 800C8A70  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C8A74  28 00 01 3D */	cmplwi r0, 0x13d
/* 800C8A78  41 82 00 D0 */	beq lbl_800C8B48
/* 800C8A7C  C0 22 93 A4 */	lfs f1, lit_9138(r2)
/* 800C8A80  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 800C8A84  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800C8A88  41 82 00 C0 */	beq lbl_800C8B48
/* 800C8A8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C8A90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C8A94  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 800C8A98  7F A3 EB 78 */	mr r3, r29
/* 800C8A9C  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800C8AA0  4B FA BB C1 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800C8AA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C8AA8  41 82 00 A0 */	beq lbl_800C8B48
/* 800C8AAC  7F A3 EB 78 */	mr r3, r29
/* 800C8AB0  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800C8AB4  4B FA C0 09 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 800C8AB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C8ABC  41 82 00 8C */	beq lbl_800C8B48
/* 800C8AC0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C8AC4  28 00 00 A4 */	cmplwi r0, 0xa4
/* 800C8AC8  40 82 00 0C */	bne lbl_800C8AD4
/* 800C8ACC  3B 80 00 01 */	li r28, 1
/* 800C8AD0  48 00 00 10 */	b lbl_800C8AE0
lbl_800C8AD4:
/* 800C8AD4  38 7F 19 70 */	addi r3, r31, 0x1970
/* 800C8AD8  48 07 89 2D */	bl ChkGroundHit__9dBgS_AcchCFv
/* 800C8ADC  7C 7C 1B 78 */	mr r28, r3
lbl_800C8AE0:
/* 800C8AE0  C3 FF 04 D4 */	lfs f31, 0x4d4(r31)
/* 800C8AE4  7F A3 EB 78 */	mr r3, r29
/* 800C8AE8  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800C8AEC  7F 85 E3 78 */	mr r5, r28
/* 800C8AF0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 800C8AF4  38 FF 04 DC */	addi r7, r31, 0x4dc
/* 800C8AF8  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 800C8AFC  39 20 00 00 */	li r9, 0
/* 800C8B00  39 40 00 00 */	li r10, 0
/* 800C8B04  4B FA CC 71 */	bl MoveBgCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyzbb
/* 800C8B08  7F A3 EB 78 */	mr r3, r29
/* 800C8B0C  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800C8B10  7F 85 E3 78 */	mr r5, r28
/* 800C8B14  38 DF 04 BC */	addi r6, r31, 0x4bc
/* 800C8B18  38 E0 00 00 */	li r7, 0
/* 800C8B1C  39 00 00 00 */	li r8, 0
/* 800C8B20  39 20 00 00 */	li r9, 0
/* 800C8B24  39 40 00 00 */	li r10, 0
/* 800C8B28  4B FA CC 4D */	bl MoveBgCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyzbb
/* 800C8B2C  C0 5F 34 CC */	lfs f2, 0x34cc(r31)
/* 800C8B30  C0 22 93 A0 */	lfs f1, lit_9054(r2)
/* 800C8B34  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800C8B38  EC 00 F8 28 */	fsubs f0, f0, f31
/* 800C8B3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C8B40  EC 02 00 2A */	fadds f0, f2, f0
/* 800C8B44  D0 1F 34 CC */	stfs f0, 0x34cc(r31)
lbl_800C8B48:
/* 800C8B48  38 7F 37 98 */	addi r3, r31, 0x3798
/* 800C8B4C  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 800C8B50  4B FC EC 89 */	bl __as__4cXyzFRC4cXyz
/* 800C8B54  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C8B58  B0 1F 2F E6 */	sth r0, 0x2fe6(r31)
/* 800C8B5C  A8 1F 2F E0 */	lha r0, 0x2fe0(r31)
/* 800C8B60  B0 1F 30 7C */	sth r0, 0x307c(r31)
/* 800C8B64  C0 1F 33 AC */	lfs f0, 0x33ac(r31)
/* 800C8B68  D0 1F 33 A4 */	stfs f0, 0x33a4(r31)
/* 800C8B6C  7F E3 FB 78 */	mr r3, r31
/* 800C8B70  3C 80 08 00 */	lis r4, 0x800
/* 800C8B74  48 07 88 85 */	bl checkResetFlg0__9daPy_py_cCFQ29daPy_py_c10daPy_RFLG0
/* 800C8B78  28 03 00 00 */	cmplwi r3, 0
/* 800C8B7C  41 82 00 1C */	beq lbl_800C8B98
/* 800C8B80  7F E3 FB 78 */	mr r3, r31
/* 800C8B84  48 00 83 49 */	bl checkCutDashAnime__9daAlink_cCFv
/* 800C8B88  2C 03 00 00 */	cmpwi r3, 0
/* 800C8B8C  40 82 00 0C */	bne lbl_800C8B98
/* 800C8B90  38 00 00 00 */	li r0, 0
/* 800C8B94  98 1F 05 68 */	stb r0, 0x568(r31)
lbl_800C8B98:
/* 800C8B98  38 00 00 00 */	li r0, 0
/* 800C8B9C  90 1F 05 80 */	stw r0, 0x580(r31)
/* 800C8BA0  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800C8BA4  38 6D 8A 49 */	la r3, struct_80450FC8+0x1(r13) /* 80450FC9-_SDA_BASE_ */
/* 800C8BA8  48 07 8F 41 */	bl func_80141AE8
/* 800C8BAC  80 7F 21 80 */	lwz r3, 0x2180(r31)
/* 800C8BB0  48 00 75 D1 */	bl offSetFlg__16daAlink_matAnm_cFv
/* 800C8BB4  80 7F 21 84 */	lwz r3, 0x2184(r31)
/* 800C8BB8  48 00 75 C9 */	bl offSetFlg__16daAlink_matAnm_cFv
/* 800C8BBC  38 00 00 00 */	li r0, 0
/* 800C8BC0  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800C8BC4  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800C8BC8  38 00 00 06 */	li r0, 6
/* 800C8BCC  98 1F 2F C1 */	stb r0, 0x2fc1(r31)
/* 800C8BD0  48 07 88 09 */	bl checkSwordGet__9daPy_py_cFv
/* 800C8BD4  2C 03 00 00 */	cmpwi r3, 0
/* 800C8BD8  40 82 00 20 */	bne lbl_800C8BF8
/* 800C8BDC  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C8BE0  28 00 01 03 */	cmplwi r0, 0x103
/* 800C8BE4  40 82 00 14 */	bne lbl_800C8BF8
/* 800C8BE8  7F E3 FB 78 */	mr r3, r31
/* 800C8BEC  38 80 00 00 */	li r4, 0
/* 800C8BF0  38 A0 00 00 */	li r5, 0
/* 800C8BF4  4B FF 86 E9 */	bl deleteEquipItem__9daAlink_cFii
lbl_800C8BF8:
/* 800C8BF8  38 00 00 00 */	li r0, 0
/* 800C8BFC  98 1F 2F AE */	stb r0, 0x2fae(r31)
/* 800C8C00  7F E3 FB 78 */	mr r3, r31
/* 800C8C04  38 80 00 00 */	li r4, 0
/* 800C8C08  4B FE A6 49 */	bl setDoStatus__9daAlink_cFUc
/* 800C8C0C  7F E3 FB 78 */	mr r3, r31
/* 800C8C10  38 80 00 00 */	li r4, 0
/* 800C8C14  4B FE A6 0D */	bl setRStatus__9daAlink_cFUc
/* 800C8C18  7F E3 FB 78 */	mr r3, r31
/* 800C8C1C  38 80 00 00 */	li r4, 0
/* 800C8C20  38 A0 00 00 */	li r5, 0
/* 800C8C24  48 00 75 41 */	bl set3DStatus__9daAlink_cFUcUc
/* 800C8C28  7F E3 FB 78 */	mr r3, r31
/* 800C8C2C  38 80 00 00 */	li r4, 0
/* 800C8C30  48 00 75 1D */	bl setMidnaTalkStatus__9daAlink_cFUc
/* 800C8C34  7F E3 FB 78 */	mr r3, r31
/* 800C8C38  48 07 87 95 */	bl checkWolf__9daPy_py_cCFv
/* 800C8C3C  28 03 00 00 */	cmplwi r3, 0
/* 800C8C40  41 82 00 4C */	beq lbl_800C8C8C
/* 800C8C44  7F E3 FB 78 */	mr r3, r31
/* 800C8C48  38 80 00 03 */	li r4, 3
/* 800C8C4C  4B FE A6 4D */	bl setBStatus__9daAlink_cFUc
/* 800C8C50  7F E3 FB 78 */	mr r3, r31
/* 800C8C54  38 80 00 00 */	li r4, 0
/* 800C8C58  48 05 F0 F9 */	bl setWolfDigStatus__9daAlink_cFUc
/* 800C8C5C  38 60 43 08 */	li r3, 0x4308
/* 800C8C60  48 07 87 3D */	bl dComIfGs_isEventBit__FUs
/* 800C8C64  2C 03 00 00 */	cmpwi r3, 0
/* 800C8C68  41 82 00 14 */	beq lbl_800C8C7C
/* 800C8C6C  7F E3 FB 78 */	mr r3, r31
/* 800C8C70  38 80 00 4E */	li r4, 0x4e
/* 800C8C74  48 05 F0 A1 */	bl setWolfSenceStatus__9daAlink_cFUc
/* 800C8C78  48 00 00 80 */	b lbl_800C8CF8
lbl_800C8C7C:
/* 800C8C7C  7F E3 FB 78 */	mr r3, r31
/* 800C8C80  38 80 00 00 */	li r4, 0
/* 800C8C84  48 05 F0 91 */	bl setWolfSenceStatus__9daAlink_cFUc
/* 800C8C88  48 00 00 70 */	b lbl_800C8CF8
lbl_800C8C8C:
/* 800C8C8C  7F E3 FB 78 */	mr r3, r31
/* 800C8C90  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800C8C94  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800C8C98  7D 89 03 A6 */	mtctr r12
/* 800C8C9C  4E 80 04 21 */	bctrl 
/* 800C8CA0  28 03 00 00 */	cmplwi r3, 0
/* 800C8CA4  41 82 00 2C */	beq lbl_800C8CD0
/* 800C8CA8  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C8CAC  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C8CB0  38 63 00 7E */	addi r3, r3, 0x7e
/* 800C8CB4  4B FD 4D AD */	bl checkStageName__9daAlink_cFPCc
/* 800C8CB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C8CBC  41 82 00 14 */	beq lbl_800C8CD0
/* 800C8CC0  7F E3 FB 78 */	mr r3, r31
/* 800C8CC4  38 80 00 4F */	li r4, 0x4f
/* 800C8CC8  4B FE A5 D1 */	bl setBStatus__9daAlink_cFUc
/* 800C8CCC  48 00 00 2C */	b lbl_800C8CF8
lbl_800C8CD0:
/* 800C8CD0  48 07 87 09 */	bl checkSwordGet__9daPy_py_cFv
/* 800C8CD4  2C 03 00 00 */	cmpwi r3, 0
/* 800C8CD8  41 82 00 14 */	beq lbl_800C8CEC
/* 800C8CDC  7F E3 FB 78 */	mr r3, r31
/* 800C8CE0  38 80 00 26 */	li r4, 0x26
/* 800C8CE4  4B FE A5 B5 */	bl setBStatus__9daAlink_cFUc
/* 800C8CE8  48 00 00 10 */	b lbl_800C8CF8
lbl_800C8CEC:
/* 800C8CEC  7F E3 FB 78 */	mr r3, r31
/* 800C8CF0  38 80 00 00 */	li r4, 0
/* 800C8CF4  4B FE A5 A5 */	bl setBStatus__9daAlink_cFUc
lbl_800C8CF8:
/* 800C8CF8  38 00 00 00 */	li r0, 0
/* 800C8CFC  98 1F 2F 91 */	stb r0, 0x2f91(r31)
/* 800C8D00  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C8D04  28 00 00 B5 */	cmplwi r0, 0xb5
/* 800C8D08  40 82 00 1C */	bne lbl_800C8D24
/* 800C8D0C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 800C8D10  48 07 86 79 */	bl checkCommandCatch__11dEvt_info_cFv
/* 800C8D14  2C 03 00 00 */	cmpwi r3, 0
/* 800C8D18  41 82 00 0C */	beq lbl_800C8D24
/* 800C8D1C  38 7F 06 04 */	addi r3, r31, 0x604
/* 800C8D20  48 07 86 5D */	bl setSpecialDemoType__11daPy_demo_cFv
lbl_800C8D24:
/* 800C8D24  38 7F 28 0C */	addi r3, r31, 0x280c
/* 800C8D28  48 09 5F 21 */	bl setActor__16daPy_actorKeep_cFv
/* 800C8D2C  38 7F 28 14 */	addi r3, r31, 0x2814
/* 800C8D30  48 09 5F 19 */	bl setActor__16daPy_actorKeep_cFv
/* 800C8D34  7F E3 FB 78 */	mr r3, r31
/* 800C8D38  38 80 00 58 */	li r4, 0x58
/* 800C8D3C  48 07 87 85 */	bl checkNoResetFlg2__9daPy_py_cCFQ29daPy_py_c9daPy_FLG2
/* 800C8D40  28 03 00 00 */	cmplwi r3, 0
/* 800C8D44  41 82 00 28 */	beq lbl_800C8D6C
/* 800C8D48  38 7F 28 1C */	addi r3, r31, 0x281c
/* 800C8D4C  48 09 5E FD */	bl setActor__16daPy_actorKeep_cFv
/* 800C8D50  80 1F 28 20 */	lwz r0, 0x2820(r31)
/* 800C8D54  28 00 00 00 */	cmplwi r0, 0
/* 800C8D58  40 82 00 1C */	bne lbl_800C8D74
/* 800C8D5C  7F E3 FB 78 */	mr r3, r31
/* 800C8D60  38 80 00 58 */	li r4, 0x58
/* 800C8D64  48 07 86 09 */	bl offNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2
/* 800C8D68  48 00 00 0C */	b lbl_800C8D74
lbl_800C8D6C:
/* 800C8D6C  38 7F 28 1C */	addi r3, r31, 0x281c
/* 800C8D70  48 09 5F 8D */	bl clearData__16daPy_actorKeep_cFv
lbl_800C8D74:
/* 800C8D74  38 7F 28 44 */	addi r3, r31, 0x2844
/* 800C8D78  48 09 5E D1 */	bl setActor__16daPy_actorKeep_cFv
/* 800C8D7C  38 7F 28 34 */	addi r3, r31, 0x2834
/* 800C8D80  48 09 5E C9 */	bl setActor__16daPy_actorKeep_cFv
/* 800C8D84  38 7F 28 3C */	addi r3, r31, 0x283c
/* 800C8D88  48 09 5E C1 */	bl setActor__16daPy_actorKeep_cFv
/* 800C8D8C  80 7F 28 40 */	lwz r3, 0x2840(r31)
/* 800C8D90  28 03 00 00 */	cmplwi r3, 0
/* 800C8D94  41 82 00 08 */	beq lbl_800C8D9C
/* 800C8D98  48 07 8C FD */	bl setControllActorData__8daCrod_cFv
lbl_800C8D9C:
/* 800C8D9C  38 7F 28 2C */	addi r3, r31, 0x282c
/* 800C8DA0  48 09 5E A9 */	bl setActor__16daPy_actorKeep_cFv
/* 800C8DA4  38 7F 28 4C */	addi r3, r31, 0x284c
/* 800C8DA8  48 09 5E A1 */	bl setActor__16daPy_actorKeep_cFv
/* 800C8DAC  38 7F 28 5C */	addi r3, r31, 0x285c
/* 800C8DB0  48 09 5E 99 */	bl setActor__16daPy_actorKeep_cFv
/* 800C8DB4  7F E3 FB 78 */	mr r3, r31
/* 800C8DB8  48 02 AF A1 */	bl checkFishingRodAndLureItem__9daAlink_cCFv
/* 800C8DBC  2C 03 00 00 */	cmpwi r3, 0
/* 800C8DC0  41 82 00 3C */	beq lbl_800C8DFC
/* 800C8DC4  80 1F 28 28 */	lwz r0, 0x2828(r31)
/* 800C8DC8  28 00 00 00 */	cmplwi r0, 0
/* 800C8DCC  40 82 00 30 */	bne lbl_800C8DFC
/* 800C8DD0  80 1F 28 24 */	lwz r0, 0x2824(r31)
/* 800C8DD4  90 01 00 08 */	stw r0, 8(r1)
/* 800C8DD8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 800C8DDC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 800C8DE0  38 81 00 08 */	addi r4, r1, 8
/* 800C8DE4  4B F5 0A 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800C8DE8  7C 64 1B 79 */	or. r4, r3, r3
/* 800C8DEC  41 82 00 18 */	beq lbl_800C8E04
/* 800C8DF0  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800C8DF4  48 09 5E C5 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800C8DF8  48 00 00 0C */	b lbl_800C8E04
lbl_800C8DFC:
/* 800C8DFC  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800C8E00  48 09 5E 49 */	bl setActor__16daPy_actorKeep_cFv
lbl_800C8E04:
/* 800C8E04  7F E3 FB 78 */	mr r3, r31
/* 800C8E08  48 07 85 C5 */	bl checkWolf__9daPy_py_cCFv
/* 800C8E0C  28 03 00 00 */	cmplwi r3, 0
/* 800C8E10  41 82 00 0C */	beq lbl_800C8E1C
/* 800C8E14  7F E3 FB 78 */	mr r3, r31
/* 800C8E18  48 07 02 31 */	bl checkWolfLockData__9daAlink_cFv
lbl_800C8E1C:
/* 800C8E1C  7F E3 FB 78 */	mr r3, r31
/* 800C8E20  4B FE A0 85 */	bl setAtnList__9daAlink_cFv
/* 800C8E24  7F E3 FB 78 */	mr r3, r31
/* 800C8E28  48 04 E3 CD */	bl setDemoData__9daAlink_cFv
/* 800C8E2C  7F E3 FB 78 */	mr r3, r31
/* 800C8E30  4B FE 98 ED */	bl setStickData__9daAlink_cFv
/* 800C8E34  A8 1F 30 8E */	lha r0, 0x308e(r31)
/* 800C8E38  2C 00 00 00 */	cmpwi r0, 0
/* 800C8E3C  40 80 00 0C */	bge lbl_800C8E48
/* 800C8E40  38 00 00 00 */	li r0, 0
/* 800C8E44  B0 1F 30 8E */	sth r0, 0x308e(r31)
lbl_800C8E48:
/* 800C8E48  7F E3 FB 78 */	mr r3, r31
/* 800C8E4C  48 03 8C F9 */	bl checkOxygenTimer__9daAlink_cFv
/* 800C8E50  88 7F 2F CE */	lbz r3, 0x2fce(r31)
/* 800C8E54  28 03 00 00 */	cmplwi r3, 0
/* 800C8E58  41 82 00 0C */	beq lbl_800C8E64
/* 800C8E5C  38 03 FF FF */	addi r0, r3, -1
/* 800C8E60  98 1F 2F CE */	stb r0, 0x2fce(r31)
lbl_800C8E64:
/* 800C8E64  88 7F 2F CD */	lbz r3, 0x2fcd(r31)
/* 800C8E68  28 03 00 00 */	cmplwi r3, 0
/* 800C8E6C  41 82 00 0C */	beq lbl_800C8E78
/* 800C8E70  38 03 FF FF */	addi r0, r3, -1
/* 800C8E74  98 1F 2F CD */	stb r0, 0x2fcd(r31)
lbl_800C8E78:
/* 800C8E78  A8 7F 30 00 */	lha r3, 0x3000(r31)
/* 800C8E7C  2C 03 00 00 */	cmpwi r3, 0
/* 800C8E80  41 82 00 0C */	beq lbl_800C8E8C
/* 800C8E84  38 03 FF FF */	addi r0, r3, -1
/* 800C8E88  B0 1F 30 00 */	sth r0, 0x3000(r31)
lbl_800C8E8C:
/* 800C8E8C  A0 7F 30 FC */	lhz r3, 0x30fc(r31)
/* 800C8E90  28 03 00 00 */	cmplwi r3, 0
/* 800C8E94  41 82 00 0C */	beq lbl_800C8EA0
/* 800C8E98  38 03 FF FF */	addi r0, r3, -1
/* 800C8E9C  B0 1F 30 FC */	sth r0, 0x30fc(r31)
lbl_800C8EA0:
/* 800C8EA0  88 7F 2F B4 */	lbz r3, 0x2fb4(r31)
/* 800C8EA4  28 03 00 00 */	cmplwi r3, 0
/* 800C8EA8  41 82 00 0C */	beq lbl_800C8EB4
/* 800C8EAC  38 03 FF FF */	addi r0, r3, -1
/* 800C8EB0  98 1F 2F B4 */	stb r0, 0x2fb4(r31)
lbl_800C8EB4:
/* 800C8EB4  A8 7F 30 A4 */	lha r3, 0x30a4(r31)
/* 800C8EB8  2C 03 00 00 */	cmpwi r3, 0
/* 800C8EBC  41 82 00 0C */	beq lbl_800C8EC8
/* 800C8EC0  38 03 FF FF */	addi r0, r3, -1
/* 800C8EC4  B0 1F 30 A4 */	sth r0, 0x30a4(r31)
lbl_800C8EC8:
/* 800C8EC8  A8 7F 30 A6 */	lha r3, 0x30a6(r31)
/* 800C8ECC  2C 03 00 00 */	cmpwi r3, 0
/* 800C8ED0  41 82 00 0C */	beq lbl_800C8EDC
/* 800C8ED4  38 03 FF FF */	addi r0, r3, -1
/* 800C8ED8  B0 1F 30 A6 */	sth r0, 0x30a6(r31)
lbl_800C8EDC:
/* 800C8EDC  A8 7F 30 EC */	lha r3, 0x30ec(r31)
/* 800C8EE0  2C 03 00 00 */	cmpwi r3, 0
/* 800C8EE4  41 82 00 0C */	beq lbl_800C8EF0
/* 800C8EE8  38 03 FF FF */	addi r0, r3, -1
/* 800C8EEC  B0 1F 30 EC */	sth r0, 0x30ec(r31)
lbl_800C8EF0:
/* 800C8EF0  A8 7F 30 F4 */	lha r3, 0x30f4(r31)
/* 800C8EF4  2C 03 00 00 */	cmpwi r3, 0
/* 800C8EF8  41 82 00 0C */	beq lbl_800C8F04
/* 800C8EFC  38 03 FF FF */	addi r0, r3, -1
/* 800C8F00  B0 1F 30 F4 */	sth r0, 0x30f4(r31)
lbl_800C8F04:
/* 800C8F04  A8 7F 31 00 */	lha r3, 0x3100(r31)
/* 800C8F08  2C 03 00 00 */	cmpwi r3, 0
/* 800C8F0C  41 82 00 0C */	beq lbl_800C8F18
/* 800C8F10  38 03 FF FF */	addi r0, r3, -1
/* 800C8F14  B0 1F 31 00 */	sth r0, 0x3100(r31)
lbl_800C8F18:
/* 800C8F18  88 7F 2F C4 */	lbz r3, 0x2fc4(r31)
/* 800C8F1C  28 03 00 00 */	cmplwi r3, 0
/* 800C8F20  41 82 00 0C */	beq lbl_800C8F2C
/* 800C8F24  38 03 FF FF */	addi r0, r3, -1
/* 800C8F28  98 1F 2F C4 */	stb r0, 0x2fc4(r31)
lbl_800C8F2C:
/* 800C8F2C  A8 7F 30 D2 */	lha r3, 0x30d2(r31)
/* 800C8F30  2C 03 00 00 */	cmpwi r3, 0
/* 800C8F34  41 82 00 0C */	beq lbl_800C8F40
/* 800C8F38  38 03 FF FF */	addi r0, r3, -1
/* 800C8F3C  B0 1F 30 D2 */	sth r0, 0x30d2(r31)
lbl_800C8F40:
/* 800C8F40  A8 7F 30 D0 */	lha r3, 0x30d0(r31)
/* 800C8F44  2C 03 00 00 */	cmpwi r3, 0
/* 800C8F48  41 82 00 10 */	beq lbl_800C8F58
/* 800C8F4C  38 03 FF FF */	addi r0, r3, -1
/* 800C8F50  B0 1F 30 D0 */	sth r0, 0x30d0(r31)
/* 800C8F54  48 00 00 10 */	b lbl_800C8F64
lbl_800C8F58:
/* 800C8F58  7F E3 FB 78 */	mr r3, r31
/* 800C8F5C  3C 80 00 40 */	lis r4, 0x40
/* 800C8F60  48 07 83 FD */	bl offNoResetFlg1__9daPy_py_cFQ29daPy_py_c9daPy_FLG1
lbl_800C8F64:
/* 800C8F64  88 7F 2F D2 */	lbz r3, 0x2fd2(r31)
/* 800C8F68  28 03 00 00 */	cmplwi r3, 0
/* 800C8F6C  41 82 00 0C */	beq lbl_800C8F78
/* 800C8F70  38 03 FF FF */	addi r0, r3, -1
/* 800C8F74  98 1F 2F D2 */	stb r0, 0x2fd2(r31)
lbl_800C8F78:
/* 800C8F78  88 7F 2F D3 */	lbz r3, 0x2fd3(r31)
/* 800C8F7C  28 03 00 00 */	cmplwi r3, 0
/* 800C8F80  41 82 00 28 */	beq lbl_800C8FA8
/* 800C8F84  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C8F88  28 00 00 B3 */	cmplwi r0, 0xb3
/* 800C8F8C  41 82 00 1C */	beq lbl_800C8FA8
/* 800C8F90  28 00 00 A0 */	cmplwi r0, 0xa0
/* 800C8F94  41 82 00 14 */	beq lbl_800C8FA8
/* 800C8F98  28 00 00 4C */	cmplwi r0, 0x4c
/* 800C8F9C  41 82 00 0C */	beq lbl_800C8FA8
/* 800C8FA0  38 03 FF FF */	addi r0, r3, -1
/* 800C8FA4  98 1F 2F D3 */	stb r0, 0x2fd3(r31)
lbl_800C8FA8:
/* 800C8FA8  88 7F 2F D4 */	lbz r3, 0x2fd4(r31)
/* 800C8FAC  28 03 00 00 */	cmplwi r3, 0
/* 800C8FB0  41 82 00 2C */	beq lbl_800C8FDC
/* 800C8FB4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C8FB8  28 00 00 1D */	cmplwi r0, 0x1d
/* 800C8FBC  41 82 00 20 */	beq lbl_800C8FDC
/* 800C8FC0  38 03 FF FF */	addi r0, r3, -1
/* 800C8FC4  98 1F 2F D4 */	stb r0, 0x2fd4(r31)
/* 800C8FC8  88 1F 2F D4 */	lbz r0, 0x2fd4(r31)
/* 800C8FCC  28 00 00 00 */	cmplwi r0, 0
/* 800C8FD0  40 82 00 0C */	bne lbl_800C8FDC
/* 800C8FD4  38 00 00 00 */	li r0, 0
/* 800C8FD8  98 1F 2F D5 */	stb r0, 0x2fd5(r31)
lbl_800C8FDC:
/* 800C8FDC  A8 1F 30 AC */	lha r0, 0x30ac(r31)
/* 800C8FE0  2C 00 00 00 */	cmpwi r0, 0
/* 800C8FE4  41 82 02 CC */	beq lbl_800C92B0
/* 800C8FE8  7F E3 FB 78 */	mr r3, r31
/* 800C8FEC  4B F5 2B 29 */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 800C8FF0  7C 7D 1B 78 */	mr r29, r3
/* 800C8FF4  7F E3 FB 78 */	mr r3, r31
/* 800C8FF8  48 04 CC 29 */	bl checkEventRun__9daAlink_cCFv
/* 800C8FFC  2C 03 00 00 */	cmpwi r3, 0
/* 800C9000  41 82 00 14 */	beq lbl_800C9014
/* 800C9004  48 07 83 49 */	bl dComIfGp_getEventManager__Fv
/* 800C9008  4B F7 F3 E1 */	bl getRunEventName__16dEvent_manager_cFv
/* 800C900C  7C 7C 1B 78 */	mr r28, r3
/* 800C9010  48 00 00 08 */	b lbl_800C9018
lbl_800C9014:
/* 800C9014  3B 80 00 00 */	li r28, 0
lbl_800C9018:
/* 800C9018  28 1C 00 00 */	cmplwi r28, 0
/* 800C901C  41 82 01 5C */	beq lbl_800C9178
/* 800C9020  7F 83 E3 78 */	mr r3, r28
/* 800C9024  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C9028  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C902C  38 84 05 43 */	addi r4, r4, 0x543
/* 800C9030  48 29 F9 65 */	bl strcmp
/* 800C9034  2C 03 00 00 */	cmpwi r3, 0
/* 800C9038  41 82 01 2C */	beq lbl_800C9164
/* 800C903C  7F 83 E3 78 */	mr r3, r28
/* 800C9040  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C9044  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C9048  38 84 05 4D */	addi r4, r4, 0x54d
/* 800C904C  48 29 F9 49 */	bl strcmp
/* 800C9050  2C 03 00 00 */	cmpwi r3, 0
/* 800C9054  41 82 01 10 */	beq lbl_800C9164
/* 800C9058  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C905C  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C9060  38 63 00 A5 */	addi r3, r3, 0xa5
/* 800C9064  4B FD 49 FD */	bl checkStageName__9daAlink_cFPCc
/* 800C9068  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C906C  41 82 00 3C */	beq lbl_800C90A8
/* 800C9070  7F 83 E3 78 */	mr r3, r28
/* 800C9074  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C9078  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C907C  38 84 05 59 */	addi r4, r4, 0x559
/* 800C9080  48 29 F9 15 */	bl strcmp
/* 800C9084  2C 03 00 00 */	cmpwi r3, 0
/* 800C9088  41 82 00 DC */	beq lbl_800C9164
/* 800C908C  7F 83 E3 78 */	mr r3, r28
/* 800C9090  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C9094  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C9098  38 84 05 69 */	addi r4, r4, 0x569
/* 800C909C  48 29 F8 F9 */	bl strcmp
/* 800C90A0  2C 03 00 00 */	cmpwi r3, 0
/* 800C90A4  41 82 00 C0 */	beq lbl_800C9164
lbl_800C90A8:
/* 800C90A8  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C90AC  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C90B0  38 63 05 72 */	addi r3, r3, 0x572
/* 800C90B4  4B FD 49 AD */	bl checkStageName__9daAlink_cFPCc
/* 800C90B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C90BC  41 82 00 74 */	beq lbl_800C9130
/* 800C90C0  7F 83 E3 78 */	mr r3, r28
/* 800C90C4  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C90C8  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C90CC  38 84 05 7A */	addi r4, r4, 0x57a
/* 800C90D0  48 29 F8 C5 */	bl strcmp
/* 800C90D4  2C 03 00 00 */	cmpwi r3, 0
/* 800C90D8  41 82 00 8C */	beq lbl_800C9164
/* 800C90DC  7F 83 E3 78 */	mr r3, r28
/* 800C90E0  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C90E4  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C90E8  38 84 05 89 */	addi r4, r4, 0x589
/* 800C90EC  48 29 F8 A9 */	bl strcmp
/* 800C90F0  2C 03 00 00 */	cmpwi r3, 0
/* 800C90F4  41 82 00 70 */	beq lbl_800C9164
/* 800C90F8  7F 83 E3 78 */	mr r3, r28
/* 800C90FC  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C9100  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C9104  38 84 05 59 */	addi r4, r4, 0x559
/* 800C9108  48 29 F8 8D */	bl strcmp
/* 800C910C  2C 03 00 00 */	cmpwi r3, 0
/* 800C9110  41 82 00 54 */	beq lbl_800C9164
/* 800C9114  7F 83 E3 78 */	mr r3, r28
/* 800C9118  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C911C  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C9120  38 84 05 4D */	addi r4, r4, 0x54d
/* 800C9124  48 29 F8 71 */	bl strcmp
/* 800C9128  2C 03 00 00 */	cmpwi r3, 0
/* 800C912C  41 82 00 38 */	beq lbl_800C9164
lbl_800C9130:
/* 800C9130  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C9134  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C9138  38 63 01 06 */	addi r3, r3, 0x106
/* 800C913C  4B FD 49 25 */	bl checkStageName__9daAlink_cFPCc
/* 800C9140  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C9144  41 82 00 34 */	beq lbl_800C9178
/* 800C9148  7F 83 E3 78 */	mr r3, r28
/* 800C914C  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C9150  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C9154  38 84 05 98 */	addi r4, r4, 0x598
/* 800C9158  48 29 F8 3D */	bl strcmp
/* 800C915C  2C 03 00 00 */	cmpwi r3, 0
/* 800C9160  40 82 00 18 */	bne lbl_800C9178
lbl_800C9164:
/* 800C9164  38 7E 23 A0 */	addi r3, r30, 0x23a0
/* 800C9168  A8 63 00 0C */	lha r3, 0xc(r3)
/* 800C916C  38 03 00 01 */	addi r0, r3, 1
/* 800C9170  B0 1F 30 AC */	sth r0, 0x30ac(r31)
/* 800C9174  48 00 01 3C */	b lbl_800C92B0
lbl_800C9178:
/* 800C9178  7F E3 FB 78 */	mr r3, r31
/* 800C917C  38 80 02 00 */	li r4, 0x200
/* 800C9180  48 07 81 C1 */	bl checkEndResetFlg1__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG1
/* 800C9184  28 03 00 00 */	cmplwi r3, 0
/* 800C9188  40 82 00 A0 */	bne lbl_800C9228
/* 800C918C  4B FF 71 85 */	bl checkDungeon__9daAlink_cFv
/* 800C9190  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C9194  41 82 00 14 */	beq lbl_800C91A8
/* 800C9198  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 800C919C  48 07 82 B5 */	bl checkCommandDoor__11dEvt_info_cFv
/* 800C91A0  2C 03 00 00 */	cmpwi r3, 0
/* 800C91A4  40 82 00 84 */	bne lbl_800C9228
lbl_800C91A8:
/* 800C91A8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C91AC  28 00 01 39 */	cmplwi r0, 0x139
/* 800C91B0  41 82 00 78 */	beq lbl_800C9228
/* 800C91B4  28 00 01 32 */	cmplwi r0, 0x132
/* 800C91B8  41 82 00 70 */	beq lbl_800C9228
/* 800C91BC  28 00 01 33 */	cmplwi r0, 0x133
/* 800C91C0  41 82 00 68 */	beq lbl_800C9228
/* 800C91C4  7F E3 FB 78 */	mr r3, r31
/* 800C91C8  38 80 40 00 */	li r4, 0x4000
/* 800C91CC  48 07 82 45 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C91D0  28 03 00 00 */	cmplwi r3, 0
/* 800C91D4  40 82 00 54 */	bne lbl_800C9228
/* 800C91D8  38 60 00 00 */	li r3, 0
/* 800C91DC  3C 80 01 00 */	lis r4, 0x100
/* 800C91E0  48 07 81 45 */	bl dComIfGp_checkPlayerStatus1__FiUl
/* 800C91E4  28 03 00 00 */	cmplwi r3, 0
/* 800C91E8  40 82 00 40 */	bne lbl_800C9228
/* 800C91EC  7F E3 FB 78 */	mr r3, r31
/* 800C91F0  48 04 CA 31 */	bl checkEventRun__9daAlink_cCFv
/* 800C91F4  2C 03 00 00 */	cmpwi r3, 0
/* 800C91F8  41 82 00 18 */	beq lbl_800C9210
/* 800C91FC  28 1D 00 00 */	cmplwi r29, 0
/* 800C9200  41 82 00 10 */	beq lbl_800C9210
/* 800C9204  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 800C9208  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 800C920C  40 82 00 1C */	bne lbl_800C9228
lbl_800C9210:
/* 800C9210  48 07 81 3D */	bl dComIfGp_getEventManager__Fv
/* 800C9214  4B F7 F1 D5 */	bl getRunEventName__16dEvent_manager_cFv
/* 800C9218  38 9E 23 E0 */	addi r4, r30, 0x23e0
/* 800C921C  48 29 F7 79 */	bl strcmp
/* 800C9220  2C 03 00 00 */	cmpwi r3, 0
/* 800C9224  40 82 00 14 */	bne lbl_800C9238
lbl_800C9228:
/* 800C9228  38 7E 23 A0 */	addi r3, r30, 0x23a0
/* 800C922C  A8 03 00 0C */	lha r0, 0xc(r3)
/* 800C9230  B0 1F 30 AC */	sth r0, 0x30ac(r31)
/* 800C9234  48 00 00 7C */	b lbl_800C92B0
lbl_800C9238:
/* 800C9238  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800C923C  28 00 00 00 */	cmplwi r0, 0
/* 800C9240  40 82 00 18 */	bne lbl_800C9258
/* 800C9244  38 60 00 00 */	li r3, 0
/* 800C9248  38 80 20 00 */	li r4, 0x2000
/* 800C924C  48 07 80 BD */	bl dComIfGp_checkPlayerStatus0__FiUl
/* 800C9250  28 03 00 00 */	cmplwi r3, 0
/* 800C9254  41 82 00 18 */	beq lbl_800C926C
lbl_800C9258:
/* 800C9258  38 7E 23 A0 */	addi r3, r30, 0x23a0
/* 800C925C  A8 63 00 0C */	lha r3, 0xc(r3)
/* 800C9260  38 03 FF FF */	addi r0, r3, -1
/* 800C9264  B0 1F 30 AC */	sth r0, 0x30ac(r31)
/* 800C9268  48 00 00 48 */	b lbl_800C92B0
lbl_800C926C:
/* 800C926C  48 07 80 8D */	bl dComIfGp_getEvent__Fv
/* 800C9270  48 07 80 65 */	bl isOrderOK__14dEvt_control_cFv
/* 800C9274  2C 03 00 00 */	cmpwi r3, 0
/* 800C9278  40 82 00 30 */	bne lbl_800C92A8
/* 800C927C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C9280  28 00 01 48 */	cmplwi r0, 0x148
/* 800C9284  41 82 00 24 */	beq lbl_800C92A8
/* 800C9288  A8 9F 30 AC */	lha r4, 0x30ac(r31)
/* 800C928C  38 7E 23 A0 */	addi r3, r30, 0x23a0
/* 800C9290  A8 03 00 0C */	lha r0, 0xc(r3)
/* 800C9294  7C 04 00 00 */	cmpw r4, r0
/* 800C9298  41 81 00 10 */	bgt lbl_800C92A8
/* 800C929C  7F E3 FB 78 */	mr r3, r31
/* 800C92A0  48 05 EA 0D */	bl offWolfEyeUp__9daAlink_cFv
/* 800C92A4  48 00 00 0C */	b lbl_800C92B0
lbl_800C92A8:
/* 800C92A8  38 00 00 01 */	li r0, 1
/* 800C92AC  B0 1F 30 AC */	sth r0, 0x30ac(r31)
lbl_800C92B0:
/* 800C92B0  7F E3 FB 78 */	mr r3, r31
/* 800C92B4  3C 80 01 00 */	lis r4, 0x100
/* 800C92B8  48 07 82 3D */	bl checkEndResetFlg0__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG0
/* 800C92BC  28 03 00 00 */	cmplwi r3, 0
/* 800C92C0  41 82 00 1C */	beq lbl_800C92DC
/* 800C92C4  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C92C8  28 00 01 03 */	cmplwi r0, 0x103
/* 800C92CC  40 82 00 10 */	bne lbl_800C92DC
/* 800C92D0  38 7E 08 34 */	addi r3, r30, 0x834
/* 800C92D4  A8 03 00 5C */	lha r0, 0x5c(r3)
/* 800C92D8  B0 1F 30 F4 */	sth r0, 0x30f4(r31)
lbl_800C92DC:
/* 800C92DC  7F E3 FB 78 */	mr r3, r31
/* 800C92E0  48 07 80 ED */	bl checkWolf__9daPy_py_cCFv
/* 800C92E4  28 03 00 00 */	cmplwi r3, 0
/* 800C92E8  41 82 00 20 */	beq lbl_800C9308
/* 800C92EC  88 1F 2F BC */	lbz r0, 0x2fbc(r31)
/* 800C92F0  28 00 00 0B */	cmplwi r0, 0xb
/* 800C92F4  40 82 00 14 */	bne lbl_800C9308
/* 800C92F8  7F E3 FB 78 */	mr r3, r31
/* 800C92FC  4B FE 81 8D */	bl checkWaterPolygonUnder__9daAlink_cFv
/* 800C9300  2C 03 00 00 */	cmpwi r3, 0
/* 800C9304  40 82 00 10 */	bne lbl_800C9314
lbl_800C9308:
/* 800C9308  88 1F 2F BB */	lbz r0, 0x2fbb(r31)
/* 800C930C  28 00 00 0B */	cmplwi r0, 0xb
/* 800C9310  40 82 00 10 */	bne lbl_800C9320
lbl_800C9314:
/* 800C9314  7F E3 FB 78 */	mr r3, r31
/* 800C9318  3C 80 40 00 */	lis r4, 0x4000
/* 800C931C  48 07 7F A9 */	bl onNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0
lbl_800C9320:
/* 800C9320  83 9F 28 30 */	lwz r28, 0x2830(r31)
/* 800C9324  28 1C 00 00 */	cmplwi r28, 0
/* 800C9328  41 82 00 60 */	beq lbl_800C9388
/* 800C932C  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 800C9330  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800C9334  41 82 00 4C */	beq lbl_800C9380
/* 800C9338  7F E3 FB 78 */	mr r3, r31
/* 800C933C  3C 80 00 80 */	lis r4, 0x80
/* 800C9340  48 07 80 D1 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C9344  28 03 00 00 */	cmplwi r3, 0
/* 800C9348  41 82 00 40 */	beq lbl_800C9388
/* 800C934C  7F E3 FB 78 */	mr r3, r31
/* 800C9350  48 01 AB D1 */	bl checkGrabRooster__9daAlink_cFv
/* 800C9354  2C 03 00 00 */	cmpwi r3, 0
/* 800C9358  40 82 00 28 */	bne lbl_800C9380
/* 800C935C  7F 83 E3 78 */	mr r3, r28
/* 800C9360  48 07 7F 5D */	bl fopAcM_GetName__FPv
/* 800C9364  7C 60 07 34 */	extsh r0, r3
/* 800C9368  2C 00 01 E8 */	cmpwi r0, 0x1e8
/* 800C936C  41 82 00 14 */	beq lbl_800C9380
/* 800C9370  7F E3 FB 78 */	mr r3, r31
/* 800C9374  48 01 A9 81 */	bl checkGrabCarryActor__9daAlink_cFv
/* 800C9378  2C 03 00 00 */	cmpwi r3, 0
/* 800C937C  41 82 00 0C */	beq lbl_800C9388
lbl_800C9380:
/* 800C9380  7F E3 FB 78 */	mr r3, r31
/* 800C9384  48 01 B8 51 */	bl freeGrabItem__9daAlink_cFv
lbl_800C9388:
/* 800C9388  7F E3 FB 78 */	mr r3, r31
/* 800C938C  4B FE 3D E5 */	bl allAnimePlay__9daAlink_cFv
/* 800C9390  A8 1F 05 6C */	lha r0, 0x56c(r31)
/* 800C9394  2C 00 00 00 */	cmpwi r0, 0
/* 800C9398  41 82 00 0C */	beq lbl_800C93A4
/* 800C939C  7F E3 FB 78 */	mr r3, r31
/* 800C93A0  48 00 E7 79 */	bl damageTimerCount__9daAlink_cFv
lbl_800C93A4:
/* 800C93A4  7F E3 FB 78 */	mr r3, r31
/* 800C93A8  48 07 7F 09 */	bl checkEquipHeavyBoots__9daPy_py_cCFv
/* 800C93AC  28 03 00 00 */	cmplwi r3, 0
/* 800C93B0  41 82 00 6C */	beq lbl_800C941C
/* 800C93B4  7F E3 FB 78 */	mr r3, r31
/* 800C93B8  38 80 00 45 */	li r4, 0x45
/* 800C93BC  4B FF 6E 4D */	bl checkItemSetButton__9daAlink_cFi
/* 800C93C0  7C 7B 1B 78 */	mr r27, r3
/* 800C93C4  2C 1B 00 02 */	cmpwi r27, 2
/* 800C93C8  41 82 00 10 */	beq lbl_800C93D8
/* 800C93CC  4B FF 72 11 */	bl checkNotHeavyBootsStage__9daAlink_cFv
/* 800C93D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C93D4  41 82 00 38 */	beq lbl_800C940C
lbl_800C93D8:
/* 800C93D8  38 60 00 00 */	li r3, 0
/* 800C93DC  3C 80 00 01 */	lis r4, 1
/* 800C93E0  48 07 7F 45 */	bl dComIfGp_checkPlayerStatus1__FiUl
/* 800C93E4  28 03 00 00 */	cmplwi r3, 0
/* 800C93E8  41 82 00 14 */	beq lbl_800C93FC
/* 800C93EC  7F E3 FB 78 */	mr r3, r31
/* 800C93F0  48 03 F4 B1 */	bl checkHookshotRoofLv7Boss__9daAlink_cFv
/* 800C93F4  2C 03 00 00 */	cmpwi r3, 0
/* 800C93F8  40 82 00 24 */	bne lbl_800C941C
lbl_800C93FC:
/* 800C93FC  7F E3 FB 78 */	mr r3, r31
/* 800C9400  38 80 00 00 */	li r4, 0
/* 800C9404  48 01 91 7D */	bl setHeavyBoots__9daAlink_cFi
/* 800C9408  48 00 00 14 */	b lbl_800C941C
lbl_800C940C:
/* 800C940C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 800C9410  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 800C9414  7F 64 DB 78 */	mr r4, r27
/* 800C9418  48 15 35 1D */	bl onDirectUseItem__13dMeter2Info_cFi
lbl_800C941C:
/* 800C941C  7F E3 FB 78 */	mr r3, r31
/* 800C9420  48 05 65 CD */	bl checkWarpStart__9daAlink_cFv
/* 800C9424  7F E3 FB 78 */	mr r3, r31
/* 800C9428  48 00 6D 11 */	bl checkSpecialDemoMode__9daAlink_cCFv
/* 800C942C  2C 03 00 00 */	cmpwi r3, 0
/* 800C9430  40 82 00 A0 */	bne lbl_800C94D0
/* 800C9434  88 1F 2F BF */	lbz r0, 0x2fbf(r31)
/* 800C9438  28 00 00 00 */	cmplwi r0, 0
/* 800C943C  40 82 00 94 */	bne lbl_800C94D0
/* 800C9440  7F E3 FB 78 */	mr r3, r31
/* 800C9444  48 04 CA 7D */	bl checkDemoAction__9daAlink_cFv
/* 800C9448  2C 03 00 00 */	cmpwi r3, 0
/* 800C944C  40 82 00 48 */	bne lbl_800C9494
/* 800C9450  7F E3 FB 78 */	mr r3, r31
/* 800C9454  38 80 00 00 */	li r4, 0
/* 800C9458  48 04 F9 25 */	bl checkDeadAction__9daAlink_cFi
/* 800C945C  2C 03 00 00 */	cmpwi r3, 0
/* 800C9460  40 82 00 34 */	bne lbl_800C9494
/* 800C9464  7F E3 FB 78 */	mr r3, r31
/* 800C9468  3C 80 00 10 */	lis r4, 0x10
/* 800C946C  48 07 7F A5 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C9470  28 03 00 00 */	cmplwi r3, 0
/* 800C9474  40 82 00 20 */	bne lbl_800C9494
/* 800C9478  7F E3 FB 78 */	mr r3, r31
/* 800C947C  4B FE CC 01 */	bl checkAutoJumpAction__9daAlink_cFv
/* 800C9480  2C 03 00 00 */	cmpwi r3, 0
/* 800C9484  40 82 00 10 */	bne lbl_800C9494
/* 800C9488  7F E3 FB 78 */	mr r3, r31
/* 800C948C  38 80 00 00 */	li r4, 0
/* 800C9490  48 03 96 8D */	bl checkSwimAction__9daAlink_cFi
lbl_800C9494:
/* 800C9494  7F E3 FB 78 */	mr r3, r31
/* 800C9498  48 00 E7 A9 */	bl checkDamageAction__9daAlink_cFv
/* 800C949C  2C 03 00 00 */	cmpwi r3, 0
/* 800C94A0  41 82 00 28 */	beq lbl_800C94C8
/* 800C94A4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C94A8  28 00 01 59 */	cmplwi r0, 0x159
/* 800C94AC  40 82 00 1C */	bne lbl_800C94C8
/* 800C94B0  7F E3 FB 78 */	mr r3, r31
/* 800C94B4  48 07 80 19 */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 800C94B8  28 03 00 00 */	cmplwi r3, 0
/* 800C94BC  41 82 00 0C */	beq lbl_800C94C8
/* 800C94C0  7F E3 FB 78 */	mr r3, r31
/* 800C94C4  48 01 99 01 */	bl cancelMagneBootsOn__9daAlink_cFv
lbl_800C94C8:
/* 800C94C8  7F E3 FB 78 */	mr r3, r31
/* 800C94CC  48 01 78 C1 */	bl checkBoomerangCatchAction__9daAlink_cFv
lbl_800C94D0:
/* 800C94D0  7F E3 FB 78 */	mr r3, r31
/* 800C94D4  38 80 00 20 */	li r4, 0x20
/* 800C94D8  48 07 7E 85 */	bl offNoResetFlg1__9daPy_py_cFQ29daPy_py_c9daPy_FLG1
/* 800C94DC  7F E3 FB 78 */	mr r3, r31
/* 800C94E0  48 07 7E ED */	bl checkWolf__9daPy_py_cCFv
/* 800C94E4  28 03 00 00 */	cmplwi r3, 0
/* 800C94E8  41 82 00 28 */	beq lbl_800C9510
/* 800C94EC  7F E3 FB 78 */	mr r3, r31
/* 800C94F0  48 06 FD F5 */	bl checkWolfComboCnt__9daAlink_cFv
/* 800C94F4  7F E3 FB 78 */	mr r3, r31
/* 800C94F8  48 00 6C 19 */	bl checkWolfEnemyThrowAnime__9daAlink_cCFv
/* 800C94FC  2C 03 00 00 */	cmpwi r3, 0
/* 800C9500  41 82 01 28 */	beq lbl_800C9628
/* 800C9504  7F E3 FB 78 */	mr r3, r31
/* 800C9508  48 06 F7 3D */	bl checkWolfEnemyThrowAction__9daAlink_cFv
/* 800C950C  48 00 01 1C */	b lbl_800C9628
lbl_800C9510:
/* 800C9510  7F E3 FB 78 */	mr r3, r31
/* 800C9514  4B FE E0 15 */	bl checkItemButtonChange__9daAlink_cFv
/* 800C9518  7F E3 FB 78 */	mr r3, r31
/* 800C951C  4B FF 13 F9 */	bl setItemAction__9daAlink_cFv
/* 800C9520  7F E3 FB 78 */	mr r3, r31
/* 800C9524  48 00 7F 31 */	bl checkComboCnt__9daAlink_cFv
/* 800C9528  7F E3 FB 78 */	mr r3, r31
/* 800C952C  48 01 3A ED */	bl setShieldGuard__9daAlink_cFv
/* 800C9530  7F E3 FB 78 */	mr r3, r31
/* 800C9534  48 00 7B AD */	bl checkCutFastReady__9daAlink_cFv
/* 800C9538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C953C  41 82 00 48 */	beq lbl_800C9584
/* 800C9540  7F E3 FB 78 */	mr r3, r31
/* 800C9544  4B FE FD 11 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800C9548  2C 03 00 00 */	cmpwi r3, 0
/* 800C954C  41 82 00 5C */	beq lbl_800C95A8
/* 800C9550  7F E3 FB 78 */	mr r3, r31
/* 800C9554  38 80 02 55 */	li r4, 0x255
/* 800C9558  38 A0 00 02 */	li r5, 2
/* 800C955C  38 FE 08 34 */	addi r7, r30, 0x834
/* 800C9560  C0 27 00 04 */	lfs f1, 4(r7)
/* 800C9564  C0 42 93 1C */	lfs f2, lit_7448(r2)
/* 800C9568  A8 DE 08 34 */	lha r6, 0x834(r30)
/* 800C956C  C0 67 00 0C */	lfs f3, 0xc(r7)
/* 800C9570  4B FE 3E 69 */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 800C9574  7F E3 FB 78 */	mr r3, r31
/* 800C9578  3C 80 01 00 */	lis r4, 0x100
/* 800C957C  48 07 7D 49 */	bl onNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0
/* 800C9580  48 00 00 28 */	b lbl_800C95A8
lbl_800C9584:
/* 800C9584  7F E3 FB 78 */	mr r3, r31
/* 800C9588  3C 80 01 00 */	lis r4, 0x100
/* 800C958C  48 07 7E 85 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C9590  28 03 00 00 */	cmplwi r3, 0
/* 800C9594  41 82 00 14 */	beq lbl_800C95A8
/* 800C9598  7F E3 FB 78 */	mr r3, r31
/* 800C959C  38 80 00 02 */	li r4, 2
/* 800C95A0  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800C95A4  4B FE 41 81 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800C95A8:
/* 800C95A8  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C95AC  28 00 00 48 */	cmplwi r0, 0x48
/* 800C95B0  40 82 00 78 */	bne lbl_800C9628
/* 800C95B4  7F E3 FB 78 */	mr r3, r31
/* 800C95B8  4B FE FC 9D */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800C95BC  2C 03 00 00 */	cmpwi r3, 0
/* 800C95C0  41 82 00 68 */	beq lbl_800C9628
/* 800C95C4  7F E3 FB 78 */	mr r3, r31
/* 800C95C8  48 04 76 A5 */	bl checkKandelaarEquipAnime__9daAlink_cCFv
/* 800C95CC  2C 03 00 00 */	cmpwi r3, 0
/* 800C95D0  40 82 00 58 */	bne lbl_800C9628
/* 800C95D4  7F E3 FB 78 */	mr r3, r31
/* 800C95D8  38 80 10 00 */	li r4, 0x1000
/* 800C95DC  48 00 6B B1 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C95E0  28 03 00 00 */	cmplwi r3, 0
/* 800C95E4  40 82 00 10 */	bne lbl_800C95F4
/* 800C95E8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C95EC  28 00 00 1C */	cmplwi r0, 0x1c
/* 800C95F0  40 82 00 38 */	bne lbl_800C9628
lbl_800C95F4:
/* 800C95F4  7F E3 FB 78 */	mr r3, r31
/* 800C95F8  48 00 6A F5 */	bl checkReinRide__9daAlink_cCFv
/* 800C95FC  28 03 00 00 */	cmplwi r3, 0
/* 800C9600  41 82 00 14 */	beq lbl_800C9614
/* 800C9604  7F E3 FB 78 */	mr r3, r31
/* 800C9608  38 80 02 64 */	li r4, 0x264
/* 800C960C  4B FE 3D 35 */	bl setUpperAnimeBase__9daAlink_cFUs
/* 800C9610  48 00 00 10 */	b lbl_800C9620
lbl_800C9614:
/* 800C9614  7F E3 FB 78 */	mr r3, r31
/* 800C9618  38 80 02 68 */	li r4, 0x268
/* 800C961C  4B FE 3D 25 */	bl setUpperAnimeBase__9daAlink_cFUs
lbl_800C9620:
/* 800C9620  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C9624  D0 1F 1F 50 */	stfs f0, 0x1f50(r31)
lbl_800C9628:
/* 800C9628  7F E3 FB 78 */	mr r3, r31
/* 800C962C  48 00 77 DD */	bl checkLightSwordMtrl__9daAlink_cFv
/* 800C9630  7F E3 FB 78 */	mr r3, r31
/* 800C9634  39 9F 38 50 */	addi r12, r31, 0x3850
/* 800C9638  48 29 8A 4D */	bl __ptmf_scall
/* 800C963C  60 00 00 00 */	nop 
/* 800C9640  7F E3 FB 78 */	mr r3, r31
/* 800C9644  38 80 20 00 */	li r4, 0x2000
/* 800C9648  48 07 7E AD */	bl checkEndResetFlg0__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG0
/* 800C964C  28 03 00 00 */	cmplwi r3, 0
/* 800C9650  40 82 00 24 */	bne lbl_800C9674
/* 800C9654  7F E3 FB 78 */	mr r3, r31
/* 800C9658  4B FE FD 41 */	bl checkWindDashAnime__9daAlink_cCFv
/* 800C965C  2C 03 00 00 */	cmpwi r3, 0
/* 800C9660  41 82 00 14 */	beq lbl_800C9674
/* 800C9664  7F E3 FB 78 */	mr r3, r31
/* 800C9668  38 80 00 02 */	li r4, 2
/* 800C966C  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800C9670  4B FE 40 B5 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800C9674:
/* 800C9674  7F E3 FB 78 */	mr r3, r31
/* 800C9678  4B FE 66 79 */	bl playFaceTextureAnime__9daAlink_cFv
/* 800C967C  38 61 00 3C */	addi r3, r1, 0x3c
/* 800C9680  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800C9684  4B FC E1 71 */	bl __ct__4cXyzFRC4cXyz
/* 800C9688  7F E3 FB 78 */	mr r3, r31
/* 800C968C  4B FF 28 DD */	bl posMove__9daAlink_cFv
/* 800C9690  7F E3 FB 78 */	mr r3, r31
/* 800C9694  48 07 7D 39 */	bl checkWolf__9daPy_py_cCFv
/* 800C9698  28 03 00 00 */	cmplwi r3, 0
/* 800C969C  41 82 00 10 */	beq lbl_800C96AC
/* 800C96A0  7F E3 FB 78 */	mr r3, r31
/* 800C96A4  48 06 0D F5 */	bl wolfBgCheck__9daAlink_cFv
/* 800C96A8  48 00 00 24 */	b lbl_800C96CC
lbl_800C96AC:
/* 800C96AC  7F E3 FB 78 */	mr r3, r31
/* 800C96B0  3C 80 00 04 */	lis r4, 4
/* 800C96B4  48 00 6A D9 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C96B8  28 03 00 00 */	cmplwi r3, 0
/* 800C96BC  41 82 00 10 */	beq lbl_800C96CC
/* 800C96C0  7F E3 FB 78 */	mr r3, r31
/* 800C96C4  C0 22 95 50 */	lfs f1, lit_23595(r2)
/* 800C96C8  48 03 86 A9 */	bl swimBgCheck__9daAlink_cFf
lbl_800C96CC:
/* 800C96CC  38 61 00 30 */	addi r3, r1, 0x30
/* 800C96D0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800C96D4  4B FC E1 21 */	bl __ct__4cXyzFRC4cXyz
/* 800C96D8  38 7F 35 28 */	addi r3, r31, 0x3528
/* 800C96DC  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 800C96E0  4B FC E0 F9 */	bl __as__4cXyzFRC4cXyz
/* 800C96E4  38 7F 19 70 */	addi r3, r31, 0x1970
/* 800C96E8  48 00 69 F5 */	bl ClrGroundHit__9dBgS_AcchFv
/* 800C96EC  38 7F 19 70 */	addi r3, r31, 0x1970
/* 800C96F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C96F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C96F8  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 800C96FC  7F A4 EB 78 */	mr r4, r29
/* 800C9700  4B FA D3 AD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 800C9704  7F E3 FB 78 */	mr r3, r31
/* 800C9708  48 07 7D C5 */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 800C970C  28 03 00 00 */	cmplwi r3, 0
/* 800C9710  41 82 00 10 */	beq lbl_800C9720
/* 800C9714  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800C9718  38 81 00 30 */	addi r4, r1, 0x30
/* 800C971C  4B FC E0 BD */	bl __as__4cXyzFRC4cXyz
lbl_800C9720:
/* 800C9720  38 7F 19 70 */	addi r3, r31, 0x1970
/* 800C9724  48 07 7C E1 */	bl ChkGroundHit__9dBgS_AcchCFv
/* 800C9728  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C972C  40 82 00 2C */	bne lbl_800C9758
/* 800C9730  38 7F 19 70 */	addi r3, r31, 0x1970
/* 800C9734  48 00 69 9D */	bl ChkRoofHit__9dBgS_AcchCFv
/* 800C9738  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C973C  40 82 00 1C */	bne lbl_800C9758
/* 800C9740  7F E3 FB 78 */	mr r3, r31
/* 800C9744  48 03 82 75 */	bl getZoraSwim__9daAlink_cCFv
/* 800C9748  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C974C  41 82 00 0C */	beq lbl_800C9758
/* 800C9750  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800C9754  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_800C9758:
/* 800C9758  7F E3 FB 78 */	mr r3, r31
/* 800C975C  4B FD D6 71 */	bl iceSlipBgCheck__9daAlink_cFv
/* 800C9760  7F E3 FB 78 */	mr r3, r31
/* 800C9764  4B FE 7D 51 */	bl setWaterY__9daAlink_cFv
/* 800C9768  7F E3 FB 78 */	mr r3, r31
/* 800C976C  4B FF 3F 91 */	bl autoGroundHit__9daAlink_cFv
/* 800C9770  7F E3 FB 78 */	mr r3, r31
/* 800C9774  3C 80 00 80 */	lis r4, 0x80
/* 800C9778  48 07 7C 99 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C977C  28 03 00 00 */	cmplwi r3, 0
/* 800C9780  40 82 00 28 */	bne lbl_800C97A8
/* 800C9784  7F E3 FB 78 */	mr r3, r31
/* 800C9788  48 03 85 31 */	bl checkPossibleWaterInMode__9daAlink_cCFv
/* 800C978C  2C 03 00 00 */	cmpwi r3, 0
/* 800C9790  41 82 00 BC */	beq lbl_800C984C
/* 800C9794  7F E3 FB 78 */	mr r3, r31
/* 800C9798  38 80 01 00 */	li r4, 0x100
/* 800C979C  48 07 7C 75 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C97A0  28 03 00 00 */	cmplwi r3, 0
/* 800C97A4  40 82 00 A8 */	bne lbl_800C984C
lbl_800C97A8:
/* 800C97A8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C97AC  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800C97B0  40 82 00 1C */	bne lbl_800C97CC
/* 800C97B4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800C97B8  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800C97BC  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 800C97C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C97C4  EF E2 00 28 */	fsubs f31, f2, f0
/* 800C97C8  48 00 00 40 */	b lbl_800C9808
lbl_800C97CC:
/* 800C97CC  38 60 00 00 */	li r3, 0
/* 800C97D0  3C 80 02 00 */	lis r4, 0x200
/* 800C97D4  48 07 7B 51 */	bl dComIfGp_checkPlayerStatus1__FiUl
/* 800C97D8  28 03 00 00 */	cmplwi r3, 0
/* 800C97DC  41 82 00 28 */	beq lbl_800C9804
/* 800C97E0  C0 22 95 D0 */	lfs f1, lit_27005(r2)
/* 800C97E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800C97E8  EC 41 00 2A */	fadds f2, f1, f0
/* 800C97EC  38 7E 16 D4 */	addi r3, r30, 0x16d4
/* 800C97F0  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 800C97F4  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800C97F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C97FC  EF E2 00 28 */	fsubs f31, f2, f0
/* 800C9800  48 00 00 08 */	b lbl_800C9808
lbl_800C9804:
/* 800C9804  C3 FF 04 D4 */	lfs f31, 0x4d4(r31)
lbl_800C9808:
/* 800C9808  7F E3 FB 78 */	mr r3, r31
/* 800C980C  38 80 00 80 */	li r4, 0x80
/* 800C9810  48 07 7C 01 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C9814  28 03 00 00 */	cmplwi r3, 0
/* 800C9818  41 82 00 28 */	beq lbl_800C9840
/* 800C981C  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 800C9820  EC 40 F8 28 */	fsubs f2, f0, f31
/* 800C9824  38 7E 16 D4 */	addi r3, r30, 0x16d4
/* 800C9828  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 800C982C  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800C9830  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C9834  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800C9838  4C 40 13 82 */	cror 2, 0, 2
/* 800C983C  40 82 00 10 */	bne lbl_800C984C
lbl_800C9840:
/* 800C9840  7F E3 FB 78 */	mr r3, r31
/* 800C9844  38 80 00 00 */	li r4, 0
/* 800C9848  48 03 9A 81 */	bl swimOutAfter__9daAlink_cFi
lbl_800C984C:
/* 800C984C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C9850  28 00 01 3D */	cmplwi r0, 0x13d
/* 800C9854  41 82 00 0C */	beq lbl_800C9860
/* 800C9858  28 00 00 E6 */	cmplwi r0, 0xe6
/* 800C985C  40 82 00 A8 */	bne lbl_800C9904
lbl_800C9860:
/* 800C9860  80 7F 1F 20 */	lwz r3, 0x1f20(r31)
/* 800C9864  38 80 00 00 */	li r4, 0
/* 800C9868  48 00 68 55 */	bl getAnm__25mDoExt_MtxCalcAnmBlendTblFi
/* 800C986C  38 80 00 00 */	li r4, 0
/* 800C9870  38 A1 00 5C */	addi r5, r1, 0x5c
/* 800C9874  81 83 00 00 */	lwz r12, 0(r3)
/* 800C9878  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800C987C  7D 89 03 A6 */	mtctr r12
/* 800C9880  4E 80 04 21 */	bctrl 
/* 800C9884  38 61 00 3C */	addi r3, r1, 0x3c
/* 800C9888  4B F4 34 DD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800C988C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800C9890  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800C9894  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800C9898  4B F4 2B 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 800C989C  80 7E 4A 24 */	lwz r3, 0x4a24(r30)
/* 800C98A0  80 1E 4A 28 */	lwz r0, 0x4a28(r30)
/* 800C98A4  90 61 00 24 */	stw r3, 0x24(r1)
/* 800C98A8  90 01 00 28 */	stw r0, 0x28(r1)
/* 800C98AC  80 1E 4A 2C */	lwz r0, 0x4a2c(r30)
/* 800C98B0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800C98B4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 800C98B8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800C98BC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 800C98C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800C98C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800C98C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800C98CC  38 81 00 24 */	addi r4, r1, 0x24
/* 800C98D0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800C98D4  48 27 D4 99 */	bl PSMTXMultVec
/* 800C98D8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C98DC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800C98E0  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800C98E4  2C 00 00 00 */	cmpwi r0, 0
/* 800C98E8  41 82 00 FC */	beq lbl_800C99E4
/* 800C98EC  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 800C98F0  C0 3F 1A 08 */	lfs f1, 0x1a08(r31)
/* 800C98F4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 800C98F8  41 82 00 EC */	beq lbl_800C99E4
/* 800C98FC  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 800C9900  48 00 00 E4 */	b lbl_800C99E4
lbl_800C9904:
/* 800C9904  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800C9908  41 82 00 54 */	beq lbl_800C995C
/* 800C990C  28 00 00 CC */	cmplwi r0, 0xcc
/* 800C9910  41 82 00 4C */	beq lbl_800C995C
/* 800C9914  7F E3 FB 78 */	mr r3, r31
/* 800C9918  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030C00@ha */
/* 800C991C  38 84 0C 00 */	addi r4, r4, 0x0C00 /* 0x00030C00@l */
/* 800C9920  48 00 68 6D */	bl checkModeFlg__9daAlink_cCFUl
/* 800C9924  28 03 00 00 */	cmplwi r3, 0
/* 800C9928  41 82 00 44 */	beq lbl_800C996C
/* 800C992C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C9930  28 00 00 3B */	cmplwi r0, 0x3b
/* 800C9934  41 82 00 38 */	beq lbl_800C996C
/* 800C9938  28 00 01 30 */	cmplwi r0, 0x130
/* 800C993C  41 82 00 30 */	beq lbl_800C996C
/* 800C9940  7F E3 FB 78 */	mr r3, r31
/* 800C9944  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800C9948  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800C994C  7D 89 03 A6 */	mtctr r12
/* 800C9950  4E 80 04 21 */	bctrl 
/* 800C9954  28 03 00 00 */	cmplwi r3, 0
/* 800C9958  40 82 00 14 */	bne lbl_800C996C
lbl_800C995C:
/* 800C995C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800C9960  38 81 00 30 */	addi r4, r1, 0x30
/* 800C9964  4B FC DE 75 */	bl __as__4cXyzFRC4cXyz
/* 800C9968  48 00 00 7C */	b lbl_800C99E4
lbl_800C996C:
/* 800C996C  7F E3 FB 78 */	mr r3, r31
/* 800C9970  38 80 40 00 */	li r4, 0x4000
/* 800C9974  48 00 68 19 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C9978  28 03 00 00 */	cmplwi r3, 0
/* 800C997C  41 82 00 3C */	beq lbl_800C99B8
/* 800C9980  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C9984  28 00 00 B0 */	cmplwi r0, 0xb0
/* 800C9988  41 82 00 0C */	beq lbl_800C9994
/* 800C998C  28 00 00 5D */	cmplwi r0, 0x5d
/* 800C9990  40 82 00 14 */	bne lbl_800C99A4
lbl_800C9994:
/* 800C9994  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800C9998  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800C999C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C99A0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_800C99A4:
/* 800C99A4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800C99A8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800C99AC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800C99B0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800C99B4  48 00 00 30 */	b lbl_800C99E4
lbl_800C99B8:
/* 800C99B8  7F E3 FB 78 */	mr r3, r31
/* 800C99BC  48 04 E7 B5 */	bl checkFlyAtnWait__9daAlink_cFv
/* 800C99C0  2C 03 00 00 */	cmpwi r3, 0
/* 800C99C4  40 82 00 10 */	bne lbl_800C99D4
/* 800C99C8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C99CC  28 00 01 4F */	cmplwi r0, 0x14f
/* 800C99D0  40 82 00 14 */	bne lbl_800C99E4
lbl_800C99D4:
/* 800C99D4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800C99D8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800C99DC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C99E0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_800C99E4:
/* 800C99E4  80 1F 31 74 */	lwz r0, 0x3174(r31)
/* 800C99E8  90 1F 31 78 */	stw r0, 0x3178(r31)
/* 800C99EC  C0 22 93 A4 */	lfs f1, lit_9138(r2)
/* 800C99F0  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 800C99F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800C99F8  41 82 02 94 */	beq lbl_800C9C8C
/* 800C99FC  7F E3 FB 78 */	mr r3, r31
/* 800C9A00  4B FD CC 2D */	bl setRoomInfo__9daAlink_cFv
/* 800C9A04  7F E3 FB 78 */	mr r3, r31
/* 800C9A08  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070C52@ha */
/* 800C9A0C  38 84 0C 52 */	addi r4, r4, 0x0C52 /* 0x00070C52@l */
/* 800C9A10  48 00 67 7D */	bl checkModeFlg__9daAlink_cCFUl
/* 800C9A14  28 03 00 00 */	cmplwi r3, 0
/* 800C9A18  40 82 00 50 */	bne lbl_800C9A68
/* 800C9A1C  7F E3 FB 78 */	mr r3, r31
/* 800C9A20  48 07 7A AD */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 800C9A24  28 03 00 00 */	cmplwi r3, 0
/* 800C9A28  40 82 00 40 */	bne lbl_800C9A68
/* 800C9A2C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C9A30  28 00 01 3D */	cmplwi r0, 0x13d
/* 800C9A34  41 82 00 34 */	beq lbl_800C9A68
/* 800C9A38  28 00 00 E6 */	cmplwi r0, 0xe6
/* 800C9A3C  41 82 00 2C */	beq lbl_800C9A68
/* 800C9A40  28 00 00 EB */	cmplwi r0, 0xeb
/* 800C9A44  41 82 00 24 */	beq lbl_800C9A68
/* 800C9A48  88 1F 2F 8C */	lbz r0, 0x2f8c(r31)
/* 800C9A4C  28 00 00 01 */	cmplwi r0, 1
/* 800C9A50  41 82 00 0C */	beq lbl_800C9A5C
/* 800C9A54  28 00 00 03 */	cmplwi r0, 3
/* 800C9A58  40 82 00 10 */	bne lbl_800C9A68
lbl_800C9A5C:
/* 800C9A5C  7F E3 FB 78 */	mr r3, r31
/* 800C9A60  4B FD D0 AD */	bl setStepsOffset__9daAlink_cFv
/* 800C9A64  48 00 00 28 */	b lbl_800C9A8C
lbl_800C9A68:
/* 800C9A68  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C9A6C  D0 1F 2B 9C */	stfs f0, 0x2b9c(r31)
/* 800C9A70  7F E3 FB 78 */	mr r3, r31
/* 800C9A74  3C 80 00 04 */	lis r4, 4
/* 800C9A78  48 00 67 15 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C9A7C  28 03 00 00 */	cmplwi r3, 0
/* 800C9A80  40 82 00 0C */	bne lbl_800C9A8C
/* 800C9A84  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C9A88  D0 1F 2B 98 */	stfs f0, 0x2b98(r31)
lbl_800C9A8C:
/* 800C9A8C  7F E3 FB 78 */	mr r3, r31
/* 800C9A90  3C 80 02 00 */	lis r4, 0x200
/* 800C9A94  48 00 66 F9 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C9A98  28 03 00 00 */	cmplwi r3, 0
/* 800C9A9C  41 82 00 0C */	beq lbl_800C9AA8
/* 800C9AA0  7F E3 FB 78 */	mr r3, r31
/* 800C9AA4  4B FD CD 3D */	bl setShapeAngleOnGround__9daAlink_cFv
lbl_800C9AA8:
/* 800C9AA8  7F E3 FB 78 */	mr r3, r31
/* 800C9AAC  4B FF 49 39 */	bl checkRestartRoom__9daAlink_cFv
/* 800C9AB0  2C 03 00 00 */	cmpwi r3, 0
/* 800C9AB4  40 82 00 2C */	bne lbl_800C9AE0
/* 800C9AB8  7F E3 FB 78 */	mr r3, r31
/* 800C9ABC  48 04 F1 DD */	bl checkDeadHP__9daAlink_cFv
/* 800C9AC0  2C 03 00 00 */	cmpwi r3, 0
/* 800C9AC4  40 82 00 1C */	bne lbl_800C9AE0
/* 800C9AC8  7F A3 EB 78 */	mr r3, r29
/* 800C9ACC  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800C9AD0  4B FA B0 C9 */	bl GetExitId__4dBgSFRC13cBgS_PolyInfo
/* 800C9AD4  7C 64 1B 78 */	mr r4, r3
/* 800C9AD8  7F E3 FB 78 */	mr r3, r31
/* 800C9ADC  4B FF 50 1D */	bl checkSceneChange__9daAlink_cFi
lbl_800C9AE0:
/* 800C9AE0  38 7F 19 70 */	addi r3, r31, 0x1970
/* 800C9AE4  48 07 79 21 */	bl ChkGroundHit__9dBgS_AcchCFv
/* 800C9AE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C9AEC  41 82 00 C4 */	beq lbl_800C9BB0
/* 800C9AF0  7F A3 EB 78 */	mr r3, r29
/* 800C9AF4  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800C9AF8  4B FA AF C5 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 800C9AFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C9B00  41 82 00 20 */	beq lbl_800C9B20
/* 800C9B04  7F A3 EB 78 */	mr r3, r29
/* 800C9B08  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800C9B0C  38 A0 00 01 */	li r5, 1
/* 800C9B10  38 DF 34 EC */	addi r6, r31, 0x34ec
/* 800C9B14  38 E0 00 00 */	li r7, 0
/* 800C9B18  39 00 00 00 */	li r8, 0
/* 800C9B1C  4B FA BD 65 */	bl MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
lbl_800C9B20:
/* 800C9B20  7F E3 FB 78 */	mr r3, r31
/* 800C9B24  38 80 00 80 */	li r4, 0x80
/* 800C9B28  48 07 78 E9 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C9B2C  28 03 00 00 */	cmplwi r3, 0
/* 800C9B30  41 82 00 3C */	beq lbl_800C9B6C
/* 800C9B34  7F E3 FB 78 */	mr r3, r31
/* 800C9B38  3C 80 00 80 */	lis r4, 0x80
/* 800C9B3C  48 07 78 D5 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C9B40  28 03 00 00 */	cmplwi r3, 0
/* 800C9B44  40 82 00 28 */	bne lbl_800C9B6C
/* 800C9B48  C0 3F 33 B4 */	lfs f1, 0x33b4(r31)
/* 800C9B4C  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 800C9B50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C9B54  4C 41 13 82 */	cror 2, 1, 2
/* 800C9B58  40 82 00 14 */	bne lbl_800C9B6C
/* 800C9B5C  38 7F 1A F0 */	addi r3, r31, 0x1af0
/* 800C9B60  48 0E 19 61 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 800C9B64  98 7F 2F A5 */	stb r3, 0x2fa5(r31)
/* 800C9B68  48 00 00 30 */	b lbl_800C9B98
lbl_800C9B6C:
/* 800C9B6C  7F E3 FB 78 */	mr r3, r31
/* 800C9B70  3C 80 00 20 */	lis r4, 0x20
/* 800C9B74  48 07 79 81 */	bl checkEndResetFlg0__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG0
/* 800C9B78  28 03 00 00 */	cmplwi r3, 0
/* 800C9B7C  41 82 00 10 */	beq lbl_800C9B8C
/* 800C9B80  38 00 00 0B */	li r0, 0xb
/* 800C9B84  98 1F 2F A5 */	stb r0, 0x2fa5(r31)
/* 800C9B88  48 00 00 10 */	b lbl_800C9B98
lbl_800C9B8C:
/* 800C9B8C  38 7F 1A 60 */	addi r3, r31, 0x1a60
/* 800C9B90  48 0E 19 31 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 800C9B94  98 7F 2F A5 */	stb r3, 0x2fa5(r31)
lbl_800C9B98:
/* 800C9B98  7F E3 FB 78 */	mr r3, r31
/* 800C9B9C  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800C9BA0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 800C9BA4  4B FE 64 F5 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 800C9BA8  B0 7F 2F F0 */	sth r3, 0x2ff0(r31)
/* 800C9BAC  48 00 00 C8 */	b lbl_800C9C74
lbl_800C9BB0:
/* 800C9BB0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C9BB4  28 00 01 3D */	cmplwi r0, 0x13d
/* 800C9BB8  41 82 00 0C */	beq lbl_800C9BC4
/* 800C9BBC  28 00 00 E6 */	cmplwi r0, 0xe6
/* 800C9BC0  40 82 00 6C */	bne lbl_800C9C2C
lbl_800C9BC4:
/* 800C9BC4  7F E3 FB 78 */	mr r3, r31
/* 800C9BC8  38 80 00 80 */	li r4, 0x80
/* 800C9BCC  48 07 78 45 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C9BD0  28 03 00 00 */	cmplwi r3, 0
/* 800C9BD4  41 82 00 28 */	beq lbl_800C9BFC
/* 800C9BD8  C0 3F 33 B4 */	lfs f1, 0x33b4(r31)
/* 800C9BDC  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 800C9BE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C9BE4  4C 41 13 82 */	cror 2, 1, 2
/* 800C9BE8  40 82 00 14 */	bne lbl_800C9BFC
/* 800C9BEC  38 7F 1A F0 */	addi r3, r31, 0x1af0
/* 800C9BF0  48 0E 18 D1 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 800C9BF4  98 7F 2F A5 */	stb r3, 0x2fa5(r31)
/* 800C9BF8  48 00 00 74 */	b lbl_800C9C6C
lbl_800C9BFC:
/* 800C9BFC  7F E3 FB 78 */	mr r3, r31
/* 800C9C00  3C 80 00 20 */	lis r4, 0x20
/* 800C9C04  48 07 78 F1 */	bl checkEndResetFlg0__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG0
/* 800C9C08  28 03 00 00 */	cmplwi r3, 0
/* 800C9C0C  41 82 00 10 */	beq lbl_800C9C1C
/* 800C9C10  38 00 00 0B */	li r0, 0xb
/* 800C9C14  98 1F 2F A5 */	stb r0, 0x2fa5(r31)
/* 800C9C18  48 00 00 54 */	b lbl_800C9C6C
lbl_800C9C1C:
/* 800C9C1C  38 7F 1A 60 */	addi r3, r31, 0x1a60
/* 800C9C20  48 0E 18 A1 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 800C9C24  98 7F 2F A5 */	stb r3, 0x2fa5(r31)
/* 800C9C28  48 00 00 44 */	b lbl_800C9C6C
lbl_800C9C2C:
/* 800C9C2C  7F E3 FB 78 */	mr r3, r31
/* 800C9C30  3C 80 00 04 */	lis r4, 4
/* 800C9C34  48 00 65 59 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C9C38  28 03 00 00 */	cmplwi r3, 0
/* 800C9C3C  41 82 00 28 */	beq lbl_800C9C64
/* 800C9C40  7F E3 FB 78 */	mr r3, r31
/* 800C9C44  38 80 00 80 */	li r4, 0x80
/* 800C9C48  48 07 77 C9 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C9C4C  28 03 00 00 */	cmplwi r3, 0
/* 800C9C50  41 82 00 14 */	beq lbl_800C9C64
/* 800C9C54  38 7F 1A F0 */	addi r3, r31, 0x1af0
/* 800C9C58  48 0E 18 69 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 800C9C5C  98 7F 2F A5 */	stb r3, 0x2fa5(r31)
/* 800C9C60  48 00 00 0C */	b lbl_800C9C6C
lbl_800C9C64:
/* 800C9C64  38 00 00 00 */	li r0, 0
/* 800C9C68  98 1F 2F A5 */	stb r0, 0x2fa5(r31)
lbl_800C9C6C:
/* 800C9C6C  38 00 00 00 */	li r0, 0
/* 800C9C70  B0 1F 2F F0 */	sth r0, 0x2ff0(r31)
lbl_800C9C74:
/* 800C9C74  7F A3 EB 78 */	mr r3, r29
/* 800C9C78  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800C9C7C  4B FA B4 05 */	bl GetGrpSoundId__4dBgSFRC13cBgS_PolyInfo
/* 800C9C80  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800C9C84  48 00 64 09 */	bl mDoAud_setLinkGroupInfo__FUc
/* 800C9C88  48 00 00 90 */	b lbl_800C9D18
lbl_800C9C8C:
/* 800C9C8C  38 00 FF FF */	li r0, -1
/* 800C9C90  90 1F 31 74 */	stw r0, 0x3174(r31)
/* 800C9C94  38 60 00 00 */	li r3, 0
/* 800C9C98  B0 7F 2F F0 */	sth r3, 0x2ff0(r31)
/* 800C9C9C  38 00 00 10 */	li r0, 0x10
/* 800C9CA0  98 1F 2F BB */	stb r0, 0x2fbb(r31)
/* 800C9CA4  98 7F 2F BD */	stb r3, 0x2fbd(r31)
/* 800C9CA8  98 7F 2F A8 */	stb r3, 0x2fa8(r31)
/* 800C9CAC  7F E3 FB 78 */	mr r3, r31
/* 800C9CB0  3C 80 00 04 */	lis r4, 4
/* 800C9CB4  48 00 64 D9 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C9CB8  28 03 00 00 */	cmplwi r3, 0
/* 800C9CBC  41 82 00 28 */	beq lbl_800C9CE4
/* 800C9CC0  7F A3 EB 78 */	mr r3, r29
/* 800C9CC4  38 9F 1A F0 */	addi r4, r31, 0x1af0
/* 800C9CC8  4B FA A9 99 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800C9CCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C9CD0  41 82 00 14 */	beq lbl_800C9CE4
/* 800C9CD4  38 7F 1A F0 */	addi r3, r31, 0x1af0
/* 800C9CD8  48 0E 17 E9 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 800C9CDC  98 7F 2F A5 */	stb r3, 0x2fa5(r31)
/* 800C9CE0  48 00 00 0C */	b lbl_800C9CEC
lbl_800C9CE4:
/* 800C9CE4  38 00 00 00 */	li r0, 0
/* 800C9CE8  98 1F 2F A5 */	stb r0, 0x2fa5(r31)
lbl_800C9CEC:
/* 800C9CEC  7F E3 FB 78 */	mr r3, r31
/* 800C9CF0  4B FF 46 F5 */	bl checkRestartRoom__9daAlink_cFv
/* 800C9CF4  2C 03 00 00 */	cmpwi r3, 0
/* 800C9CF8  40 82 00 20 */	bne lbl_800C9D18
/* 800C9CFC  7F E3 FB 78 */	mr r3, r31
/* 800C9D00  48 04 EF 99 */	bl checkDeadHP__9daAlink_cFv
/* 800C9D04  2C 03 00 00 */	cmpwi r3, 0
/* 800C9D08  40 82 00 10 */	bne lbl_800C9D18
/* 800C9D0C  7F E3 FB 78 */	mr r3, r31
/* 800C9D10  38 80 00 3F */	li r4, 0x3f
/* 800C9D14  4B FF 4D E5 */	bl checkSceneChange__9daAlink_cFi
lbl_800C9D18:
/* 800C9D18  7F E3 FB 78 */	mr r3, r31
/* 800C9D1C  48 07 77 B1 */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 800C9D20  28 03 00 00 */	cmplwi r3, 0
/* 800C9D24  41 82 00 B0 */	beq lbl_800C9DD4
/* 800C9D28  38 00 00 00 */	li r0, 0
/* 800C9D2C  98 1F 2F BD */	stb r0, 0x2fbd(r31)
/* 800C9D30  38 7F 2F 5C */	addi r3, r31, 0x2f5c
/* 800C9D34  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800C9D38  4B FC DA A1 */	bl __as__4cXyzFRC4cXyz
/* 800C9D3C  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 800C9D40  D0 1F 2F 70 */	stfs f0, 0x2f70(r31)
/* 800C9D44  7F E3 FB 78 */	mr r3, r31
/* 800C9D48  38 80 20 00 */	li r4, 0x2000
/* 800C9D4C  48 07 76 C5 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800C9D50  28 03 00 00 */	cmplwi r3, 0
/* 800C9D54  41 82 00 5C */	beq lbl_800C9DB0
/* 800C9D58  38 7F 1D C0 */	addi r3, r31, 0x1dc0
/* 800C9D5C  48 0E 17 65 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 800C9D60  98 7F 2F A5 */	stb r3, 0x2fa5(r31)
/* 800C9D64  38 00 00 00 */	li r0, 0
/* 800C9D68  B0 1F 2F F0 */	sth r0, 0x2ff0(r31)
/* 800C9D6C  7F A3 EB 78 */	mr r3, r29
/* 800C9D70  38 9F 1D C0 */	addi r4, r31, 0x1dc0
/* 800C9D74  4B FA B1 7D */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 800C9D78  90 7F 31 74 */	stw r3, 0x3174(r31)
/* 800C9D7C  7F A3 EB 78 */	mr r3, r29
/* 800C9D80  38 9F 1D C0 */	addi r4, r31, 0x1dc0
/* 800C9D84  4B FA B0 CD */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 800C9D88  98 7F 2F BB */	stb r3, 0x2fbb(r31)
/* 800C9D8C  7F A3 EB 78 */	mr r3, r29
/* 800C9D90  38 9F 1D C0 */	addi r4, r31, 0x1dc0
/* 800C9D94  4B FA AF 29 */	bl GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 800C9D98  98 7F 2F A8 */	stb r3, 0x2fa8(r31)
/* 800C9D9C  7F E3 FB 78 */	mr r3, r31
/* 800C9DA0  38 9F 1D C0 */	addi r4, r31, 0x1dc0
/* 800C9DA4  38 A0 00 00 */	li r5, 0
/* 800C9DA8  48 01 8A 61 */	bl setMagneBootsMtx__9daAlink_cFP13cBgS_PolyInfoi
/* 800C9DAC  48 00 00 4C */	b lbl_800C9DF8
lbl_800C9DB0:
/* 800C9DB0  38 60 00 00 */	li r3, 0
/* 800C9DB4  98 7F 2F A5 */	stb r3, 0x2fa5(r31)
/* 800C9DB8  B0 7F 2F F0 */	sth r3, 0x2ff0(r31)
/* 800C9DBC  38 00 FF FF */	li r0, -1
/* 800C9DC0  90 1F 31 74 */	stw r0, 0x3174(r31)
/* 800C9DC4  38 00 00 10 */	li r0, 0x10
/* 800C9DC8  98 1F 2F BB */	stb r0, 0x2fbb(r31)
/* 800C9DCC  98 7F 2F A8 */	stb r3, 0x2fa8(r31)
/* 800C9DD0  48 00 00 28 */	b lbl_800C9DF8
lbl_800C9DD4:
/* 800C9DD4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C9DD8  D0 1F 2F 70 */	stfs f0, 0x2f70(r31)
/* 800C9DDC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C9DE0  28 00 00 CC */	cmplwi r0, 0xcc
/* 800C9DE4  41 82 00 14 */	beq lbl_800C9DF8
/* 800C9DE8  38 7F 36 A8 */	addi r3, r31, 0x36a8
/* 800C9DEC  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 800C9DF0  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 800C9DF4  4B FC D9 E5 */	bl __as__4cXyzFRC4cXyz
lbl_800C9DF8:
/* 800C9DF8  3C 60 80 3B */	lis r3, l_peepEventName@ha /* 0x803AF99C@ha */
/* 800C9DFC  38 63 F9 9C */	addi r3, r3, l_peepEventName@l /* 0x803AF99C@l */
/* 800C9E00  48 00 62 5D */	bl dComIfGp_evmng_startCheck__FPCc
/* 800C9E04  2C 03 00 00 */	cmpwi r3, 0
/* 800C9E08  41 82 00 38 */	beq lbl_800C9E40
/* 800C9E0C  A8 7F 2F F2 */	lha r3, 0x2ff2(r31)
/* 800C9E10  2C 03 00 00 */	cmpwi r3, 0
/* 800C9E14  40 81 00 10 */	ble lbl_800C9E24
/* 800C9E18  38 03 FF FF */	addi r0, r3, -1
/* 800C9E1C  B0 1F 2F F2 */	sth r0, 0x2ff2(r31)
/* 800C9E20  48 00 00 20 */	b lbl_800C9E40
lbl_800C9E24:
/* 800C9E24  3C 60 80 3B */	lis r3, l_peepEventName@ha /* 0x803AF99C@ha */
/* 800C9E28  38 63 F9 9C */	addi r3, r3, l_peepEventName@l /* 0x803AF99C@l */
/* 800C9E2C  48 00 62 31 */	bl dComIfGp_evmng_startCheck__FPCc
/* 800C9E30  2C 03 00 00 */	cmpwi r3, 0
/* 800C9E34  41 82 00 0C */	beq lbl_800C9E40
/* 800C9E38  7F E3 FB 78 */	mr r3, r31
/* 800C9E3C  4B FF 3F 35 */	bl startPeepChange__9daAlink_cFv
lbl_800C9E40:
/* 800C9E40  7F E3 FB 78 */	mr r3, r31
/* 800C9E44  3C 80 00 01 */	lis r4, 1
/* 800C9E48  48 00 63 45 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C9E4C  28 03 00 00 */	cmplwi r3, 0
/* 800C9E50  41 82 00 4C */	beq lbl_800C9E9C
/* 800C9E54  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800C9E58  2C 00 00 00 */	cmpwi r0, 0
/* 800C9E5C  41 82 00 40 */	beq lbl_800C9E9C
/* 800C9E60  7F A3 EB 78 */	mr r3, r29
/* 800C9E64  38 9F 1E 1C */	addi r4, r31, 0x1e1c
/* 800C9E68  4B FA A7 F9 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800C9E6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C9E70  41 82 00 2C */	beq lbl_800C9E9C
/* 800C9E74  38 7F 1E 1C */	addi r3, r31, 0x1e1c
/* 800C9E78  48 0E 16 49 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 800C9E7C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 800C9E80  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800C9E84  88 BF 2F 9A */	lbz r5, 0x2f9a(r31)
/* 800C9E88  81 9F 2C A8 */	lwz r12, 0x2ca8(r31)
/* 800C9E8C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800C9E90  7D 89 03 A6 */	mtctr r12
/* 800C9E94  4E 80 04 21 */	bctrl 
/* 800C9E98  48 00 00 20 */	b lbl_800C9EB8
lbl_800C9E9C:
/* 800C9E9C  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800C9EA0  88 9F 2F A5 */	lbz r4, 0x2fa5(r31)
/* 800C9EA4  88 BF 2F 9A */	lbz r5, 0x2f9a(r31)
/* 800C9EA8  81 9F 2C A8 */	lwz r12, 0x2ca8(r31)
/* 800C9EAC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800C9EB0  7D 89 03 A6 */	mtctr r12
/* 800C9EB4  4E 80 04 21 */	bctrl 
lbl_800C9EB8:
/* 800C9EB8  80 7F 2D 7C */	lwz r3, 0x2d7c(r31)
/* 800C9EBC  28 03 00 00 */	cmplwi r3, 0
/* 800C9EC0  41 82 00 14 */	beq lbl_800C9ED4
/* 800C9EC4  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 800C9EC8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 800C9ECC  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800C9ED0  48 1F 68 01 */	bl updateAnime__10Z2CreatureFff
lbl_800C9ED4:
/* 800C9ED4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C9ED8  28 00 00 32 */	cmplwi r0, 0x32
/* 800C9EDC  41 82 00 F0 */	beq lbl_800C9FCC
/* 800C9EE0  28 00 00 7F */	cmplwi r0, 0x7f
/* 800C9EE4  41 82 00 E8 */	beq lbl_800C9FCC
/* 800C9EE8  28 00 00 44 */	cmplwi r0, 0x44
/* 800C9EEC  41 82 00 E0 */	beq lbl_800C9FCC
/* 800C9EF0  7F E3 FB 78 */	mr r3, r31
/* 800C9EF4  4B FD 83 F5 */	bl setMoveSlantAngle__9daAlink_cFv
/* 800C9EF8  7F E3 FB 78 */	mr r3, r31
/* 800C9EFC  48 00 61 F1 */	bl checkReinRide__9daAlink_cCFv
/* 800C9F00  28 03 00 00 */	cmplwi r3, 0
/* 800C9F04  41 82 00 20 */	beq lbl_800C9F24
/* 800C9F08  7F E3 FB 78 */	mr r3, r31
/* 800C9F0C  48 01 2E E5 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800C9F10  2C 03 00 00 */	cmpwi r3, 0
/* 800C9F14  41 82 00 10 */	beq lbl_800C9F24
/* 800C9F18  7F E3 FB 78 */	mr r3, r31
/* 800C9F1C  48 02 51 35 */	bl setBodyAngleRideReadyAnime__9daAlink_cFv
/* 800C9F20  48 00 00 AC */	b lbl_800C9FCC
lbl_800C9F24:
/* 800C9F24  7F E3 FB 78 */	mr r3, r31
/* 800C9F28  48 00 61 21 */	bl checkSmallUpperGuardAnime__9daAlink_cCFv
/* 800C9F2C  2C 03 00 00 */	cmpwi r3, 0
/* 800C9F30  40 82 00 9C */	bne lbl_800C9FCC
/* 800C9F34  7F E3 FB 78 */	mr r3, r31
/* 800C9F38  48 07 74 95 */	bl checkWolf__9daPy_py_cCFv
/* 800C9F3C  28 03 00 00 */	cmplwi r3, 0
/* 800C9F40  40 82 00 8C */	bne lbl_800C9FCC
/* 800C9F44  7F E3 FB 78 */	mr r3, r31
/* 800C9F48  3C 80 20 00 */	lis r4, 0x2000
/* 800C9F4C  48 00 62 41 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C9F50  28 03 00 00 */	cmplwi r3, 0
/* 800C9F54  40 82 00 4C */	bne lbl_800C9FA0
/* 800C9F58  7F E3 FB 78 */	mr r3, r31
/* 800C9F5C  48 01 2E 95 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800C9F60  2C 03 00 00 */	cmpwi r3, 0
/* 800C9F64  41 82 00 14 */	beq lbl_800C9F78
/* 800C9F68  7F E3 FB 78 */	mr r3, r31
/* 800C9F6C  38 80 00 00 */	li r4, 0
/* 800C9F70  4B FF 13 41 */	bl setBodyAngleXReadyAnime__9daAlink_cFi
/* 800C9F74  48 00 00 2C */	b lbl_800C9FA0
lbl_800C9F78:
/* 800C9F78  7F E3 FB 78 */	mr r3, r31
/* 800C9F7C  4B FF 10 05 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800C9F80  2C 03 00 00 */	cmpwi r3, 0
/* 800C9F84  40 82 00 1C */	bne lbl_800C9FA0
/* 800C9F88  38 7F 05 9C */	addi r3, r31, 0x59c
/* 800C9F8C  38 80 00 00 */	li r4, 0
/* 800C9F90  38 A0 00 04 */	li r5, 4
/* 800C9F94  38 C0 0C 00 */	li r6, 0xc00
/* 800C9F98  38 E0 01 80 */	li r7, 0x180
/* 800C9F9C  48 1A 65 A5 */	bl cLib_addCalcAngleS__FPsssss
lbl_800C9FA0:
/* 800C9FA0  7F E3 FB 78 */	mr r3, r31
/* 800C9FA4  3C 80 40 00 */	lis r4, 0x4000
/* 800C9FA8  48 00 61 E5 */	bl checkModeFlg__9daAlink_cCFUl
/* 800C9FAC  28 03 00 00 */	cmplwi r3, 0
/* 800C9FB0  40 82 00 1C */	bne lbl_800C9FCC
/* 800C9FB4  38 7F 05 9E */	addi r3, r31, 0x59e
/* 800C9FB8  38 80 00 00 */	li r4, 0
/* 800C9FBC  38 A0 00 04 */	li r5, 4
/* 800C9FC0  38 C0 0C 00 */	li r6, 0xc00
/* 800C9FC4  38 E0 01 80 */	li r7, 0x180
/* 800C9FC8  48 1A 65 79 */	bl cLib_addCalcAngleS__FPsssss
lbl_800C9FCC:
/* 800C9FCC  7F E3 FB 78 */	mr r3, r31
/* 800C9FD0  4B FD ED 15 */	bl setMatrix__9daAlink_cFv
/* 800C9FD4  7F E3 FB 78 */	mr r3, r31
/* 800C9FD8  4B FD 7F B9 */	bl setNeckAngle__9daAlink_cFv
/* 800C9FDC  88 7F 2F CC */	lbz r3, 0x2fcc(r31)
/* 800C9FE0  28 03 00 00 */	cmplwi r3, 0
/* 800C9FE4  41 82 00 0C */	beq lbl_800C9FF0
/* 800C9FE8  38 03 FF FF */	addi r0, r3, -1
/* 800C9FEC  98 1F 2F CC */	stb r0, 0x2fcc(r31)
lbl_800C9FF0:
/* 800C9FF0  7F E3 FB 78 */	mr r3, r31
/* 800C9FF4  48 07 73 D9 */	bl checkWolf__9daPy_py_cCFv
/* 800C9FF8  28 03 00 00 */	cmplwi r3, 0
/* 800C9FFC  40 82 01 54 */	bne lbl_800CA150
/* 800CA000  7F E3 FB 78 */	mr r3, r31
/* 800CA004  4B FD 50 31 */	bl setHatAngle__9daAlink_cFv
/* 800CA008  88 7F 2F B0 */	lbz r3, 0x2fb0(r31)
/* 800CA00C  28 03 00 00 */	cmplwi r3, 0
/* 800CA010  41 82 00 0C */	beq lbl_800CA01C
/* 800CA014  38 03 FF FF */	addi r0, r3, -1
/* 800CA018  98 1F 2F B0 */	stb r0, 0x2fb0(r31)
lbl_800CA01C:
/* 800CA01C  7F E3 FB 78 */	mr r3, r31
/* 800CA020  4B FD 94 11 */	bl footBgCheck__9daAlink_cFv
/* 800CA024  7F E3 FB 78 */	mr r3, r31
/* 800CA028  4B FD 99 91 */	bl handBgCheck__9daAlink_cFv
/* 800CA02C  A8 1F 05 9E */	lha r0, 0x59e(r31)
/* 800CA030  7C 00 0E 70 */	srawi r0, r0, 1
/* 800CA034  B0 1F 30 C8 */	sth r0, 0x30c8(r31)
/* 800CA038  7F E3 FB 78 */	mr r3, r31
/* 800CA03C  80 9F 06 50 */	lwz r4, 0x650(r31)
/* 800CA040  48 00 22 1D */	bl modelCalc__9daAlink_cFP8J3DModel
/* 800CA044  88 1F 2F CB */	lbz r0, 0x2fcb(r31)
/* 800CA048  28 00 00 00 */	cmplwi r0, 0
/* 800CA04C  41 82 00 D0 */	beq lbl_800CA11C
/* 800CA050  48 09 53 75 */	bl checkWoodShieldEquip__9daPy_py_cFv
/* 800CA054  2C 03 00 00 */	cmpwi r3, 0
/* 800CA058  41 82 00 BC */	beq lbl_800CA114
/* 800CA05C  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 800CA060  C0 3F 33 B4 */	lfs f1, 0x33b4(r31)
/* 800CA064  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800CA068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CA06C  40 80 00 A8 */	bge lbl_800CA114
/* 800CA070  88 7F 2F CB */	lbz r3, 0x2fcb(r31)
/* 800CA074  38 03 FF FF */	addi r0, r3, -1
/* 800CA078  98 1F 2F CB */	stb r0, 0x2fcb(r31)
/* 800CA07C  88 1F 2F CB */	lbz r0, 0x2fcb(r31)
/* 800CA080  28 00 00 00 */	cmplwi r0, 0
/* 800CA084  40 82 00 98 */	bne lbl_800CA11C
/* 800CA088  38 60 00 FF */	li r3, 0xff
/* 800CA08C  38 80 00 01 */	li r4, 1
/* 800CA090  48 15 45 45 */	bl dMeter2Info_setShield__FUcb
/* 800CA094  7F E3 FB 78 */	mr r3, r31
/* 800CA098  38 80 00 01 */	li r4, 1
/* 800CA09C  48 01 27 01 */	bl stickArrowIncrement__9daAlink_cFi
/* 800CA0A0  7F E3 FB 78 */	mr r3, r31
/* 800CA0A4  48 05 B5 85 */	bl setWoodShieldBurnOutEffect__9daAlink_cFv
/* 800CA0A8  38 60 07 FF */	li r3, 0x7ff
/* 800CA0AC  38 80 00 5A */	li r4, 0x5a
/* 800CA0B0  38 A0 00 00 */	li r5, 0
/* 800CA0B4  48 07 79 05 */	bl dMeter2Info_setFloatingMessage__FUssb
/* 800CA0B8  48 07 71 E9 */	bl dComIfGp_getStage__Fv
/* 800CA0BC  81 83 00 00 */	lwz r12, 0(r3)
/* 800CA0C0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 800CA0C4  7D 89 03 A6 */	mtctr r12
/* 800CA0C8  4E 80 04 21 */	bctrl 
/* 800CA0CC  48 07 71 C9 */	bl dStage_stagInfo_GetSaveTbl__FP21stage_stag_info_class
/* 800CA0D0  2C 03 00 11 */	cmpwi r3, 0x11
/* 800CA0D4  40 82 00 20 */	bne lbl_800CA0F4
/* 800CA0D8  38 60 00 2C */	li r3, 0x2c
/* 800CA0DC  48 07 71 89 */	bl dComIfGs_isItemFirstBit__FUc
/* 800CA0E0  2C 03 00 00 */	cmpwi r3, 0
/* 800CA0E4  40 82 00 10 */	bne lbl_800CA0F4
/* 800CA0E8  7F E3 FB 78 */	mr r3, r31
/* 800CA0EC  38 80 00 6F */	li r4, 0x6f
/* 800CA0F0  48 07 71 41 */	bl fopAcM_onSwitch__FPC10fopAc_ac_ci
lbl_800CA0F4:
/* 800CA0F4  7F E3 FB 78 */	mr r3, r31
/* 800CA0F8  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200AD@ha */
/* 800CA0FC  38 84 00 AD */	addi r4, r4, 0x00AD /* 0x000200AD@l */
/* 800CA100  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800CA104  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800CA108  7D 89 03 A6 */	mtctr r12
/* 800CA10C  4E 80 04 21 */	bctrl 
/* 800CA110  48 00 00 0C */	b lbl_800CA11C
lbl_800CA114:
/* 800CA114  7F E3 FB 78 */	mr r3, r31
/* 800CA118  48 05 B4 A5 */	bl clearWoodShieldBurnEffect__9daAlink_cFv
lbl_800CA11C:
/* 800CA11C  48 07 70 F5 */	bl checkShieldGet__9daPy_py_cFv
/* 800CA120  2C 03 00 00 */	cmpwi r3, 0
/* 800CA124  41 82 00 1C */	beq lbl_800CA140
/* 800CA128  48 09 52 9D */	bl checkWoodShieldEquip__9daPy_py_cFv
/* 800CA12C  2C 03 00 00 */	cmpwi r3, 0
/* 800CA130  40 82 00 10 */	bne lbl_800CA140
/* 800CA134  7F E3 FB 78 */	mr r3, r31
/* 800CA138  38 80 00 01 */	li r4, 1
/* 800CA13C  48 01 26 61 */	bl stickArrowIncrement__9daAlink_cFi
lbl_800CA140:
/* 800CA140  7F E3 FB 78 */	mr r3, r31
/* 800CA144  38 80 00 00 */	li r4, 0
/* 800CA148  4B FD F3 09 */	bl setItemMatrix__9daAlink_cFi
/* 800CA14C  48 00 01 54 */	b lbl_800CA2A0
lbl_800CA150:
/* 800CA150  83 6D 8A 98 */	lwz r27, m_midnaActor__9daPy_py_c(r13)
/* 800CA154  88 1F 2F BF */	lbz r0, 0x2fbf(r31)
/* 800CA158  28 00 00 00 */	cmplwi r0, 0
/* 800CA15C  40 82 00 D4 */	bne lbl_800CA230
/* 800CA160  48 07 78 BD */	bl checkMidnaTired__9daMidna_cFv
/* 800CA164  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CA168  40 82 00 14 */	bne lbl_800CA17C
/* 800CA16C  7F 63 DB 78 */	mr r3, r27
/* 800CA170  48 07 78 A1 */	bl checkForceTiredColor__9daMidna_cCFv
/* 800CA174  28 03 00 00 */	cmplwi r3, 0
/* 800CA178  41 82 00 68 */	beq lbl_800CA1E0
lbl_800CA17C:
/* 800CA17C  7F 63 DB 78 */	mr r3, r27
/* 800CA180  48 07 78 85 */	bl checkForceNormalColor__9daMidna_cCFv
/* 800CA184  28 03 00 00 */	cmplwi r3, 0
/* 800CA188  40 82 00 58 */	bne lbl_800CA1E0
/* 800CA18C  80 7F 07 9C */	lwz r3, 0x79c(r31)
/* 800CA190  80 63 00 04 */	lwz r3, 4(r3)
/* 800CA194  38 63 00 58 */	addi r3, r3, 0x58
/* 800CA198  80 9F 07 AC */	lwz r4, 0x7ac(r31)
/* 800CA19C  48 26 5C D5 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800CA1A0  80 7F 07 A0 */	lwz r3, 0x7a0(r31)
/* 800CA1A4  80 63 00 04 */	lwz r3, 4(r3)
/* 800CA1A8  38 63 00 58 */	addi r3, r3, 0x58
/* 800CA1AC  80 9F 07 B0 */	lwz r4, 0x7b0(r31)
/* 800CA1B0  48 26 5C C1 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800CA1B4  80 7F 07 A4 */	lwz r3, 0x7a4(r31)
/* 800CA1B8  80 63 00 04 */	lwz r3, 4(r3)
/* 800CA1BC  38 63 00 58 */	addi r3, r3, 0x58
/* 800CA1C0  80 9F 07 B4 */	lwz r4, 0x7b4(r31)
/* 800CA1C4  48 26 5C AD */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800CA1C8  80 7F 07 A8 */	lwz r3, 0x7a8(r31)
/* 800CA1CC  80 63 00 04 */	lwz r3, 4(r3)
/* 800CA1D0  38 63 00 58 */	addi r3, r3, 0x58
/* 800CA1D4  80 9F 07 B8 */	lwz r4, 0x7b8(r31)
/* 800CA1D8  48 26 5C 99 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800CA1DC  48 00 00 54 */	b lbl_800CA230
lbl_800CA1E0:
/* 800CA1E0  80 7F 07 9C */	lwz r3, 0x79c(r31)
/* 800CA1E4  80 63 00 04 */	lwz r3, 4(r3)
/* 800CA1E8  38 63 00 58 */	addi r3, r3, 0x58
/* 800CA1EC  80 9F 07 AC */	lwz r4, 0x7ac(r31)
/* 800CA1F0  48 26 56 91 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800CA1F4  80 7F 07 A0 */	lwz r3, 0x7a0(r31)
/* 800CA1F8  80 63 00 04 */	lwz r3, 4(r3)
/* 800CA1FC  38 63 00 58 */	addi r3, r3, 0x58
/* 800CA200  80 9F 07 B0 */	lwz r4, 0x7b0(r31)
/* 800CA204  48 26 56 7D */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800CA208  80 7F 07 A4 */	lwz r3, 0x7a4(r31)
/* 800CA20C  80 63 00 04 */	lwz r3, 4(r3)
/* 800CA210  38 63 00 58 */	addi r3, r3, 0x58
/* 800CA214  80 9F 07 B4 */	lwz r4, 0x7b4(r31)
/* 800CA218  48 26 56 69 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800CA21C  80 7F 07 A8 */	lwz r3, 0x7a8(r31)
/* 800CA220  80 63 00 04 */	lwz r3, 4(r3)
/* 800CA224  38 63 00 58 */	addi r3, r3, 0x58
/* 800CA228  80 9F 07 B8 */	lwz r4, 0x7b8(r31)
/* 800CA22C  48 26 56 55 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_800CA230:
/* 800CA230  7F E3 FB 78 */	mr r3, r31
/* 800CA234  48 06 14 F1 */	bl wolfFootBgCheck__9daAlink_cFv
/* 800CA238  7F E3 FB 78 */	mr r3, r31
/* 800CA23C  48 05 DB CD */	bl setWolfTailAngle__9daAlink_cFv
/* 800CA240  7F E3 FB 78 */	mr r3, r31
/* 800CA244  80 9F 06 50 */	lwz r4, 0x650(r31)
/* 800CA248  48 00 20 15 */	bl modelCalc__9daAlink_cFP8J3DModel
/* 800CA24C  7F E3 FB 78 */	mr r3, r31
/* 800CA250  48 05 F7 59 */	bl checkWolfUseAbility__9daAlink_cFv
/* 800CA254  A8 1F 30 AC */	lha r0, 0x30ac(r31)
/* 800CA258  2C 00 00 00 */	cmpwi r0, 0
/* 800CA25C  41 82 00 28 */	beq lbl_800CA284
/* 800CA260  88 7F 2F A9 */	lbz r3, 0x2fa9(r31)
/* 800CA264  38 03 00 01 */	addi r0, r3, 1
/* 800CA268  98 1F 2F A9 */	stb r0, 0x2fa9(r31)
/* 800CA26C  88 1F 2F A9 */	lbz r0, 0x2fa9(r31)
/* 800CA270  28 00 00 1E */	cmplwi r0, 0x1e
/* 800CA274  40 81 00 24 */	ble lbl_800CA298
/* 800CA278  38 00 00 1E */	li r0, 0x1e
/* 800CA27C  98 1F 2F A9 */	stb r0, 0x2fa9(r31)
/* 800CA280  48 00 00 18 */	b lbl_800CA298
lbl_800CA284:
/* 800CA284  88 7F 2F A9 */	lbz r3, 0x2fa9(r31)
/* 800CA288  28 03 00 00 */	cmplwi r3, 0
/* 800CA28C  41 82 00 0C */	beq lbl_800CA298
/* 800CA290  38 03 FF FF */	addi r0, r3, -1
/* 800CA294  98 1F 2F A9 */	stb r0, 0x2fa9(r31)
lbl_800CA298:
/* 800CA298  7F E3 FB 78 */	mr r3, r31
/* 800CA29C  4B FD FC B1 */	bl setWolfItemMatrix__9daAlink_cFv
lbl_800CA2A0:
/* 800CA2A0  7F E3 FB 78 */	mr r3, r31
/* 800CA2A4  48 00 5D 7D */	bl checkFmChainGrabAnime__9daAlink_cCFv
/* 800CA2A8  2C 03 00 00 */	cmpwi r3, 0
/* 800CA2AC  41 82 00 0C */	beq lbl_800CA2B8
/* 800CA2B0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800CA2B4  D0 1F 1F 50 */	stfs f0, 0x1f50(r31)
lbl_800CA2B8:
/* 800CA2B8  7F E3 FB 78 */	mr r3, r31
/* 800CA2BC  4B FD E0 55 */	bl setBodyPartPos__9daAlink_cFv
/* 800CA2C0  7F E3 FB 78 */	mr r3, r31
/* 800CA2C4  48 07 71 09 */	bl checkWolf__9daPy_py_cCFv
/* 800CA2C8  28 03 00 00 */	cmplwi r3, 0
/* 800CA2CC  40 82 00 2C */	bne lbl_800CA2F8
/* 800CA2D0  7F E3 FB 78 */	mr r3, r31
/* 800CA2D4  3C 80 00 80 */	lis r4, 0x80
/* 800CA2D8  48 07 72 1D */	bl checkEndResetFlg0__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG0
/* 800CA2DC  28 03 00 00 */	cmplwi r3, 0
/* 800CA2E0  41 82 00 18 */	beq lbl_800CA2F8
/* 800CA2E4  7F E3 FB 78 */	mr r3, r31
/* 800CA2E8  4B FD 4D 4D */	bl setHatAngle__9daAlink_cFv
/* 800CA2EC  7F E3 FB 78 */	mr r3, r31
/* 800CA2F0  80 9F 06 50 */	lwz r4, 0x650(r31)
/* 800CA2F4  48 00 1F 69 */	bl modelCalc__9daAlink_cFP8J3DModel
lbl_800CA2F8:
/* 800CA2F8  7F E3 FB 78 */	mr r3, r31
/* 800CA2FC  4B FE 72 51 */	bl setHangWaterY__9daAlink_cFv
/* 800CA300  7F E3 FB 78 */	mr r3, r31
/* 800CA304  4B FE 1A B5 */	bl setCollision__9daAlink_cFv
/* 800CA308  7F E3 FB 78 */	mr r3, r31
/* 800CA30C  4B FD E4 ED */	bl setAttentionPos__9daAlink_cFv
/* 800CA310  7F E3 FB 78 */	mr r3, r31
/* 800CA314  4B FF 73 F1 */	bl setLight__9daAlink_cFv
/* 800CA318  7F E3 FB 78 */	mr r3, r31
/* 800CA31C  48 05 70 6D */	bl setEffect__9daAlink_cFv
/* 800CA320  88 1F 2F BF */	lbz r0, 0x2fbf(r31)
/* 800CA324  28 00 00 00 */	cmplwi r0, 0
/* 800CA328  41 82 00 5C */	beq lbl_800CA384
/* 800CA32C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800CA330  38 63 00 24 */	addi r3, r3, 0x24
/* 800CA334  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800CA338  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800CA33C  48 27 C1 75 */	bl PSMTXCopy
/* 800CA340  7F E3 FB 78 */	mr r3, r31
/* 800CA344  48 07 70 89 */	bl checkWolf__9daPy_py_cCFv
/* 800CA348  28 03 00 00 */	cmplwi r3, 0
/* 800CA34C  40 82 00 14 */	bne lbl_800CA360
/* 800CA350  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800CA354  FC 40 08 90 */	fmr f2, f1
/* 800CA358  C0 62 92 E0 */	lfs f3, lit_6845(r2)
/* 800CA35C  4B F4 2A 41 */	bl transM__14mDoMtx_stack_cFfff
lbl_800CA360:
/* 800CA360  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 800CA364  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800CA368  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800CA36C  48 00 5C 89 */	bl setBaseTRMtx__8J3DModelFPA4_f
/* 800CA370  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 800CA374  81 83 00 00 */	lwz r12, 0(r3)
/* 800CA378  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800CA37C  7D 89 03 A6 */	mtctr r12
/* 800CA380  4E 80 04 21 */	bctrl 
lbl_800CA384:
/* 800CA384  38 7F 20 B4 */	addi r3, r31, 0x20b4
/* 800CA388  48 05 BF D1 */	bl update__20daAlink_lockCursor_cFv
/* 800CA38C  7F E3 FB 78 */	mr r3, r31
/* 800CA390  48 01 9B C1 */	bl setGrabItemPos__9daAlink_cFv
/* 800CA394  7F E3 FB 78 */	mr r3, r31
/* 800CA398  4B FF 3F 29 */	bl checkRoofRestart__9daAlink_cFv
/* 800CA39C  38 00 00 3F */	li r0, 0x3f
/* 800CA3A0  B0 1F 31 12 */	sth r0, 0x3112(r31)
/* 800CA3A4  38 00 00 00 */	li r0, 0
/* 800CA3A8  90 1F 28 08 */	stw r0, 0x2808(r31)
/* 800CA3AC  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800CA3B0  38 80 00 00 */	li r4, 0
/* 800CA3B4  48 00 5C 2D */	bl getAnmMtx__8J3DModelFi
/* 800CA3B8  38 9E 4A 30 */	addi r4, r30, 0x4a30
/* 800CA3BC  38 BF 35 34 */	addi r5, r31, 0x3534
/* 800CA3C0  48 00 5C 01 */	bl cMtx_multVec__FPA4_CfPC3VecP3Vec
/* 800CA3C4  7F E3 FB 78 */	mr r3, r31
/* 800CA3C8  38 80 00 10 */	li r4, 0x10
/* 800CA3CC  48 07 70 2D */	bl checkResetFlg0__9daPy_py_cCFQ29daPy_py_c10daPy_RFLG0
/* 800CA3D0  28 03 00 00 */	cmplwi r3, 0
/* 800CA3D4  41 82 00 14 */	beq lbl_800CA3E8
/* 800CA3D8  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800CA3DC  38 80 00 01 */	li r4, 1
/* 800CA3E0  48 1F A4 F9 */	bl setResumeAttack__14Z2CreatureLinkFb
/* 800CA3E4  48 00 00 10 */	b lbl_800CA3F4
lbl_800CA3E8:
/* 800CA3E8  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800CA3EC  38 80 00 00 */	li r4, 0
/* 800CA3F0  48 1F A4 E9 */	bl setResumeAttack__14Z2CreatureLinkFb
lbl_800CA3F4:
/* 800CA3F4  7F E3 FB 78 */	mr r3, r31
/* 800CA3F8  48 04 B8 29 */	bl checkEventRun__9daAlink_cCFv
/* 800CA3FC  2C 03 00 00 */	cmpwi r3, 0
/* 800CA400  40 82 00 90 */	bne lbl_800CA490
/* 800CA404  7F E3 FB 78 */	mr r3, r31
/* 800CA408  38 80 00 80 */	li r4, 0x80
/* 800CA40C  48 07 70 05 */	bl checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
/* 800CA410  28 03 00 00 */	cmplwi r3, 0
/* 800CA414  41 82 00 7C */	beq lbl_800CA490
/* 800CA418  C0 5F 33 B4 */	lfs f2, 0x33b4(r31)
/* 800CA41C  C0 22 93 D4 */	lfs f1, lit_11442(r2)
/* 800CA420  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800CA424  EC 01 00 2A */	fadds f0, f1, f0
/* 800CA428  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800CA42C  41 81 00 18 */	bgt lbl_800CA444
/* 800CA430  7F E3 FB 78 */	mr r3, r31
/* 800CA434  3C 80 00 04 */	lis r4, 4
/* 800CA438  48 00 5D 55 */	bl checkModeFlg__9daAlink_cCFUl
/* 800CA43C  28 03 00 00 */	cmplwi r3, 0
/* 800CA440  41 82 00 50 */	beq lbl_800CA490
lbl_800CA444:
/* 800CA444  38 7F 1A F0 */	addi r3, r31, 0x1af0
/* 800CA448  38 80 00 01 */	li r4, 1
/* 800CA44C  4B FD 7D 95 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800CA450  7C 60 07 34 */	extsh r0, r3
/* 800CA454  2C 00 00 82 */	cmpwi r0, 0x82
/* 800CA458  40 82 00 38 */	bne lbl_800CA490
/* 800CA45C  88 7F 2F BA */	lbz r3, 0x2fba(r31)
/* 800CA460  28 03 00 00 */	cmplwi r3, 0
/* 800CA464  41 82 00 10 */	beq lbl_800CA474
/* 800CA468  38 03 FF FF */	addi r0, r3, -1
/* 800CA46C  98 1F 2F BA */	stb r0, 0x2fba(r31)
/* 800CA470  48 00 00 2C */	b lbl_800CA49C
lbl_800CA474:
/* 800CA474  38 7E 00 0C */	addi r3, r30, 0xc
/* 800CA478  A8 03 00 0A */	lha r0, 0xa(r3)
/* 800CA47C  98 1F 2F BA */	stb r0, 0x2fba(r31)
/* 800CA480  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800CA484  38 60 00 01 */	li r3, 1
/* 800CA488  48 00 5B 1D */	bl dComIfGp_setItemLifeCount__FfUc
/* 800CA48C  48 00 00 10 */	b lbl_800CA49C
lbl_800CA490:
/* 800CA490  38 7E 00 0C */	addi r3, r30, 0xc
/* 800CA494  A8 03 00 0A */	lha r0, 0xa(r3)
/* 800CA498  98 1F 2F BA */	stb r0, 0x2fba(r31)
lbl_800CA49C:
/* 800CA49C  7F E3 FB 78 */	mr r3, r31
/* 800CA4A0  48 00 5A AD */	bl checkAttentionLock__9daAlink_cFv
/* 800CA4A4  2C 03 00 00 */	cmpwi r3, 0
/* 800CA4A8  40 82 00 28 */	bne lbl_800CA4D0
/* 800CA4AC  7F E3 FB 78 */	mr r3, r31
/* 800CA4B0  4B FF 0A D1 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800CA4B4  2C 03 00 00 */	cmpwi r3, 0
/* 800CA4B8  40 82 00 20 */	bne lbl_800CA4D8
/* 800CA4BC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800CA4C0  28 00 00 CB */	cmplwi r0, 0xcb
/* 800CA4C4  41 82 00 14 */	beq lbl_800CA4D8
/* 800CA4C8  28 00 00 C8 */	cmplwi r0, 0xc8
/* 800CA4CC  41 82 00 0C */	beq lbl_800CA4D8
lbl_800CA4D0:
/* 800CA4D0  38 00 00 00 */	li r0, 0
/* 800CA4D4  B0 1F 30 8E */	sth r0, 0x308e(r31)
lbl_800CA4D8:
/* 800CA4D8  7F E3 FB 78 */	mr r3, r31
/* 800CA4DC  48 04 E7 BD */	bl checkDeadHP__9daAlink_cFv
/* 800CA4E0  2C 03 00 00 */	cmpwi r3, 0
/* 800CA4E4  41 82 00 14 */	beq lbl_800CA4F8
/* 800CA4E8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 800CA4EC  38 80 00 02 */	li r4, 2
/* 800CA4F0  48 07 6D 11 */	bl offCondition__11dEvt_info_cFUs
/* 800CA4F4  48 00 01 90 */	b lbl_800CA684
lbl_800CA4F8:
/* 800CA4F8  7F E3 FB 78 */	mr r3, r31
/* 800CA4FC  48 07 6F D1 */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 800CA500  28 03 00 00 */	cmplwi r3, 0
/* 800CA504  40 82 01 54 */	bne lbl_800CA658
/* 800CA508  38 7F 19 70 */	addi r3, r31, 0x1970
/* 800CA50C  48 07 6E F9 */	bl ChkGroundHit__9dBgS_AcchCFv
/* 800CA510  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CA514  41 82 00 30 */	beq lbl_800CA544
/* 800CA518  38 61 00 48 */	addi r3, r1, 0x48
/* 800CA51C  48 07 6C D5 */	bl __ct__8cM3dGPlaFv
/* 800CA520  7F A3 EB 78 */	mr r3, r29
/* 800CA524  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800CA528  38 A1 00 48 */	addi r5, r1, 0x48
/* 800CA52C  4B FA A2 19 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800CA530  C3 E1 00 4C */	lfs f31, 0x4c(r1)
/* 800CA534  38 61 00 48 */	addi r3, r1, 0x48
/* 800CA538  38 80 FF FF */	li r4, -1
/* 800CA53C  4B F5 36 55 */	bl __dt__8cM3dGPlaFv
/* 800CA540  48 00 00 08 */	b lbl_800CA548
lbl_800CA544:
/* 800CA544  C3 E2 92 BC */	lfs f31, lit_6041(r2)
lbl_800CA548:
/* 800CA548  FC 20 F8 90 */	fmr f1, f31
/* 800CA54C  48 19 DC 99 */	bl cBgW_CheckBGround__Ff
/* 800CA550  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CA554  41 82 00 2C */	beq lbl_800CA580
/* 800CA558  7F E3 FB 78 */	mr r3, r31
/* 800CA55C  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070C52@ha */
/* 800CA560  38 84 0C 52 */	addi r4, r4, 0x0C52 /* 0x00070C52@l */
/* 800CA564  48 00 5C 29 */	bl checkModeFlg__9daAlink_cCFUl
/* 800CA568  28 03 00 00 */	cmplwi r3, 0
/* 800CA56C  40 82 00 14 */	bne lbl_800CA580
/* 800CA570  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 800CA574  38 80 00 5D */	li r4, 0x5d
/* 800CA578  48 07 6C 69 */	bl onCondition__11dEvt_info_cFUs
/* 800CA57C  48 00 01 08 */	b lbl_800CA684
lbl_800CA580:
/* 800CA580  7F E3 FB 78 */	mr r3, r31
/* 800CA584  3C 80 00 04 */	lis r4, 4
/* 800CA588  48 00 5C 05 */	bl checkModeFlg__9daAlink_cCFUl
/* 800CA58C  28 03 00 00 */	cmplwi r3, 0
/* 800CA590  40 82 00 80 */	bne lbl_800CA610
/* 800CA594  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800CA598  28 00 01 13 */	cmplwi r0, 0x113
/* 800CA59C  41 82 00 74 */	beq lbl_800CA610
/* 800CA5A0  7F E3 FB 78 */	mr r3, r31
/* 800CA5A4  48 00 5B 49 */	bl checkReinRide__9daAlink_cCFv
/* 800CA5A8  28 03 00 00 */	cmplwi r3, 0
/* 800CA5AC  40 82 00 3C */	bne lbl_800CA5E8
/* 800CA5B0  7F E3 FB 78 */	mr r3, r31
/* 800CA5B4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800CA5B8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800CA5BC  7D 89 03 A6 */	mtctr r12
/* 800CA5C0  4E 80 04 21 */	bctrl 
/* 800CA5C4  28 03 00 00 */	cmplwi r3, 0
/* 800CA5C8  40 82 00 20 */	bne lbl_800CA5E8
/* 800CA5CC  7F E3 FB 78 */	mr r3, r31
/* 800CA5D0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800CA5D4  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800CA5D8  7D 89 03 A6 */	mtctr r12
/* 800CA5DC  4E 80 04 21 */	bctrl 
/* 800CA5E0  28 03 00 00 */	cmplwi r3, 0
/* 800CA5E4  41 82 00 A0 */	beq lbl_800CA684
lbl_800CA5E8:
/* 800CA5E8  7F E3 FB 78 */	mr r3, r31
/* 800CA5EC  3C 80 00 08 */	lis r4, 8
/* 800CA5F0  48 07 6B E5 */	bl checkNoResetFlg3__9daPy_py_cCFQ29daPy_py_c9daPy_FLG3
/* 800CA5F4  28 03 00 00 */	cmplwi r3, 0
/* 800CA5F8  40 82 00 8C */	bne lbl_800CA684
/* 800CA5FC  7F E3 FB 78 */	mr r3, r31
/* 800CA600  38 80 00 02 */	li r4, 2
/* 800CA604  48 00 5B 89 */	bl checkModeFlg__9daAlink_cCFUl
/* 800CA608  28 03 00 00 */	cmplwi r3, 0
/* 800CA60C  40 82 00 78 */	bne lbl_800CA684
lbl_800CA610:
/* 800CA610  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 800CA614  38 80 00 01 */	li r4, 1
/* 800CA618  48 07 6B C9 */	bl onCondition__11dEvt_info_cFUs
/* 800CA61C  7F E3 FB 78 */	mr r3, r31
/* 800CA620  48 00 5A CD */	bl checkReinRide__9daAlink_cCFv
/* 800CA624  28 03 00 00 */	cmplwi r3, 0
/* 800CA628  40 82 00 20 */	bne lbl_800CA648
/* 800CA62C  7F E3 FB 78 */	mr r3, r31
/* 800CA630  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800CA634  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800CA638  7D 89 03 A6 */	mtctr r12
/* 800CA63C  4E 80 04 21 */	bctrl 
/* 800CA640  28 03 00 00 */	cmplwi r3, 0
/* 800CA644  41 82 00 40 */	beq lbl_800CA684
lbl_800CA648:
/* 800CA648  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 800CA64C  38 80 00 08 */	li r4, 8
/* 800CA650  48 07 6B 91 */	bl onCondition__11dEvt_info_cFUs
/* 800CA654  48 00 00 30 */	b lbl_800CA684
lbl_800CA658:
/* 800CA658  7F E3 FB 78 */	mr r3, r31
/* 800CA65C  48 07 6E 71 */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 800CA660  28 03 00 00 */	cmplwi r3, 0
/* 800CA664  41 82 00 20 */	beq lbl_800CA684
/* 800CA668  C0 3F 36 AC */	lfs f1, 0x36ac(r31)
/* 800CA66C  48 19 DB 79 */	bl cBgW_CheckBGround__Ff
/* 800CA670  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CA674  41 82 00 10 */	beq lbl_800CA684
/* 800CA678  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 800CA67C  38 80 00 01 */	li r4, 1
/* 800CA680  48 07 6B 61 */	bl onCondition__11dEvt_info_cFUs
lbl_800CA684:
/* 800CA684  7F E3 FB 78 */	mr r3, r31
/* 800CA688  3C 80 00 04 */	lis r4, 4
/* 800CA68C  48 07 6C B5 */	bl checkEndResetFlg1__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG1
/* 800CA690  28 03 00 00 */	cmplwi r3, 0
/* 800CA694  41 82 00 2C */	beq lbl_800CA6C0
/* 800CA698  7F E3 FB 78 */	mr r3, r31
/* 800CA69C  4B FC D1 19 */	bl checkMidnaRide__9daPy_py_cCFv
/* 800CA6A0  28 03 00 00 */	cmplwi r3, 0
/* 800CA6A4  41 82 00 1C */	beq lbl_800CA6C0
/* 800CA6A8  7F E3 FB 78 */	mr r3, r31
/* 800CA6AC  48 07 6D 21 */	bl checkWolf__9daPy_py_cCFv
/* 800CA6B0  28 03 00 00 */	cmplwi r3, 0
/* 800CA6B4  41 82 00 0C */	beq lbl_800CA6C0
/* 800CA6B8  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 800CA6BC  48 07 73 39 */	bl onForcePanic__9daMidna_cFv
lbl_800CA6C0:
/* 800CA6C0  38 00 00 00 */	li r0, 0
/* 800CA6C4  B0 1F 30 FE */	sth r0, 0x30fe(r31)
/* 800CA6C8  38 7F 37 2C */	addi r3, r31, 0x372c
/* 800CA6CC  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 800CA6D0  38 84 0C F4 */	addi r4, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 800CA6D4  4B FC D1 05 */	bl __as__4cXyzFRC4cXyz
/* 800CA6D8  38 00 00 00 */	li r0, 0
/* 800CA6DC  98 1F 2F B8 */	stb r0, 0x2fb8(r31)
/* 800CA6E0  7F E3 FB 78 */	mr r3, r31
/* 800CA6E4  4B FF 57 19 */	bl checkMagicArmorWearAbility__9daAlink_cCFv
/* 800CA6E8  2C 03 00 00 */	cmpwi r3, 0
/* 800CA6EC  41 82 00 F4 */	beq lbl_800CA7E0
/* 800CA6F0  88 1F 2F BF */	lbz r0, 0x2fbf(r31)
/* 800CA6F4  28 00 00 00 */	cmplwi r0, 0
/* 800CA6F8  40 82 00 E8 */	bne lbl_800CA7E0
/* 800CA6FC  7F E3 FB 78 */	mr r3, r31
/* 800CA700  48 00 D0 C9 */	bl checkMagicArmorNoDamage__9daAlink_cFv
/* 800CA704  2C 03 00 00 */	cmpwi r3, 0
/* 800CA708  41 82 00 3C */	beq lbl_800CA744
/* 800CA70C  7F E3 FB 78 */	mr r3, r31
/* 800CA710  48 04 B5 11 */	bl checkEventRun__9daAlink_cCFv
/* 800CA714  2C 03 00 00 */	cmpwi r3, 0
/* 800CA718  40 82 00 2C */	bne lbl_800CA744
/* 800CA71C  88 7F 2F C3 */	lbz r3, 0x2fc3(r31)
/* 800CA720  28 03 00 00 */	cmplwi r3, 0
/* 800CA724  40 82 00 18 */	bne lbl_800CA73C
/* 800CA728  38 00 00 0A */	li r0, 0xa
/* 800CA72C  98 1F 2F C3 */	stb r0, 0x2fc3(r31)
/* 800CA730  38 60 FF FF */	li r3, -1
/* 800CA734  48 07 72 6D */	bl dComIfGp_setItemRupeeCount__Fl
/* 800CA738  48 00 00 0C */	b lbl_800CA744
lbl_800CA73C:
/* 800CA73C  38 03 FF FF */	addi r0, r3, -1
/* 800CA740  98 1F 2F C3 */	stb r0, 0x2fc3(r31)
lbl_800CA744:
/* 800CA744  48 07 72 4D */	bl dComIfGs_getRupee__Fv
/* 800CA748  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800CA74C  40 82 00 48 */	bne lbl_800CA794
/* 800CA750  88 1F 2F D7 */	lbz r0, 0x2fd7(r31)
/* 800CA754  28 00 00 00 */	cmplwi r0, 0
/* 800CA758  41 82 00 3C */	beq lbl_800CA794
/* 800CA75C  7F E3 FB 78 */	mr r3, r31
/* 800CA760  38 80 00 00 */	li r4, 0
/* 800CA764  4B FF 0B C1 */	bl setMagicArmorBrk__9daAlink_cFi
/* 800CA768  7F E3 FB 78 */	mr r3, r31
/* 800CA76C  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200D7@ha */
/* 800CA770  38 84 00 D7 */	addi r4, r4, 0x00D7 /* 0x000200D7@l */
/* 800CA774  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800CA778  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800CA77C  7D 89 03 A6 */	mtctr r12
/* 800CA780  4E 80 04 21 */	bctrl 
/* 800CA784  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800CA788  38 80 00 05 */	li r4, 5
/* 800CA78C  48 07 71 FD */	bl setLinkState__14Z2CreatureLinkFUc
/* 800CA790  48 00 00 50 */	b lbl_800CA7E0
lbl_800CA794:
/* 800CA794  48 07 71 FD */	bl dComIfGs_getRupee__Fv
/* 800CA798  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800CA79C  41 82 00 44 */	beq lbl_800CA7E0
/* 800CA7A0  88 1F 2F D7 */	lbz r0, 0x2fd7(r31)
/* 800CA7A4  28 00 00 00 */	cmplwi r0, 0
/* 800CA7A8  40 82 00 38 */	bne lbl_800CA7E0
/* 800CA7AC  7F E3 FB 78 */	mr r3, r31
/* 800CA7B0  38 80 00 01 */	li r4, 1
/* 800CA7B4  4B FF 0B 71 */	bl setMagicArmorBrk__9daAlink_cFi
/* 800CA7B8  7F E3 FB 78 */	mr r3, r31
/* 800CA7BC  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200BE@ha */
/* 800CA7C0  38 84 00 BE */	addi r4, r4, 0x00BE /* 0x000200BE@l */
/* 800CA7C4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800CA7C8  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800CA7CC  7D 89 03 A6 */	mtctr r12
/* 800CA7D0  4E 80 04 21 */	bctrl 
/* 800CA7D4  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800CA7D8  38 80 00 04 */	li r4, 4
/* 800CA7DC  48 07 71 AD */	bl setLinkState__14Z2CreatureLinkFUc
lbl_800CA7E0:
/* 800CA7E0  7F E3 FB 78 */	mr r3, r31
/* 800CA7E4  48 07 6B E9 */	bl checkWolf__9daPy_py_cCFv
/* 800CA7E8  28 03 00 00 */	cmplwi r3, 0
/* 800CA7EC  40 82 00 8C */	bne lbl_800CA878
/* 800CA7F0  3B 80 00 00 */	li r28, 0
/* 800CA7F4  48 00 00 78 */	b lbl_800CA86C
lbl_800CA7F8:
/* 800CA7F8  57 9D 06 3E */	clrlwi r29, r28, 0x18
/* 800CA7FC  38 1D 00 01 */	addi r0, r29, 1
/* 800CA800  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800CA804  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 800CA808  7C 00 1A 78 */	xor r0, r0, r3
/* 800CA80C  7C 03 00 50 */	subf r0, r3, r0
/* 800CA810  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 800CA814  7F A3 EB 78 */	mr r3, r29
/* 800CA818  4B F6 37 05 */	bl dComIfGp_getSelectItem__Fi
/* 800CA81C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CA820  28 00 00 60 */	cmplwi r0, 0x60
/* 800CA824  40 82 00 44 */	bne lbl_800CA868
/* 800CA828  88 7F 2F AE */	lbz r3, 0x2fae(r31)
/* 800CA82C  38 00 00 01 */	li r0, 1
/* 800CA830  7C 00 E8 30 */	slw r0, r0, r29
/* 800CA834  7C 60 00 39 */	and. r0, r3, r0
/* 800CA838  41 82 00 30 */	beq lbl_800CA868
/* 800CA83C  7F 63 DB 78 */	mr r3, r27
/* 800CA840  4B F6 36 DD */	bl dComIfGp_getSelectItem__Fi
/* 800CA844  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CA848  28 00 00 60 */	cmplwi r0, 0x60
/* 800CA84C  40 82 00 1C */	bne lbl_800CA868
/* 800CA850  88 7F 2F AE */	lbz r3, 0x2fae(r31)
/* 800CA854  38 00 00 01 */	li r0, 1
/* 800CA858  7C 00 D8 30 */	slw r0, r0, r27
/* 800CA85C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800CA860  7C 60 03 78 */	or r0, r3, r0
/* 800CA864  98 1F 2F AE */	stb r0, 0x2fae(r31)
lbl_800CA868:
/* 800CA868  3B 9C 00 01 */	addi r28, r28, 1
lbl_800CA86C:
/* 800CA86C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800CA870  28 00 00 02 */	cmplwi r0, 2
/* 800CA874  41 80 FF 84 */	blt lbl_800CA7F8
lbl_800CA878:
/* 800CA878  3B 60 00 00 */	li r27, 0
/* 800CA87C  3B A0 00 01 */	li r29, 1
/* 800CA880  3B 80 00 04 */	li r28, 4
lbl_800CA884:
/* 800CA884  88 1F 2F AE */	lbz r0, 0x2fae(r31)
/* 800CA888  7F A3 D8 30 */	slw r3, r29, r27
/* 800CA88C  7C 00 18 39 */	and. r0, r0, r3
/* 800CA890  40 82 00 18 */	bne lbl_800CA8A8
/* 800CA894  88 1F 2F AF */	lbz r0, 0x2faf(r31)
/* 800CA898  7C 00 18 39 */	and. r0, r0, r3
/* 800CA89C  40 82 00 0C */	bne lbl_800CA8A8
/* 800CA8A0  7F 83 D8 30 */	slw r3, r28, r27
/* 800CA8A4  48 07 70 C9 */	bl dMeter2Info_offUseButton__Fi
lbl_800CA8A8:
/* 800CA8A8  3B 7B 00 01 */	addi r27, r27, 1
/* 800CA8AC  2C 1B 00 02 */	cmpwi r27, 2
/* 800CA8B0  41 80 FF D4 */	blt lbl_800CA884
/* 800CA8B4  88 1F 2F AE */	lbz r0, 0x2fae(r31)
/* 800CA8B8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800CA8BC  40 82 00 18 */	bne lbl_800CA8D4
/* 800CA8C0  88 1F 2F AF */	lbz r0, 0x2faf(r31)
/* 800CA8C4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800CA8C8  40 82 00 0C */	bne lbl_800CA8D4
/* 800CA8CC  38 60 00 40 */	li r3, 0x40
/* 800CA8D0  48 07 70 9D */	bl dMeter2Info_offUseButton__Fi
lbl_800CA8D4:
/* 800CA8D4  88 1F 2F AE */	lbz r0, 0x2fae(r31)
/* 800CA8D8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800CA8DC  40 82 00 30 */	bne lbl_800CA90C
/* 800CA8E0  88 1F 2F AF */	lbz r0, 0x2faf(r31)
/* 800CA8E4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800CA8E8  40 82 00 24 */	bne lbl_800CA90C
/* 800CA8EC  38 60 00 02 */	li r3, 2
/* 800CA8F0  48 07 70 7D */	bl dMeter2Info_offUseButton__Fi
/* 800CA8F4  7F E3 FB 78 */	mr r3, r31
/* 800CA8F8  48 07 68 B9 */	bl getSumouMode__9daPy_py_cCFv
/* 800CA8FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CA900  41 82 00 0C */	beq lbl_800CA90C
/* 800CA904  38 60 00 01 */	li r3, 1
/* 800CA908  48 07 70 65 */	bl dMeter2Info_offUseButton__Fi
lbl_800CA90C:
/* 800CA90C  88 1F 2F AE */	lbz r0, 0x2fae(r31)
/* 800CA910  98 1F 2F AF */	stb r0, 0x2faf(r31)
/* 800CA914  3B 60 00 00 */	li r27, 0
/* 800CA918  3B 80 00 00 */	li r28, 0
/* 800CA91C  C3 E2 93 18 */	lfs f31, lit_7308(r2)
lbl_800CA920:
/* 800CA920  38 61 00 18 */	addi r3, r1, 0x18
/* 800CA924  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800CA928  EC 3F 00 2A */	fadds f1, f31, f0
/* 800CA92C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800CA930  EC 5F 00 2A */	fadds f2, f31, f0
/* 800CA934  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800CA938  EC 7F 00 2A */	fadds f3, f31, f0
/* 800CA93C  48 07 70 21 */	bl __ct__4cXyzFfff
/* 800CA940  88 7F 2F A3 */	lbz r3, 0x2fa3(r31)
/* 800CA944  38 03 FF FF */	addi r0, r3, -1
/* 800CA948  7C 1B 00 00 */	cmpw r27, r0
/* 800CA94C  41 82 00 14 */	beq lbl_800CA960
/* 800CA950  38 7C 35 4C */	addi r3, r28, 0x354c
/* 800CA954  7C 7F 1A 14 */	add r3, r31, r3
/* 800CA958  38 81 00 18 */	addi r4, r1, 0x18
/* 800CA95C  4B FC CE 7D */	bl __as__4cXyzFRC4cXyz
lbl_800CA960:
/* 800CA960  38 61 00 18 */	addi r3, r1, 0x18
/* 800CA964  38 80 FF FF */	li r4, -1
/* 800CA968  4B F3 E8 1D */	bl __dt__4cXyzFv
/* 800CA96C  3B 7B 00 01 */	addi r27, r27, 1
/* 800CA970  2C 1B 00 04 */	cmpwi r27, 4
/* 800CA974  3B 9C 00 0C */	addi r28, r28, 0xc
/* 800CA978  41 80 FF A8 */	blt lbl_800CA920
/* 800CA97C  7F E3 FB 78 */	mr r3, r31
/* 800CA980  48 04 B2 A1 */	bl checkEventRun__9daAlink_cCFv
/* 800CA984  2C 03 00 00 */	cmpwi r3, 0
/* 800CA988  41 82 00 2C */	beq lbl_800CA9B4
/* 800CA98C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800CA990  28 00 00 BA */	cmplwi r0, 0xba
/* 800CA994  41 82 00 10 */	beq lbl_800CA9A4
/* 800CA998  7F E3 FB 78 */	mr r3, r31
/* 800CA99C  38 80 00 00 */	li r4, 0
/* 800CA9A0  4B FE 88 B1 */	bl setDoStatus__9daAlink_cFUc
lbl_800CA9A4:
/* 800CA9A4  7F E3 FB 78 */	mr r3, r31
/* 800CA9A8  38 80 00 00 */	li r4, 0
/* 800CA9AC  4B FE 88 75 */	bl setRStatus__9daAlink_cFUc
/* 800CA9B0  48 00 03 B8 */	b lbl_800CAD68
lbl_800CA9B4:
/* 800CA9B4  48 07 6F 99 */	bl dComIfGp_getDoStatus__Fv
/* 800CA9B8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CA9BC  28 00 00 86 */	cmplwi r0, 0x86
/* 800CA9C0  41 82 00 14 */	beq lbl_800CA9D4
/* 800CA9C4  48 07 6F 89 */	bl dComIfGp_getDoStatus__Fv
/* 800CA9C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CA9CC  28 00 00 8B */	cmplwi r0, 0x8b
/* 800CA9D0  40 82 00 14 */	bne lbl_800CA9E4
lbl_800CA9D4:
/* 800CA9D4  7F E3 FB 78 */	mr r3, r31
/* 800CA9D8  38 80 00 03 */	li r4, 3
/* 800CA9DC  4B FE 88 75 */	bl setDoStatus__9daAlink_cFUc
/* 800CA9E0  48 00 02 E0 */	b lbl_800CACC0
lbl_800CA9E4:
/* 800CA9E4  48 07 6F 69 */	bl dComIfGp_getDoStatus__Fv
/* 800CA9E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CA9EC  28 00 00 89 */	cmplwi r0, 0x89
/* 800CA9F0  40 82 00 14 */	bne lbl_800CAA04
/* 800CA9F4  7F E3 FB 78 */	mr r3, r31
/* 800CA9F8  38 80 00 08 */	li r4, 8
/* 800CA9FC  4B FE 88 55 */	bl setDoStatus__9daAlink_cFUc
/* 800CAA00  48 00 02 C0 */	b lbl_800CACC0
lbl_800CAA04:
/* 800CAA04  48 07 6F 49 */	bl dComIfGp_getDoStatus__Fv
/* 800CAA08  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CAA0C  28 00 00 93 */	cmplwi r0, 0x93
/* 800CAA10  40 82 00 14 */	bne lbl_800CAA24
/* 800CAA14  7F E3 FB 78 */	mr r3, r31
/* 800CAA18  38 80 00 19 */	li r4, 0x19
/* 800CAA1C  4B FE 88 4D */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800CAA20  48 00 02 A0 */	b lbl_800CACC0
lbl_800CAA24:
/* 800CAA24  48 07 6F 29 */	bl dComIfGp_getDoStatus__Fv
/* 800CAA28  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CAA2C  28 00 00 8E */	cmplwi r0, 0x8e
/* 800CAA30  40 82 00 14 */	bne lbl_800CAA44
/* 800CAA34  7F E3 FB 78 */	mr r3, r31
/* 800CAA38  38 80 00 15 */	li r4, 0x15
/* 800CAA3C  4B FE 88 2D */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800CAA40  48 00 02 80 */	b lbl_800CACC0
lbl_800CAA44:
/* 800CAA44  48 07 6F 09 */	bl dComIfGp_getDoStatus__Fv
/* 800CAA48  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CAA4C  28 00 00 8C */	cmplwi r0, 0x8c
/* 800CAA50  40 82 00 14 */	bne lbl_800CAA64
/* 800CAA54  7F E3 FB 78 */	mr r3, r31
/* 800CAA58  38 80 00 00 */	li r4, 0
/* 800CAA5C  4B FE 87 F5 */	bl setDoStatus__9daAlink_cFUc
/* 800CAA60  48 00 02 60 */	b lbl_800CACC0
lbl_800CAA64:
/* 800CAA64  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800CAA68  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800CAA6C  38 63 00 7E */	addi r3, r3, 0x7e
/* 800CAA70  4B FD 2F F1 */	bl checkStageName__9daAlink_cFPCc
/* 800CAA74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CAA78  41 82 00 40 */	beq lbl_800CAAB8
/* 800CAA7C  7F E3 FB 78 */	mr r3, r31
/* 800CAA80  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800CAA84  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800CAA88  7D 89 03 A6 */	mtctr r12
/* 800CAA8C  4E 80 04 21 */	bctrl 
/* 800CAA90  28 03 00 00 */	cmplwi r3, 0
/* 800CAA94  41 82 00 24 */	beq lbl_800CAAB8
/* 800CAA98  48 07 6E B5 */	bl dComIfGp_getDoStatus__Fv
/* 800CAA9C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CAAA0  28 00 00 04 */	cmplwi r0, 4
/* 800CAAA4  40 82 00 14 */	bne lbl_800CAAB8
/* 800CAAA8  7F E3 FB 78 */	mr r3, r31
/* 800CAAAC  38 80 00 00 */	li r4, 0
/* 800CAAB0  4B FE 87 A1 */	bl setDoStatus__9daAlink_cFUc
/* 800CAAB4  48 00 02 0C */	b lbl_800CACC0
lbl_800CAAB8:
/* 800CAAB8  48 07 6E 95 */	bl dComIfGp_getDoStatus__Fv
/* 800CAABC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CAAC0  28 00 00 90 */	cmplwi r0, 0x90
/* 800CAAC4  40 82 00 14 */	bne lbl_800CAAD8
/* 800CAAC8  7F E3 FB 78 */	mr r3, r31
/* 800CAACC  38 80 00 00 */	li r4, 0
/* 800CAAD0  4B FE 87 81 */	bl setDoStatus__9daAlink_cFUc
/* 800CAAD4  48 00 01 EC */	b lbl_800CACC0
lbl_800CAAD8:
/* 800CAAD8  48 07 6E 75 */	bl dComIfGp_getDoStatus__Fv
/* 800CAADC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CAAE0  28 00 00 98 */	cmplwi r0, 0x98
/* 800CAAE4  40 82 00 14 */	bne lbl_800CAAF8
/* 800CAAE8  7F E3 FB 78 */	mr r3, r31
/* 800CAAEC  38 80 00 39 */	li r4, 0x39
/* 800CAAF0  4B FE 87 79 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800CAAF4  48 00 01 CC */	b lbl_800CACC0
lbl_800CAAF8:
/* 800CAAF8  48 07 6E 55 */	bl dComIfGp_getDoStatus__Fv
/* 800CAAFC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CAB00  28 00 00 99 */	cmplwi r0, 0x99
/* 800CAB04  40 82 00 14 */	bne lbl_800CAB18
/* 800CAB08  7F E3 FB 78 */	mr r3, r31
/* 800CAB0C  38 80 00 15 */	li r4, 0x15
/* 800CAB10  4B FE 87 59 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800CAB14  48 00 01 AC */	b lbl_800CACC0
lbl_800CAB18:
/* 800CAB18  48 07 6E 35 */	bl dComIfGp_getDoStatus__Fv
/* 800CAB1C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CAB20  28 00 00 91 */	cmplwi r0, 0x91
/* 800CAB24  40 82 00 74 */	bne lbl_800CAB98
/* 800CAB28  7F E3 FB 78 */	mr r3, r31
/* 800CAB2C  48 07 68 A1 */	bl checkWolf__9daPy_py_cCFv
/* 800CAB30  28 03 00 00 */	cmplwi r3, 0
/* 800CAB34  40 82 00 44 */	bne lbl_800CAB78
/* 800CAB38  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800CAB3C  28 04 00 00 */	cmplwi r4, 0
/* 800CAB40  41 82 00 48 */	beq lbl_800CAB88
/* 800CAB44  C0 24 05 2C */	lfs f1, 0x52c(r4)
/* 800CAB48  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800CAB4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CAB50  41 81 00 28 */	bgt lbl_800CAB78
/* 800CAB54  7F E3 FB 78 */	mr r3, r31
/* 800CAB58  48 01 D7 59 */	bl checkGoatCatchActor__9daAlink_cFP10fopAc_ac_c
/* 800CAB5C  2C 03 00 00 */	cmpwi r3, 0
/* 800CAB60  41 82 00 28 */	beq lbl_800CAB88
/* 800CAB64  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800CAB68  48 07 67 55 */	bl fopAcM_GetName__FPv
/* 800CAB6C  7C 60 07 34 */	extsh r0, r3
/* 800CAB70  2C 00 01 06 */	cmpwi r0, 0x106
/* 800CAB74  41 82 00 14 */	beq lbl_800CAB88
lbl_800CAB78:
/* 800CAB78  7F E3 FB 78 */	mr r3, r31
/* 800CAB7C  38 80 00 15 */	li r4, 0x15
/* 800CAB80  4B FE 86 E9 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800CAB84  48 00 01 3C */	b lbl_800CACC0
lbl_800CAB88:
/* 800CAB88  7F E3 FB 78 */	mr r3, r31
/* 800CAB8C  38 80 00 00 */	li r4, 0
/* 800CAB90  4B FE 86 C1 */	bl setDoStatus__9daAlink_cFUc
/* 800CAB94  48 00 01 2C */	b lbl_800CACC0
lbl_800CAB98:
/* 800CAB98  48 07 6D B5 */	bl dComIfGp_getDoStatus__Fv
/* 800CAB9C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CABA0  28 00 00 97 */	cmplwi r0, 0x97
/* 800CABA4  40 82 00 3C */	bne lbl_800CABE0
/* 800CABA8  C0 22 93 68 */	lfs f1, lit_8472(r2)
/* 800CABAC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800CABB0  EC 21 00 2A */	fadds f1, f1, f0
/* 800CABB4  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 800CABB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CABBC  40 80 00 14 */	bge lbl_800CABD0
/* 800CABC0  7F E3 FB 78 */	mr r3, r31
/* 800CABC4  38 80 00 4C */	li r4, 0x4c
/* 800CABC8  4B FE 86 89 */	bl setDoStatus__9daAlink_cFUc
/* 800CABCC  48 00 00 F4 */	b lbl_800CACC0
lbl_800CABD0:
/* 800CABD0  7F E3 FB 78 */	mr r3, r31
/* 800CABD4  38 80 00 00 */	li r4, 0
/* 800CABD8  4B FE 86 79 */	bl setDoStatus__9daAlink_cFUc
/* 800CABDC  48 00 00 E4 */	b lbl_800CACC0
lbl_800CABE0:
/* 800CABE0  48 07 6D 6D */	bl dComIfGp_getDoStatus__Fv
/* 800CABE4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CABE8  28 00 00 19 */	cmplwi r0, 0x19
/* 800CABEC  40 82 00 30 */	bne lbl_800CAC1C
/* 800CABF0  48 07 68 E9 */	bl dComIfGp_getHorseActor__Fv
/* 800CABF4  28 03 00 00 */	cmplwi r3, 0
/* 800CABF8  41 82 00 24 */	beq lbl_800CAC1C
/* 800CABFC  48 07 68 DD */	bl dComIfGp_getHorseActor__Fv
/* 800CAC00  48 07 6D 45 */	bl getZeldaActor__9daHorse_cFv
/* 800CAC04  28 03 00 00 */	cmplwi r3, 0
/* 800CAC08  41 82 00 14 */	beq lbl_800CAC1C
/* 800CAC0C  7F E3 FB 78 */	mr r3, r31
/* 800CAC10  38 80 00 19 */	li r4, 0x19
/* 800CAC14  4B FE 86 3D */	bl setDoStatus__9daAlink_cFUc
/* 800CAC18  48 00 00 A8 */	b lbl_800CACC0
lbl_800CAC1C:
/* 800CAC1C  48 07 6D 31 */	bl dComIfGp_getDoStatus__Fv
/* 800CAC20  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CAC24  28 00 00 05 */	cmplwi r0, 5
/* 800CAC28  40 82 00 44 */	bne lbl_800CAC6C
/* 800CAC2C  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800CAC30  28 03 00 00 */	cmplwi r3, 0
/* 800CAC34  41 82 00 38 */	beq lbl_800CAC6C
/* 800CAC38  48 07 66 85 */	bl fopAcM_GetName__FPv
/* 800CAC3C  7C 60 07 34 */	extsh r0, r3
/* 800CAC40  2C 00 01 8A */	cmpwi r0, 0x18a
/* 800CAC44  41 82 00 18 */	beq lbl_800CAC5C
/* 800CAC48  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800CAC4C  48 07 66 71 */	bl fopAcM_GetName__FPv
/* 800CAC50  7C 60 07 34 */	extsh r0, r3
/* 800CAC54  2C 00 01 8D */	cmpwi r0, 0x18d
/* 800CAC58  40 82 00 14 */	bne lbl_800CAC6C
lbl_800CAC5C:
/* 800CAC5C  7F E3 FB 78 */	mr r3, r31
/* 800CAC60  38 80 00 3B */	li r4, 0x3b
/* 800CAC64  4B FE 86 05 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800CAC68  48 00 00 58 */	b lbl_800CACC0
lbl_800CAC6C:
/* 800CAC6C  48 07 6C E1 */	bl dComIfGp_getDoStatus__Fv
/* 800CAC70  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CAC74  28 00 00 14 */	cmplwi r0, 0x14
/* 800CAC78  40 82 00 48 */	bne lbl_800CACC0
/* 800CAC7C  7F E3 FB 78 */	mr r3, r31
/* 800CAC80  3C 80 04 00 */	lis r4, 0x400
/* 800CAC84  48 07 66 BD */	bl checkEndResetFlg1__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG1
/* 800CAC88  28 03 00 00 */	cmplwi r3, 0
/* 800CAC8C  41 82 00 14 */	beq lbl_800CACA0
/* 800CAC90  7F E3 FB 78 */	mr r3, r31
/* 800CAC94  38 80 00 61 */	li r4, 0x61
/* 800CAC98  4B FE 85 D1 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800CAC9C  48 00 00 24 */	b lbl_800CACC0
lbl_800CACA0:
/* 800CACA0  7F E3 FB 78 */	mr r3, r31
/* 800CACA4  3C 80 10 00 */	lis r4, 0x1000
/* 800CACA8  48 07 66 99 */	bl checkEndResetFlg1__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG1
/* 800CACAC  28 03 00 00 */	cmplwi r3, 0
/* 800CACB0  41 82 00 10 */	beq lbl_800CACC0
/* 800CACB4  7F E3 FB 78 */	mr r3, r31
/* 800CACB8  38 80 00 14 */	li r4, 0x14
/* 800CACBC  4B FE 85 AD */	bl setDoStatusEmphasys__9daAlink_cFUc
lbl_800CACC0:
/* 800CACC0  7F E3 FB 78 */	mr r3, r31
/* 800CACC4  48 01 D2 21 */	bl getWallGrabStatus__9daAlink_cFv
/* 800CACC8  7C 7C 1B 78 */	mr r28, r3
/* 800CACCC  7F E3 FB 78 */	mr r3, r31
/* 800CACD0  48 07 66 FD */	bl checkWolf__9daPy_py_cCFv
/* 800CACD4  28 03 00 00 */	cmplwi r3, 0
/* 800CACD8  41 82 00 44 */	beq lbl_800CAD1C
/* 800CACDC  2C 1C 00 15 */	cmpwi r28, 0x15
/* 800CACE0  40 82 00 18 */	bne lbl_800CACF8
/* 800CACE4  7F E3 FB 78 */	mr r3, r31
/* 800CACE8  38 80 00 3F */	li r4, 0x3f
/* 800CACEC  38 A0 00 02 */	li r5, 2
/* 800CACF0  48 01 D1 E1 */	bl setWallGrabStatus__9daAlink_cFUcUc
/* 800CACF4  48 00 00 74 */	b lbl_800CAD68
lbl_800CACF8:
/* 800CACF8  2C 1C 00 96 */	cmpwi r28, 0x96
/* 800CACFC  40 82 00 6C */	bne lbl_800CAD68
/* 800CAD00  7F E3 FB 78 */	mr r3, r31
/* 800CAD04  48 01 CC 91 */	bl checkChainEmphasys__9daAlink_cFv
/* 800CAD08  7C 65 1B 78 */	mr r5, r3
/* 800CAD0C  7F E3 FB 78 */	mr r3, r31
/* 800CAD10  38 80 00 0C */	li r4, 0xc
/* 800CAD14  48 01 D1 BD */	bl setWallGrabStatus__9daAlink_cFUcUc
/* 800CAD18  48 00 00 50 */	b lbl_800CAD68
lbl_800CAD1C:
/* 800CAD1C  2C 1C 00 96 */	cmpwi r28, 0x96
/* 800CAD20  40 82 00 1C */	bne lbl_800CAD3C
/* 800CAD24  7F E3 FB 78 */	mr r3, r31
/* 800CAD28  48 01 CC 6D */	bl checkChainEmphasys__9daAlink_cFv
/* 800CAD2C  7C 65 1B 78 */	mr r5, r3
/* 800CAD30  7F E3 FB 78 */	mr r3, r31
/* 800CAD34  38 80 00 15 */	li r4, 0x15
/* 800CAD38  48 01 D1 99 */	bl setWallGrabStatus__9daAlink_cFUcUc
lbl_800CAD3C:
/* 800CAD3C  48 00 52 01 */	bl dComIfGp_getRStatus__Fv
/* 800CAD40  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800CAD44  28 00 00 3A */	cmplwi r0, 0x3a
/* 800CAD48  40 82 00 20 */	bne lbl_800CAD68
/* 800CAD4C  7F E3 FB 78 */	mr r3, r31
/* 800CAD50  48 01 18 8D */	bl checkShieldAttackEmphasys__9daAlink_cFv
/* 800CAD54  2C 03 00 00 */	cmpwi r3, 0
/* 800CAD58  40 82 00 10 */	bne lbl_800CAD68
/* 800CAD5C  7F E3 FB 78 */	mr r3, r31
/* 800CAD60  38 80 00 00 */	li r4, 0
/* 800CAD64  4B FE 84 BD */	bl setRStatus__9daAlink_cFUc
lbl_800CAD68:
/* 800CAD68  4B F6 2F 41 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 800CAD6C  54 7C 04 3E */	clrlwi r28, r3, 0x10
/* 800CAD70  48 00 51 BD */	bl dComIfGs_getLife__Fv
/* 800CAD74  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 800CAD78  7F 84 E3 78 */	mr r4, r28
/* 800CAD7C  48 00 51 79 */	bl mDoAud_setLinkHp__Fll
/* 800CAD80  38 61 00 30 */	addi r3, r1, 0x30
/* 800CAD84  38 80 FF FF */	li r4, -1
/* 800CAD88  4B F3 E3 FD */	bl __dt__4cXyzFv
/* 800CAD8C  38 61 00 3C */	addi r3, r1, 0x3c
/* 800CAD90  38 80 FF FF */	li r4, -1
/* 800CAD94  4B F3 E3 F1 */	bl __dt__4cXyzFv
/* 800CAD98  48 00 51 2D */	bl dComIfGp_att_getCatghTarget__Fv
/* 800CAD9C  28 03 00 00 */	cmplwi r3, 0
/* 800CADA0  41 82 00 40 */	beq lbl_800CADE0
/* 800CADA4  7F E3 FB 78 */	mr r3, r31
/* 800CADA8  48 07 66 25 */	bl checkWolf__9daPy_py_cCFv
/* 800CADAC  28 03 00 00 */	cmplwi r3, 0
/* 800CADB0  40 82 00 30 */	bne lbl_800CADE0
/* 800CADB4  7F E3 FB 78 */	mr r3, r31
/* 800CADB8  48 00 50 F9 */	bl checkRideOn__9daAlink_cCFv
/* 800CADBC  2C 03 00 00 */	cmpwi r3, 0
/* 800CADC0  40 82 00 20 */	bne lbl_800CADE0
/* 800CADC4  38 60 00 60 */	li r3, 0x60
/* 800CADC8  4B FF 58 B1 */	bl checkCastleTownUseItem__9daAlink_cFUs
/* 800CADCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CADD0  41 82 00 10 */	beq lbl_800CADE0
/* 800CADD4  38 60 00 6C */	li r3, 0x6c
/* 800CADD8  38 80 00 00 */	li r4, 0
/* 800CADDC  48 07 63 C1 */	bl dComIfGp_setBottleStatus__FUcUc
lbl_800CADE0:
/* 800CADE0  7F E3 FB 78 */	mr r3, r31
/* 800CADE4  38 80 00 20 */	li r4, 0x20
/* 800CADE8  48 07 63 A9 */	bl checkEndResetFlg2__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG2
/* 800CADEC  28 03 00 00 */	cmplwi r3, 0
/* 800CADF0  41 82 00 50 */	beq lbl_800CAE40
/* 800CADF4  38 60 00 00 */	li r3, 0
/* 800CADF8  3C 80 00 20 */	lis r4, 0x20
/* 800CADFC  48 07 65 0D */	bl dComIfGp_checkPlayerStatus0__FiUl
/* 800CAE00  28 03 00 00 */	cmplwi r3, 0
/* 800CAE04  41 82 00 3C */	beq lbl_800CAE40
/* 800CAE08  A8 7F 31 0E */	lha r3, 0x310e(r31)
/* 800CAE0C  A8 1F 31 0A */	lha r0, 0x310a(r31)
/* 800CAE10  7C 03 00 00 */	cmpw r3, r0
/* 800CAE14  40 82 00 14 */	bne lbl_800CAE28
/* 800CAE18  A8 7F 31 10 */	lha r3, 0x3110(r31)
/* 800CAE1C  A8 1F 31 0C */	lha r0, 0x310c(r31)
/* 800CAE20  7C 03 00 00 */	cmpw r3, r0
/* 800CAE24  41 82 00 1C */	beq lbl_800CAE40
lbl_800CAE28:
/* 800CAE28  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200B7@ha */
/* 800CAE2C  38 63 00 B7 */	addi r3, r3, 0x00B7 /* 0x000200B7@l */
/* 800CAE30  38 80 00 00 */	li r4, 0
/* 800CAE34  38 A0 00 00 */	li r5, 0
/* 800CAE38  38 C0 00 00 */	li r6, 0
/* 800CAE3C  48 07 63 01 */	bl mDoAud_seStartLevel__FUlPC3VecUlSc
lbl_800CAE40:
/* 800CAE40  7F E3 FB 78 */	mr r3, r31
/* 800CAE44  3C 80 40 00 */	lis r4, 0x4000
/* 800CAE48  48 07 62 E5 */	bl offNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0
/* 800CAE4C  38 00 00 00 */	li r0, 0
/* 800CAE50  90 1F 05 88 */	stw r0, 0x588(r31)
/* 800CAE54  7F E3 FB 78 */	mr r3, r31
/* 800CAE58  38 80 00 04 */	li r4, 4
/* 800CAE5C  48 07 64 E5 */	bl checkEndResetFlg1__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG1
/* 800CAE60  28 03 00 00 */	cmplwi r3, 0
/* 800CAE64  41 82 00 14 */	beq lbl_800CAE78
/* 800CAE68  7F E3 FB 78 */	mr r3, r31
/* 800CAE6C  3C 80 00 02 */	lis r4, 2
/* 800CAE70  48 07 62 AD */	bl onNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2
/* 800CAE74  48 00 00 10 */	b lbl_800CAE84
lbl_800CAE78:
/* 800CAE78  7F E3 FB 78 */	mr r3, r31
/* 800CAE7C  3C 80 00 02 */	lis r4, 2
/* 800CAE80  48 07 64 ED */	bl offNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2
lbl_800CAE84:
/* 800CAE84  38 00 00 00 */	li r0, 0
/* 800CAE88  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 800CAE8C  90 1F 05 90 */	stw r0, 0x590(r31)
/* 800CAE90  38 7F 35 40 */	addi r3, r31, 0x3540
/* 800CAE94  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 800CAE98  4B FC C9 41 */	bl __as__4cXyzFRC4cXyz
/* 800CAE9C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800CAEA0  B0 1F 31 08 */	sth r0, 0x3108(r31)
/* 800CAEA4  7F E3 FB 78 */	mr r3, r31
/* 800CAEA8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800CAEAC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800CAEB0  7D 89 03 A6 */	mtctr r12
/* 800CAEB4  4E 80 04 21 */	bctrl 
/* 800CAEB8  28 03 00 00 */	cmplwi r3, 0
/* 800CAEBC  41 82 00 3C */	beq lbl_800CAEF8
/* 800CAEC0  7F E3 FB 78 */	mr r3, r31
/* 800CAEC4  48 07 66 25 */	bl checkBoarSingleBattle__9daPy_py_cCFv
/* 800CAEC8  28 03 00 00 */	cmplwi r3, 0
/* 800CAECC  41 82 00 2C */	beq lbl_800CAEF8
/* 800CAED0  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800CAED4  48 29 A1 FD */	bl abs
/* 800CAED8  2C 03 40 00 */	cmpwi r3, 0x4000
/* 800CAEDC  40 80 00 10 */	bge lbl_800CAEEC
/* 800CAEE0  38 00 00 00 */	li r0, 0
/* 800CAEE4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800CAEE8  48 00 00 9C */	b lbl_800CAF84
lbl_800CAEEC:
/* 800CAEEC  38 00 80 00 */	li r0, -32768
/* 800CAEF0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800CAEF4  48 00 00 90 */	b lbl_800CAF84
lbl_800CAEF8:
/* 800CAEF8  7F E3 FB 78 */	mr r3, r31
/* 800CAEFC  48 07 65 D1 */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 800CAF00  28 03 00 00 */	cmplwi r3, 0
/* 800CAF04  41 82 00 24 */	beq lbl_800CAF28
/* 800CAF08  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800CAF0C  B0 1F 31 18 */	sth r0, 0x3118(r31)
/* 800CAF10  7F E3 FB 78 */	mr r3, r31
/* 800CAF14  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800CAF18  38 A0 00 00 */	li r5, 0
/* 800CAF1C  48 01 78 1D */	bl getMagneBootsLocalAngleY__9daAlink_cFsi
/* 800CAF20  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 800CAF24  48 00 00 60 */	b lbl_800CAF84
lbl_800CAF28:
/* 800CAF28  7F E3 FB 78 */	mr r3, r31
/* 800CAF2C  3C 80 00 01 */	lis r4, 1
/* 800CAF30  48 00 52 5D */	bl checkModeFlg__9daAlink_cCFUl
/* 800CAF34  28 03 00 00 */	cmplwi r3, 0
/* 800CAF38  41 82 00 20 */	beq lbl_800CAF58
/* 800CAF3C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800CAF40  B0 1F 31 08 */	sth r0, 0x3108(r31)
/* 800CAF44  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800CAF48  A8 1F 30 8C */	lha r0, 0x308c(r31)
/* 800CAF4C  7C 03 02 14 */	add r0, r3, r0
/* 800CAF50  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800CAF54  48 00 00 30 */	b lbl_800CAF84
lbl_800CAF58:
/* 800CAF58  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800CAF5C  28 00 00 2C */	cmplwi r0, 0x2c
/* 800CAF60  40 82 00 24 */	bne lbl_800CAF84
/* 800CAF64  80 1F 28 58 */	lwz r0, 0x2858(r31)
/* 800CAF68  28 00 00 00 */	cmplwi r0, 0
/* 800CAF6C  41 82 00 18 */	beq lbl_800CAF84
/* 800CAF70  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800CAF74  B0 1F 31 08 */	sth r0, 0x3108(r31)
/* 800CAF78  80 7F 28 58 */	lwz r3, 0x2858(r31)
/* 800CAF7C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800CAF80  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_800CAF84:
/* 800CAF84  38 60 00 01 */	li r3, 1
/* 800CAF88  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 800CAF8C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 800CAF90  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800CAF94  48 29 72 8D */	bl _restgpr_27
/* 800CAF98  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800CAF9C  7C 08 03 A6 */	mtlr r0
/* 800CAFA0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800CAFA4  4E 80 00 20 */	blr 
