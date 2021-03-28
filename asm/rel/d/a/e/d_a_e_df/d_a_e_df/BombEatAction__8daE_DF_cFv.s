lbl_806A8368:
/* 806A8368  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A836C  7C 08 02 A6 */	mflr r0
/* 806A8370  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A8374  39 61 00 40 */	addi r11, r1, 0x40
/* 806A8378  4B CB 9E 64 */	b _savegpr_29
/* 806A837C  7C 7E 1B 78 */	mr r30, r3
/* 806A8380  3C 80 80 6B */	lis r4, lit_3916@ha
/* 806A8384  3B E4 9F 30 */	addi r31, r4, lit_3916@l
/* 806A8388  88 03 05 AE */	lbz r0, 0x5ae(r3)
/* 806A838C  2C 00 00 02 */	cmpwi r0, 2
/* 806A8390  41 82 00 F4 */	beq lbl_806A8484
/* 806A8394  40 80 00 14 */	bge lbl_806A83A8
/* 806A8398  2C 00 00 00 */	cmpwi r0, 0
/* 806A839C  41 82 00 1C */	beq lbl_806A83B8
/* 806A83A0  40 80 00 8C */	bge lbl_806A842C
/* 806A83A4  48 00 03 B4 */	b lbl_806A8758
lbl_806A83A8:
/* 806A83A8  2C 00 00 04 */	cmpwi r0, 4
/* 806A83AC  41 82 03 94 */	beq lbl_806A8740
/* 806A83B0  40 80 03 A8 */	bge lbl_806A8758
/* 806A83B4  48 00 02 58 */	b lbl_806A860C
lbl_806A83B8:
/* 806A83B8  38 00 00 64 */	li r0, 0x64
/* 806A83BC  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 806A83C0  4B FF F7 81 */	bl DemoStart__8daE_DF_cFv
/* 806A83C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A83C8  41 82 03 90 */	beq lbl_806A8758
/* 806A83CC  7F C3 F3 78 */	mr r3, r30
/* 806A83D0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806A83D4  4B FF F5 AD */	bl CameraSet__8daE_DF_cFf
/* 806A83D8  7F C3 F3 78 */	mr r3, r30
/* 806A83DC  38 80 00 07 */	li r4, 7
/* 806A83E0  38 A0 00 00 */	li r5, 0
/* 806A83E4  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806A83E8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A83EC  4B FF F4 E9 */	bl SetAnm__8daE_DF_cFiiff
/* 806A83F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007019E@ha */
/* 806A83F4  38 03 01 9E */	addi r0, r3, 0x019E /* 0x0007019E@l */
/* 806A83F8  90 01 00 28 */	stw r0, 0x28(r1)
/* 806A83FC  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 806A8400  38 81 00 28 */	addi r4, r1, 0x28
/* 806A8404  38 A0 00 00 */	li r5, 0
/* 806A8408  38 C0 FF FF */	li r6, -1
/* 806A840C  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 806A8410  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A8414  7D 89 03 A6 */	mtctr r12
/* 806A8418  4E 80 04 21 */	bctrl 
/* 806A841C  88 7E 05 AE */	lbz r3, 0x5ae(r30)
/* 806A8420  38 03 00 01 */	addi r0, r3, 1
/* 806A8424  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 806A8428  48 00 03 30 */	b lbl_806A8758
lbl_806A842C:
/* 806A842C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 806A8430  38 80 00 01 */	li r4, 1
/* 806A8434  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806A8438  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A843C  40 82 00 18 */	bne lbl_806A8454
/* 806A8440  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A8444  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A8448  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A844C  41 82 00 08 */	beq lbl_806A8454
/* 806A8450  38 80 00 00 */	li r4, 0
lbl_806A8454:
/* 806A8454  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806A8458  41 82 03 00 */	beq lbl_806A8758
/* 806A845C  88 7E 05 AE */	lbz r3, 0x5ae(r30)
/* 806A8460  38 03 00 01 */	addi r0, r3, 1
/* 806A8464  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 806A8468  7F C3 F3 78 */	mr r3, r30
/* 806A846C  38 80 00 08 */	li r4, 8
/* 806A8470  38 A0 00 02 */	li r5, 2
/* 806A8474  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806A8478  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A847C  4B FF F4 59 */	bl SetAnm__8daE_DF_cFiiff
/* 806A8480  48 00 02 D8 */	b lbl_806A8758
lbl_806A8484:
/* 806A8484  48 00 07 FD */	bl Mogu_Mogu__8daE_DF_cFv
/* 806A8488  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A848C  41 82 02 CC */	beq lbl_806A8758
/* 806A8490  7F C3 F3 78 */	mr r3, r30
/* 806A8494  38 80 00 05 */	li r4, 5
/* 806A8498  38 A0 00 00 */	li r5, 0
/* 806A849C  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806A84A0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A84A4  4B FF F4 31 */	bl SetAnm__8daE_DF_cFiiff
/* 806A84A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007019C@ha */
/* 806A84AC  38 03 01 9C */	addi r0, r3, 0x019C /* 0x0007019C@l */
/* 806A84B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A84B4  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 806A84B8  38 81 00 24 */	addi r4, r1, 0x24
/* 806A84BC  38 A0 00 00 */	li r5, 0
/* 806A84C0  38 C0 FF FF */	li r6, -1
/* 806A84C4  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 806A84C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A84CC  7D 89 03 A6 */	mtctr r12
/* 806A84D0  4E 80 04 21 */	bctrl 
/* 806A84D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A84D8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 806A84DC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806A84E0  38 80 00 00 */	li r4, 0
/* 806A84E4  90 81 00 08 */	stw r4, 8(r1)
/* 806A84E8  38 00 FF FF */	li r0, -1
/* 806A84EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A84F0  90 81 00 10 */	stw r4, 0x10(r1)
/* 806A84F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A84F8  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A84FC  38 80 00 00 */	li r4, 0
/* 806A8500  3C A0 00 01 */	lis r5, 0x0001 /* 0x000083B9@ha */
/* 806A8504  38 A5 83 B9 */	addi r5, r5, 0x83B9 /* 0x000083B9@l */
/* 806A8508  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806A850C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A8510  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806A8514  39 20 00 00 */	li r9, 0
/* 806A8518  39 40 00 FF */	li r10, 0xff
/* 806A851C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A8520  4B 9A 45 70 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A8524  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806A8528  38 80 00 00 */	li r4, 0
/* 806A852C  90 81 00 08 */	stw r4, 8(r1)
/* 806A8530  38 00 FF FF */	li r0, -1
/* 806A8534  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A8538  90 81 00 10 */	stw r4, 0x10(r1)
/* 806A853C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A8540  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A8544  38 80 00 00 */	li r4, 0
/* 806A8548  3C A0 00 01 */	lis r5, 0x0001 /* 0x000083BA@ha */
/* 806A854C  38 A5 83 BA */	addi r5, r5, 0x83BA /* 0x000083BA@l */
/* 806A8550  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806A8554  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A8558  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806A855C  39 20 00 00 */	li r9, 0
/* 806A8560  39 40 00 FF */	li r10, 0xff
/* 806A8564  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A8568  4B 9A 45 28 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A856C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806A8570  38 80 00 00 */	li r4, 0
/* 806A8574  90 81 00 08 */	stw r4, 8(r1)
/* 806A8578  38 00 FF FF */	li r0, -1
/* 806A857C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A8580  90 81 00 10 */	stw r4, 0x10(r1)
/* 806A8584  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A8588  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A858C  38 80 00 00 */	li r4, 0
/* 806A8590  3C A0 00 01 */	lis r5, 0x0001 /* 0x000083BB@ha */
/* 806A8594  38 A5 83 BB */	addi r5, r5, 0x83BB /* 0x000083BB@l */
/* 806A8598  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806A859C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A85A0  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806A85A4  39 20 00 00 */	li r9, 0
/* 806A85A8  39 40 00 FF */	li r10, 0xff
/* 806A85AC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A85B0  4B 9A 44 E0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A85B4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806A85B8  38 80 00 00 */	li r4, 0
/* 806A85BC  90 81 00 08 */	stw r4, 8(r1)
/* 806A85C0  38 00 FF FF */	li r0, -1
/* 806A85C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A85C8  90 81 00 10 */	stw r4, 0x10(r1)
/* 806A85CC  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A85D0  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A85D4  38 80 00 00 */	li r4, 0
/* 806A85D8  3C A0 00 01 */	lis r5, 0x0001 /* 0x000083BC@ha */
/* 806A85DC  38 A5 83 BC */	addi r5, r5, 0x83BC /* 0x000083BC@l */
/* 806A85E0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806A85E4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A85E8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806A85EC  39 20 00 00 */	li r9, 0
/* 806A85F0  39 40 00 FF */	li r10, 0xff
/* 806A85F4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A85F8  4B 9A 44 98 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A85FC  88 7E 05 AE */	lbz r3, 0x5ae(r30)
/* 806A8600  38 03 00 01 */	addi r0, r3, 1
/* 806A8604  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 806A8608  48 00 01 50 */	b lbl_806A8758
lbl_806A860C:
/* 806A860C  80 9E 05 C8 */	lwz r4, 0x5c8(r30)
/* 806A8610  38 60 00 01 */	li r3, 1
/* 806A8614  88 04 00 11 */	lbz r0, 0x11(r4)
/* 806A8618  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A861C  40 82 00 18 */	bne lbl_806A8634
/* 806A8620  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A8624  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806A8628  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A862C  41 82 00 08 */	beq lbl_806A8634
/* 806A8630  38 60 00 00 */	li r3, 0
lbl_806A8634:
/* 806A8634  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A8638  41 82 00 58 */	beq lbl_806A8690
/* 806A863C  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 806A8640  2C 00 00 05 */	cmpwi r0, 5
/* 806A8644  40 82 00 4C */	bne lbl_806A8690
/* 806A8648  7F C3 F3 78 */	mr r3, r30
/* 806A864C  38 80 00 06 */	li r4, 6
/* 806A8650  38 A0 00 00 */	li r5, 0
/* 806A8654  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806A8658  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A865C  4B FF F2 79 */	bl SetAnm__8daE_DF_cFiiff
/* 806A8660  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007019D@ha */
/* 806A8664  38 03 01 9D */	addi r0, r3, 0x019D /* 0x0007019D@l */
/* 806A8668  90 01 00 20 */	stw r0, 0x20(r1)
/* 806A866C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 806A8670  38 81 00 20 */	addi r4, r1, 0x20
/* 806A8674  38 A0 00 00 */	li r5, 0
/* 806A8678  38 C0 FF FF */	li r6, -1
/* 806A867C  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 806A8680  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A8684  7D 89 03 A6 */	mtctr r12
/* 806A8688  4E 80 04 21 */	bctrl 
/* 806A868C  48 00 00 CC */	b lbl_806A8758
lbl_806A8690:
/* 806A8690  38 60 00 01 */	li r3, 1
/* 806A8694  88 04 00 11 */	lbz r0, 0x11(r4)
/* 806A8698  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A869C  40 82 00 18 */	bne lbl_806A86B4
/* 806A86A0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A86A4  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806A86A8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A86AC  41 82 00 08 */	beq lbl_806A86B4
/* 806A86B0  38 60 00 00 */	li r3, 0
lbl_806A86B4:
/* 806A86B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A86B8  41 82 00 A0 */	beq lbl_806A8758
/* 806A86BC  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 806A86C0  2C 00 00 06 */	cmpwi r0, 6
/* 806A86C4  40 82 00 94 */	bne lbl_806A8758
/* 806A86C8  88 9E 08 19 */	lbz r4, 0x819(r30)
/* 806A86CC  28 04 00 FF */	cmplwi r4, 0xff
/* 806A86D0  41 82 00 38 */	beq lbl_806A8708
/* 806A86D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A86D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806A86DC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A86E0  7C 05 07 74 */	extsb r5, r0
/* 806A86E4  4B 98 CC 7C */	b isSwitch__10dSv_info_cCFii
/* 806A86E8  2C 03 00 00 */	cmpwi r3, 0
/* 806A86EC  40 82 00 1C */	bne lbl_806A8708
/* 806A86F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A86F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806A86F8  88 9E 08 19 */	lbz r4, 0x819(r30)
/* 806A86FC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A8700  7C 05 07 74 */	extsb r5, r0
/* 806A8704  4B 98 CA FC */	b onSwitch__10dSv_info_cFii
lbl_806A8708:
/* 806A8708  7F C3 F3 78 */	mr r3, r30
/* 806A870C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806A8710  38 A0 00 0A */	li r5, 0xa
/* 806A8714  38 C0 00 00 */	li r6, 0
/* 806A8718  38 E0 00 30 */	li r7, 0x30
/* 806A871C  4B 97 43 BC */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806A8720  38 00 00 0A */	li r0, 0xa
/* 806A8724  B0 1E 05 BE */	sth r0, 0x5be(r30)
/* 806A8728  38 00 00 00 */	li r0, 0
/* 806A872C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806A8730  88 7E 05 AE */	lbz r3, 0x5ae(r30)
/* 806A8734  38 03 00 01 */	addi r0, r3, 1
/* 806A8738  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 806A873C  48 00 00 1C */	b lbl_806A8758
lbl_806A8740:
/* 806A8740  A8 1E 05 BE */	lha r0, 0x5be(r30)
/* 806A8744  2C 00 00 00 */	cmpwi r0, 0
/* 806A8748  40 82 00 10 */	bne lbl_806A8758
/* 806A874C  4B FF F4 F1 */	bl SetReleaseCam__8daE_DF_cFv
/* 806A8750  7F C3 F3 78 */	mr r3, r30
/* 806A8754  4B 97 15 28 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_806A8758:
/* 806A8758  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 806A875C  38 80 00 00 */	li r4, 0
/* 806A8760  38 A0 01 00 */	li r5, 0x100
/* 806A8764  4B BC 84 2C */	b cLib_chaseAngleS__FPsss
/* 806A8768  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 806A876C  38 80 00 00 */	li r4, 0
/* 806A8770  38 A0 01 00 */	li r5, 0x100
/* 806A8774  4B BC 84 1C */	b cLib_chaseAngleS__FPsss
/* 806A8778  39 61 00 40 */	addi r11, r1, 0x40
/* 806A877C  4B CB 9A AC */	b _restgpr_29
/* 806A8780  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A8784  7C 08 03 A6 */	mtlr r0
/* 806A8788  38 21 00 40 */	addi r1, r1, 0x40
/* 806A878C  4E 80 00 20 */	blr 
