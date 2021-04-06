lbl_80C003CC:
/* 80C003CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C003D0  7C 08 02 A6 */	mflr r0
/* 80C003D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C003D8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C003DC  4B 76 1D ED */	bl _savegpr_24
/* 80C003E0  7C 7C 1B 78 */	mr r28, r3
/* 80C003E4  3B E0 00 00 */	li r31, 0
/* 80C003E8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C003EC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C003F0  40 82 00 1C */	bne lbl_80C0040C
/* 80C003F4  28 1C 00 00 */	cmplwi r28, 0
/* 80C003F8  41 82 00 08 */	beq lbl_80C00400
/* 80C003FC  4B FF FB 75 */	bl __ct__11daObj_GrA_cFv
lbl_80C00400:
/* 80C00400  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80C00404  60 00 00 08 */	ori r0, r0, 8
/* 80C00408  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80C0040C:
/* 80C0040C  7F 83 E3 78 */	mr r3, r28
/* 80C00410  48 00 09 65 */	bl getMode__11daObj_GrA_cFv
/* 80C00414  98 7C 0A 7E */	stb r3, 0xa7e(r28)
/* 80C00418  7F 83 E3 78 */	mr r3, r28
/* 80C0041C  81 9C 05 68 */	lwz r12, 0x568(r28)
/* 80C00420  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C00424  7D 89 03 A6 */	mtctr r12
/* 80C00428  4E 80 04 21 */	bctrl 
/* 80C0042C  7C 64 1B 78 */	mr r4, r3
/* 80C00430  38 7C 07 4C */	addi r3, r28, 0x74c
/* 80C00434  4B 42 CA 89 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C00438  7C 7D 1B 78 */	mr r29, r3
/* 80C0043C  2C 1D 00 05 */	cmpwi r29, 5
/* 80C00440  41 82 00 0C */	beq lbl_80C0044C
/* 80C00444  2C 1D 00 03 */	cmpwi r29, 3
/* 80C00448  40 82 00 0C */	bne lbl_80C00454
lbl_80C0044C:
/* 80C0044C  38 60 00 05 */	li r3, 5
/* 80C00450  48 00 01 AC */	b lbl_80C005FC
lbl_80C00454:
/* 80C00454  2C 1D 00 04 */	cmpwi r29, 4
/* 80C00458  40 82 00 08 */	bne lbl_80C00460
/* 80C0045C  3B E0 00 01 */	li r31, 1
lbl_80C00460:
/* 80C00460  3B C0 00 00 */	li r30, 0
/* 80C00464  3B 60 00 00 */	li r27, 0
/* 80C00468  3B 40 00 00 */	li r26, 0
/* 80C0046C  3C 60 80 C1 */	lis r3, l_resNames@ha /* 0x80C0FED8@ha */
/* 80C00470  3B 03 FE D8 */	addi r24, r3, l_resNames@l /* 0x80C0FED8@l */
/* 80C00474  3C 60 80 C1 */	lis r3, l_exloadRes_list@ha /* 0x80C0FEC8@ha */
/* 80C00478  3B 23 FE C8 */	addi r25, r3, l_exloadRes_list@l /* 0x80C0FEC8@l */
/* 80C0047C  48 00 00 4C */	b lbl_80C004C8
lbl_80C00480:
/* 80C00480  38 7A 0A 5C */	addi r3, r26, 0xa5c
/* 80C00484  7C 7C 1A 14 */	add r3, r28, r3
/* 80C00488  54 00 10 3A */	slwi r0, r0, 2
/* 80C0048C  7C 98 00 2E */	lwzx r4, r24, r0
/* 80C00490  4B 42 CA 2D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C00494  7C 7D 1B 78 */	mr r29, r3
/* 80C00498  2C 1D 00 05 */	cmpwi r29, 5
/* 80C0049C  41 82 00 0C */	beq lbl_80C004A8
/* 80C004A0  2C 1D 00 03 */	cmpwi r29, 3
/* 80C004A4  40 82 00 0C */	bne lbl_80C004B0
lbl_80C004A8:
/* 80C004A8  38 60 00 05 */	li r3, 5
/* 80C004AC  48 00 01 50 */	b lbl_80C005FC
lbl_80C004B0:
/* 80C004B0  2C 1D 00 04 */	cmpwi r29, 4
/* 80C004B4  40 82 00 08 */	bne lbl_80C004BC
/* 80C004B8  3B FF 00 01 */	addi r31, r31, 1
lbl_80C004BC:
/* 80C004BC  3B DE 00 01 */	addi r30, r30, 1
/* 80C004C0  3B 7B 00 04 */	addi r27, r27, 4
/* 80C004C4  3B 5A 00 08 */	addi r26, r26, 8
lbl_80C004C8:
/* 80C004C8  88 1C 0A 7E */	lbz r0, 0xa7e(r28)
/* 80C004CC  54 00 10 3A */	slwi r0, r0, 2
/* 80C004D0  7C 79 00 2E */	lwzx r3, r25, r0
/* 80C004D4  7C 03 D8 2E */	lwzx r0, r3, r27
/* 80C004D8  2C 00 00 00 */	cmpwi r0, 0
/* 80C004DC  40 80 FF A4 */	bge lbl_80C00480
/* 80C004E0  A8 7C 04 B4 */	lha r3, 0x4b4(r28)
/* 80C004E4  3C 03 00 00 */	addis r0, r3, 0
/* 80C004E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C004EC  38 00 FF FF */	li r0, -1
/* 80C004F0  41 82 00 08 */	beq lbl_80C004F8
/* 80C004F4  7C 60 1B 78 */	mr r0, r3
lbl_80C004F8:
/* 80C004F8  90 1C 08 48 */	stw r0, 0x848(r28)
/* 80C004FC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80C00500  54 00 17 BE */	srwi r0, r0, 0x1e
/* 80C00504  98 1C 1F E8 */	stb r0, 0x1fe8(r28)
/* 80C00508  A8 1C 04 B8 */	lha r0, 0x4b8(r28)
/* 80C0050C  98 1C 0A 7F */	stb r0, 0xa7f(r28)
/* 80C00510  A8 1C 04 B8 */	lha r0, 0x4b8(r28)
/* 80C00514  54 00 C6 7E */	rlwinm r0, r0, 0x18, 0x19, 0x1f
/* 80C00518  B0 1C 20 0C */	sth r0, 0x200c(r28)
/* 80C0051C  A8 1C 04 B8 */	lha r0, 0x4b8(r28)
/* 80C00520  54 00 8F FE */	rlwinm r0, r0, 0x11, 0x1f, 0x1f
/* 80C00524  98 1C 20 30 */	stb r0, 0x2030(r28)
/* 80C00528  38 1E 00 01 */	addi r0, r30, 1
/* 80C0052C  7C 1F 00 00 */	cmpw r31, r0
/* 80C00530  40 82 00 C0 */	bne lbl_80C005F0
/* 80C00534  2C 1F 00 03 */	cmpwi r31, 3
/* 80C00538  41 82 00 0C */	beq lbl_80C00544
/* 80C0053C  2C 1F 00 04 */	cmpwi r31, 4
/* 80C00540  40 82 00 B0 */	bne lbl_80C005F0
lbl_80C00544:
/* 80C00544  7F 83 E3 78 */	mr r3, r28
/* 80C00548  81 9C 05 68 */	lwz r12, 0x568(r28)
/* 80C0054C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C00550  7D 89 03 A6 */	mtctr r12
/* 80C00554  4E 80 04 21 */	bctrl 
/* 80C00558  7C 64 1B 78 */	mr r4, r3
/* 80C0055C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C00560  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C00564  3C 63 00 02 */	addis r3, r3, 2
/* 80C00568  3C A0 80 C1 */	lis r5, d_a_obj_gra2__stringBase0@ha /* 0x80C0FE14@ha */
/* 80C0056C  38 A5 FE 14 */	addi r5, r5, d_a_obj_gra2__stringBase0@l /* 0x80C0FE14@l */
/* 80C00570  38 A5 00 32 */	addi r5, r5, 0x32
/* 80C00574  38 63 C2 F8 */	addi r3, r3, -15624
/* 80C00578  4B 43 C1 41 */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80C0057C  7C 78 1B 78 */	mr r24, r3
/* 80C00580  7F 83 E3 78 */	mr r3, r28
/* 80C00584  81 9C 05 68 */	lwz r12, 0x568(r28)
/* 80C00588  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C0058C  7D 89 03 A6 */	mtctr r12
/* 80C00590  4E 80 04 21 */	bctrl 
/* 80C00594  7C 64 1B 78 */	mr r4, r3
/* 80C00598  7F 83 E3 78 */	mr r3, r28
/* 80C0059C  7F 05 C3 78 */	mr r5, r24
/* 80C005A0  38 C0 00 00 */	li r6, 0
/* 80C005A4  38 E0 3B 10 */	li r7, 0x3b10
/* 80C005A8  4B 54 F0 65 */	bl MoveBGCreate__23daBaseNpc_moveBgActor_cFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUl
/* 80C005AC  2C 03 00 05 */	cmpwi r3, 5
/* 80C005B0  40 82 00 0C */	bne lbl_80C005BC
/* 80C005B4  38 60 00 05 */	li r3, 5
/* 80C005B8  48 00 00 44 */	b lbl_80C005FC
lbl_80C005BC:
/* 80C005BC  3C 60 80 C0 */	lis r3, rideCallBack__11daObj_GrA_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80BFFF58@ha */
/* 80C005C0  38 03 FF 58 */	addi r0, r3, rideCallBack__11daObj_GrA_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80BFFF58@l */
/* 80C005C4  80 7C 0A 14 */	lwz r3, 0xa14(r28)
/* 80C005C8  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C005CC  7F 83 E3 78 */	mr r3, r28
/* 80C005D0  48 00 08 4D */	bl isDelete__11daObj_GrA_cFv
/* 80C005D4  2C 03 00 00 */	cmpwi r3, 0
/* 80C005D8  41 82 00 0C */	beq lbl_80C005E4
/* 80C005DC  38 60 00 05 */	li r3, 5
/* 80C005E0  48 00 00 1C */	b lbl_80C005FC
lbl_80C005E4:
/* 80C005E4  7F 83 E3 78 */	mr r3, r28
/* 80C005E8  48 00 0A ED */	bl init__11daObj_GrA_cFv
/* 80C005EC  48 00 00 0C */	b lbl_80C005F8
lbl_80C005F0:
/* 80C005F0  38 60 00 00 */	li r3, 0
/* 80C005F4  48 00 00 08 */	b lbl_80C005FC
lbl_80C005F8:
/* 80C005F8  7F A3 EB 78 */	mr r3, r29
lbl_80C005FC:
/* 80C005FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C00600  4B 76 1C 15 */	bl _restgpr_24
/* 80C00604  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C00608  7C 08 03 A6 */	mtlr r0
/* 80C0060C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C00610  4E 80 00 20 */	blr 
