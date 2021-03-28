lbl_8062F51C:
/* 8062F51C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8062F520  7C 08 02 A6 */	mflr r0
/* 8062F524  90 01 00 64 */	stw r0, 0x64(r1)
/* 8062F528  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8062F52C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8062F530  39 61 00 50 */	addi r11, r1, 0x50
/* 8062F534  4B D3 2C 8C */	b _savegpr_22
/* 8062F538  7C 7F 1B 78 */	mr r31, r3
/* 8062F53C  3C 60 80 64 */	lis r3, lit_3788@ha
/* 8062F540  3B A3 97 F4 */	addi r29, r3, lit_3788@l
/* 8062F544  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 8062F548  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8062F54C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8062F550  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8062F554  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8062F558  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8062F55C  38 80 00 10 */	li r4, 0x10
/* 8062F560  38 A1 00 14 */	addi r5, r1, 0x14
/* 8062F564  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8062F568  4B B7 42 5C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8062F56C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062F570  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8062F574  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8062F578  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8062F57C  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 8062F580  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8062F584  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8062F588  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8062F58C  3B 00 00 00 */	li r24, 0
/* 8062F590  3A C0 00 00 */	li r22, 0
/* 8062F594  C3 FD 00 30 */	lfs f31, 0x30(r29)
lbl_8062F598:
/* 8062F598  7F 5F B2 14 */	add r26, r31, r22
/* 8062F59C  C0 1A 0F B8 */	lfs f0, 0xfb8(r26)
/* 8062F5A0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8062F5A4  41 82 02 98 */	beq lbl_8062F83C
/* 8062F5A8  83 3A 05 FC */	lwz r25, 0x5fc(r26)
/* 8062F5AC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8062F5B0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8062F5B4  80 99 00 04 */	lwz r4, 4(r25)
/* 8062F5B8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8062F5BC  4B B7 57 E4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8062F5C0  83 99 00 04 */	lwz r28, 4(r25)
/* 8062F5C4  3A E0 00 00 */	li r23, 0
/* 8062F5C8  48 00 02 5C */	b lbl_8062F824
lbl_8062F5CC:
/* 8062F5CC  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 8062F5D0  56 E0 13 BA */	rlwinm r0, r23, 2, 0xe, 0x1d
/* 8062F5D4  7F 63 00 2E */	lwzx r27, r3, r0
/* 8062F5D8  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8062F5DC  38 80 00 00 */	li r4, 0
/* 8062F5E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8062F5E4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8062F5E8  7D 89 03 A6 */	mtctr r12
/* 8062F5EC  4E 80 04 21 */	bctrl 
/* 8062F5F0  C0 1A 0F B8 */	lfs f0, 0xfb8(r26)
/* 8062F5F4  FC 00 00 1E */	fctiwz f0, f0
/* 8062F5F8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8062F5FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062F600  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8062F604  B0 03 00 06 */	sth r0, 6(r3)
/* 8062F608  2C 18 00 00 */	cmpwi r24, 0
/* 8062F60C  40 82 02 14 */	bne lbl_8062F820
/* 8062F610  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 8062F614  C0 1A 0F B8 */	lfs f0, 0xfb8(r26)
/* 8062F618  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8062F61C  40 82 01 08 */	bne lbl_8062F724
/* 8062F620  38 00 00 01 */	li r0, 1
/* 8062F624  90 1B 00 10 */	stw r0, 0x10(r27)
/* 8062F628  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8062F62C  38 80 00 01 */	li r4, 1
/* 8062F630  81 83 00 00 */	lwz r12, 0(r3)
/* 8062F634  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8062F638  7D 89 03 A6 */	mtctr r12
/* 8062F63C  4E 80 04 21 */	bctrl 
/* 8062F640  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8062F644  81 83 00 00 */	lwz r12, 0(r3)
/* 8062F648  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8062F64C  7D 89 03 A6 */	mtctr r12
/* 8062F650  4E 80 04 21 */	bctrl 
/* 8062F654  A0 03 00 00 */	lhz r0, 0(r3)
/* 8062F658  1C A0 00 03 */	mulli r5, r0, 3
/* 8062F65C  3C 80 80 43 */	lis r4, j3dZModeTable@ha
/* 8062F660  38 04 71 60 */	addi r0, r4, j3dZModeTable@l
/* 8062F664  7C 80 2A 14 */	add r4, r0, r5
/* 8062F668  88 04 00 01 */	lbz r0, 1(r4)
/* 8062F66C  54 05 08 3C */	slwi r5, r0, 1
/* 8062F670  88 04 00 00 */	lbz r0, 0(r4)
/* 8062F674  54 04 20 36 */	slwi r4, r0, 4
/* 8062F678  38 04 00 01 */	addi r0, r4, 1
/* 8062F67C  7C 05 02 14 */	add r0, r5, r0
/* 8062F680  B0 03 00 00 */	sth r0, 0(r3)
/* 8062F684  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8062F688  81 83 00 00 */	lwz r12, 0(r3)
/* 8062F68C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8062F690  7D 89 03 A6 */	mtctr r12
/* 8062F694  4E 80 04 21 */	bctrl 
/* 8062F698  A0 03 00 00 */	lhz r0, 0(r3)
/* 8062F69C  1C A0 00 03 */	mulli r5, r0, 3
/* 8062F6A0  3C 80 80 43 */	lis r4, j3dZModeTable@ha
/* 8062F6A4  38 04 71 60 */	addi r0, r4, j3dZModeTable@l
/* 8062F6A8  7C A0 2A 14 */	add r5, r0, r5
/* 8062F6AC  88 85 00 02 */	lbz r4, 2(r5)
/* 8062F6B0  88 05 00 00 */	lbz r0, 0(r5)
/* 8062F6B4  54 00 20 36 */	slwi r0, r0, 4
/* 8062F6B8  7C 80 22 14 */	add r4, r0, r4
/* 8062F6BC  38 04 00 06 */	addi r0, r4, 6
/* 8062F6C0  B0 03 00 00 */	sth r0, 0(r3)
/* 8062F6C4  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8062F6C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8062F6CC  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8062F6D0  7D 89 03 A6 */	mtctr r12
/* 8062F6D4  4E 80 04 21 */	bctrl 
/* 8062F6D8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8062F6DC  1C A0 00 03 */	mulli r5, r0, 3
/* 8062F6E0  3C 80 80 43 */	lis r4, j3dZModeTable@ha
/* 8062F6E4  38 04 71 60 */	addi r0, r4, j3dZModeTable@l
/* 8062F6E8  7C A0 2A 14 */	add r5, r0, r5
/* 8062F6EC  88 85 00 02 */	lbz r4, 2(r5)
/* 8062F6F0  88 05 00 01 */	lbz r0, 1(r5)
/* 8062F6F4  54 00 08 3C */	slwi r0, r0, 1
/* 8062F6F8  7C 80 22 14 */	add r4, r0, r4
/* 8062F6FC  38 04 00 10 */	addi r0, r4, 0x10
/* 8062F700  B0 03 00 00 */	sth r0, 0(r3)
/* 8062F704  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8062F708  81 83 00 00 */	lwz r12, 0(r3)
/* 8062F70C  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8062F710  7D 89 03 A6 */	mtctr r12
/* 8062F714  4E 80 04 21 */	bctrl 
/* 8062F718  38 00 00 00 */	li r0, 0
/* 8062F71C  98 03 00 00 */	stb r0, 0(r3)
/* 8062F720  48 00 01 00 */	b lbl_8062F820
lbl_8062F724:
/* 8062F724  38 00 00 04 */	li r0, 4
/* 8062F728  90 1B 00 10 */	stw r0, 0x10(r27)
/* 8062F72C  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8062F730  38 80 00 01 */	li r4, 1
/* 8062F734  81 83 00 00 */	lwz r12, 0(r3)
/* 8062F738  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8062F73C  7D 89 03 A6 */	mtctr r12
/* 8062F740  4E 80 04 21 */	bctrl 
/* 8062F744  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8062F748  81 83 00 00 */	lwz r12, 0(r3)
/* 8062F74C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8062F750  7D 89 03 A6 */	mtctr r12
/* 8062F754  4E 80 04 21 */	bctrl 
/* 8062F758  A0 03 00 00 */	lhz r0, 0(r3)
/* 8062F75C  1C A0 00 03 */	mulli r5, r0, 3
/* 8062F760  3C 80 80 43 */	lis r4, j3dZModeTable@ha
/* 8062F764  38 04 71 60 */	addi r0, r4, j3dZModeTable@l
/* 8062F768  7C A0 2A 14 */	add r5, r0, r5
/* 8062F76C  88 05 00 01 */	lbz r0, 1(r5)
/* 8062F770  54 04 08 3C */	slwi r4, r0, 1
/* 8062F774  88 05 00 00 */	lbz r0, 0(r5)
/* 8062F778  54 00 20 36 */	slwi r0, r0, 4
/* 8062F77C  7C 04 02 14 */	add r0, r4, r0
/* 8062F780  B0 03 00 00 */	sth r0, 0(r3)
/* 8062F784  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8062F788  81 83 00 00 */	lwz r12, 0(r3)
/* 8062F78C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8062F790  7D 89 03 A6 */	mtctr r12
/* 8062F794  4E 80 04 21 */	bctrl 
/* 8062F798  A0 03 00 00 */	lhz r0, 0(r3)
/* 8062F79C  1C A0 00 03 */	mulli r5, r0, 3
/* 8062F7A0  3C 80 80 43 */	lis r4, j3dZModeTable@ha
/* 8062F7A4  38 04 71 60 */	addi r0, r4, j3dZModeTable@l
/* 8062F7A8  7C A0 2A 14 */	add r5, r0, r5
/* 8062F7AC  88 85 00 02 */	lbz r4, 2(r5)
/* 8062F7B0  88 05 00 00 */	lbz r0, 0(r5)
/* 8062F7B4  54 00 20 36 */	slwi r0, r0, 4
/* 8062F7B8  7C 80 22 14 */	add r4, r0, r4
/* 8062F7BC  38 04 00 06 */	addi r0, r4, 6
/* 8062F7C0  B0 03 00 00 */	sth r0, 0(r3)
/* 8062F7C4  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8062F7C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8062F7CC  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8062F7D0  7D 89 03 A6 */	mtctr r12
/* 8062F7D4  4E 80 04 21 */	bctrl 
/* 8062F7D8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8062F7DC  1C A0 00 03 */	mulli r5, r0, 3
/* 8062F7E0  3C 80 80 43 */	lis r4, j3dZModeTable@ha
/* 8062F7E4  38 04 71 60 */	addi r0, r4, j3dZModeTable@l
/* 8062F7E8  7C A0 2A 14 */	add r5, r0, r5
/* 8062F7EC  88 85 00 02 */	lbz r4, 2(r5)
/* 8062F7F0  88 05 00 01 */	lbz r0, 1(r5)
/* 8062F7F4  54 00 08 3C */	slwi r0, r0, 1
/* 8062F7F8  7C 80 22 14 */	add r4, r0, r4
/* 8062F7FC  38 04 00 10 */	addi r0, r4, 0x10
/* 8062F800  B0 03 00 00 */	sth r0, 0(r3)
/* 8062F804  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8062F808  81 83 00 00 */	lwz r12, 0(r3)
/* 8062F80C  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8062F810  7D 89 03 A6 */	mtctr r12
/* 8062F814  4E 80 04 21 */	bctrl 
/* 8062F818  38 00 00 01 */	li r0, 1
/* 8062F81C  98 03 00 00 */	stb r0, 0(r3)
lbl_8062F820:
/* 8062F820  3A F7 00 01 */	addi r23, r23, 1
lbl_8062F824:
/* 8062F824  56 E3 04 3E */	clrlwi r3, r23, 0x10
/* 8062F828  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 8062F82C  7C 03 00 40 */	cmplw r3, r0
/* 8062F830  41 80 FD 9C */	blt lbl_8062F5CC
/* 8062F834  7F 23 CB 78 */	mr r3, r25
/* 8062F838  4B 9D E4 8C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8062F83C:
/* 8062F83C  3B 18 00 01 */	addi r24, r24, 1
/* 8062F840  2C 18 00 02 */	cmpwi r24, 2
/* 8062F844  3A D6 00 04 */	addi r22, r22, 4
/* 8062F848  41 80 FD 50 */	blt lbl_8062F598
/* 8062F84C  80 9F 06 04 */	lwz r4, 0x604(r31)
/* 8062F850  28 04 00 00 */	cmplwi r4, 0
/* 8062F854  41 82 00 20 */	beq lbl_8062F874
/* 8062F858  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8062F85C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8062F860  80 84 00 04 */	lwz r4, 4(r4)
/* 8062F864  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8062F868  4B B7 55 38 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8062F86C  80 7F 06 04 */	lwz r3, 0x604(r31)
/* 8062F870  4B 9D E4 54 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8062F874:
/* 8062F874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062F878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062F87C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8062F880  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8062F884  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8062F888  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8062F88C  88 1F 0F CE */	lbz r0, 0xfce(r31)
/* 8062F890  28 00 00 01 */	cmplwi r0, 1
/* 8062F894  40 82 00 0C */	bne lbl_8062F8A0
/* 8062F898  38 60 00 01 */	li r3, 1
/* 8062F89C  48 00 02 D4 */	b lbl_8062FB70
lbl_8062F8A0:
/* 8062F8A0  88 1F 0F B5 */	lbz r0, 0xfb5(r31)
/* 8062F8A4  28 00 00 02 */	cmplwi r0, 2
/* 8062F8A8  40 82 00 0C */	bne lbl_8062F8B4
/* 8062F8AC  38 60 00 01 */	li r3, 1
/* 8062F8B0  48 00 02 C0 */	b lbl_8062FB70
lbl_8062F8B4:
/* 8062F8B4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8062F8B8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8062F8BC  38 80 00 00 */	li r4, 0
/* 8062F8C0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8062F8C4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8062F8C8  4B B7 3E FC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8062F8CC  88 1F 0F A8 */	lbz r0, 0xfa8(r31)
/* 8062F8D0  28 00 00 07 */	cmplwi r0, 7
/* 8062F8D4  40 82 00 0C */	bne lbl_8062F8E0
/* 8062F8D8  3A E0 00 02 */	li r23, 2
/* 8062F8DC  48 00 00 18 */	b lbl_8062F8F4
lbl_8062F8E0:
/* 8062F8E0  28 00 00 04 */	cmplwi r0, 4
/* 8062F8E4  40 80 00 0C */	bge lbl_8062F8F0
/* 8062F8E8  3A E0 00 00 */	li r23, 0
/* 8062F8EC  48 00 00 08 */	b lbl_8062F8F4
lbl_8062F8F0:
/* 8062F8F0  3A E0 00 01 */	li r23, 1
lbl_8062F8F4:
/* 8062F8F4  88 1F 0F B5 */	lbz r0, 0xfb5(r31)
/* 8062F8F8  28 00 00 03 */	cmplwi r0, 3
/* 8062F8FC  41 82 00 E8 */	beq lbl_8062F9E4
/* 8062F900  56 E0 10 3A */	slwi r0, r23, 2
/* 8062F904  7C 7F 02 14 */	add r3, r31, r0
/* 8062F908  83 03 05 E8 */	lwz r24, 0x5e8(r3)
/* 8062F90C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8062F910  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8062F914  80 98 00 04 */	lwz r4, 4(r24)
/* 8062F918  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8062F91C  4B B7 54 84 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8062F920  88 1F 0F A8 */	lbz r0, 0xfa8(r31)
/* 8062F924  28 00 00 07 */	cmplwi r0, 7
/* 8062F928  41 82 00 18 */	beq lbl_8062F940
/* 8062F92C  80 98 00 04 */	lwz r4, 4(r24)
/* 8062F930  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8062F934  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8062F938  38 84 00 58 */	addi r4, r4, 0x58
/* 8062F93C  4B 9D DD 9C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_8062F940:
/* 8062F940  2C 17 00 02 */	cmpwi r23, 2
/* 8062F944  40 82 00 84 */	bne lbl_8062F9C8
/* 8062F948  80 B8 00 04 */	lwz r5, 4(r24)
/* 8062F94C  88 1F 0F AB */	lbz r0, 0xfab(r31)
/* 8062F950  2C 00 00 02 */	cmpwi r0, 2
/* 8062F954  40 81 00 08 */	ble lbl_8062F95C
/* 8062F958  38 00 00 02 */	li r0, 2
lbl_8062F95C:
/* 8062F95C  38 E0 00 00 */	li r7, 0
/* 8062F960  1C 80 00 09 */	mulli r4, r0, 9
/* 8062F964  3C 60 80 64 */	lis r3, yo_material_draw@ha
/* 8062F968  38 03 9B 44 */	addi r0, r3, yo_material_draw@l
/* 8062F96C  7C C0 22 14 */	add r6, r0, r4
/* 8062F970  48 00 00 48 */	b lbl_8062F9B8
lbl_8062F974:
/* 8062F974  80 85 00 60 */	lwz r4, 0x60(r5)
/* 8062F978  54 E3 04 3E */	clrlwi r3, r7, 0x10
/* 8062F97C  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 8062F980  7C 84 00 2E */	lwzx r4, r4, r0
/* 8062F984  7C 06 18 AE */	lbzx r0, r6, r3
/* 8062F988  28 00 00 00 */	cmplwi r0, 0
/* 8062F98C  41 82 00 18 */	beq lbl_8062F9A4
/* 8062F990  80 64 00 08 */	lwz r3, 8(r4)
/* 8062F994  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8062F998  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8062F99C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8062F9A0  48 00 00 14 */	b lbl_8062F9B4
lbl_8062F9A4:
/* 8062F9A4  80 64 00 08 */	lwz r3, 8(r4)
/* 8062F9A8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8062F9AC  60 00 00 01 */	ori r0, r0, 1
/* 8062F9B0  90 03 00 0C */	stw r0, 0xc(r3)
lbl_8062F9B4:
/* 8062F9B4  38 E7 00 01 */	addi r7, r7, 1
lbl_8062F9B8:
/* 8062F9B8  54 E3 04 3E */	clrlwi r3, r7, 0x10
/* 8062F9BC  A0 05 00 5C */	lhz r0, 0x5c(r5)
/* 8062F9C0  7C 03 00 40 */	cmplw r3, r0
/* 8062F9C4  41 80 FF B0 */	blt lbl_8062F974
lbl_8062F9C8:
/* 8062F9C8  7F E3 FB 78 */	mr r3, r31
/* 8062F9CC  80 98 00 04 */	lwz r4, 4(r24)
/* 8062F9D0  4B 9E DA 5C */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 8062F9D4  7F 03 C3 78 */	mr r3, r24
/* 8062F9D8  4B 9D E2 EC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8062F9DC  7F 03 C3 78 */	mr r3, r24
/* 8062F9E0  4B A0 1F 6C */	b entry__10daMirror_cFP8J3DModel
lbl_8062F9E4:
/* 8062F9E4  2C 17 00 02 */	cmpwi r23, 2
/* 8062F9E8  41 82 00 10 */	beq lbl_8062F9F8
/* 8062F9EC  88 1F 0F B5 */	lbz r0, 0xfb5(r31)
/* 8062F9F0  28 00 00 03 */	cmplwi r0, 3
/* 8062F9F4  40 82 01 40 */	bne lbl_8062FB34
lbl_8062F9F8:
/* 8062F9F8  88 1F 0F D0 */	lbz r0, 0xfd0(r31)
/* 8062F9FC  28 00 00 00 */	cmplwi r0, 0
/* 8062FA00  40 82 00 A8 */	bne lbl_8062FAA8
/* 8062FA04  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 8062FA08  82 C3 00 04 */	lwz r22, 4(r3)
/* 8062FA0C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8062FA10  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8062FA14  80 96 00 04 */	lwz r4, 4(r22)
/* 8062FA18  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8062FA1C  4B B7 53 84 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8062FA20  80 96 00 04 */	lwz r4, 4(r22)
/* 8062FA24  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 8062FA28  38 84 00 58 */	addi r4, r4, 0x58
/* 8062FA2C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8062FA30  FC 00 00 1E */	fctiwz f0, f0
/* 8062FA34  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8062FA38  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8062FA3C  4B 9D DB AC */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 8062FA40  80 96 00 04 */	lwz r4, 4(r22)
/* 8062FA44  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8062FA48  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8062FA4C  38 84 00 58 */	addi r4, r4, 0x58
/* 8062FA50  4B 9D DC 88 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8062FA54  80 96 00 04 */	lwz r4, 4(r22)
/* 8062FA58  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 8062FA5C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8062FA60  38 84 00 58 */	addi r4, r4, 0x58
/* 8062FA64  4B 9D DD 44 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 8062FA68  88 1F 0F D1 */	lbz r0, 0xfd1(r31)
/* 8062FA6C  28 00 00 00 */	cmplwi r0, 0
/* 8062FA70  41 82 00 18 */	beq lbl_8062FA88
/* 8062FA74  80 96 00 04 */	lwz r4, 4(r22)
/* 8062FA78  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 8062FA7C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8062FA80  38 84 00 58 */	addi r4, r4, 0x58
/* 8062FA84  4B 9D DD 24 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_8062FA88:
/* 8062FA88  7F E3 FB 78 */	mr r3, r31
/* 8062FA8C  80 96 00 04 */	lwz r4, 4(r22)
/* 8062FA90  4B 9E D9 9C */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 8062FA94  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 8062FA98  4B 9E 17 28 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8062FA9C  7E C3 B3 78 */	mr r3, r22
/* 8062FAA0  4B A0 1E AC */	b entry__10daMirror_cFP8J3DModel
/* 8062FAA4  48 00 00 34 */	b lbl_8062FAD8
lbl_8062FAA8:
/* 8062FAA8  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 8062FAAC  82 C3 00 04 */	lwz r22, 4(r3)
/* 8062FAB0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8062FAB4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8062FAB8  80 96 00 04 */	lwz r4, 4(r22)
/* 8062FABC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8062FAC0  4B B7 52 E0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8062FAC4  7F E3 FB 78 */	mr r3, r31
/* 8062FAC8  80 96 00 04 */	lwz r4, 4(r22)
/* 8062FACC  4B 9E D9 60 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 8062FAD0  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 8062FAD4  4B 9E 16 EC */	b entryDL__16mDoExt_McaMorfSOFv
lbl_8062FAD8:
/* 8062FAD8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8062FADC  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 8062FAE0  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8062FAE4  EC 20 18 2A */	fadds f1, f0, f3
/* 8062FAE8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8062FAEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8062FAF0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8062FAF4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8062FAF8  80 7F 0F 78 */	lwz r3, 0xf78(r31)
/* 8062FAFC  38 80 00 01 */	li r4, 1
/* 8062FB00  7E C5 B3 78 */	mr r5, r22
/* 8062FB04  38 C1 00 08 */	addi r6, r1, 8
/* 8062FB08  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8062FB0C  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 8062FB10  C0 9F 10 F4 */	lfs f4, 0x10f4(r31)
/* 8062FB14  38 FF 11 4C */	addi r7, r31, 0x114c
/* 8062FB18  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8062FB1C  39 20 00 00 */	li r9, 0
/* 8062FB20  C0 BD 00 1C */	lfs f5, 0x1c(r29)
/* 8062FB24  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8062FB28  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8062FB2C  4B 9F ED E4 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8062FB30  90 7F 0F 78 */	stw r3, 0xf78(r31)
lbl_8062FB34:
/* 8062FB34  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 8062FB38  C0 3F 0F C8 */	lfs f1, 0xfc8(r31)
/* 8062FB3C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8062FB40  41 82 00 20 */	beq lbl_8062FB60
/* 8062FB44  FC 00 08 1E */	fctiwz f0, f1
/* 8062FB48  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8062FB4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062FB50  3C 60 80 45 */	lis r3, struct_80450BE4+0x1@ha
/* 8062FB54  98 03 0B E5 */	stb r0, struct_80450BE4+0x1@l(r3)
/* 8062FB58  4B 9D 85 20 */	b onBlure__13mDoGph_gInf_cFv
/* 8062FB5C  48 00 00 10 */	b lbl_8062FB6C
lbl_8062FB60:
/* 8062FB60  38 00 00 00 */	li r0, 0
/* 8062FB64  3C 60 80 45 */	lis r3, struct_80450BE4+0x0@ha
/* 8062FB68  98 03 0B E4 */	stb r0, struct_80450BE4+0x0@l(r3)
lbl_8062FB6C:
/* 8062FB6C  38 60 00 01 */	li r3, 1
lbl_8062FB70:
/* 8062FB70  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8062FB74  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8062FB78  39 61 00 50 */	addi r11, r1, 0x50
/* 8062FB7C  4B D3 26 90 */	b _restgpr_22
/* 8062FB80  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8062FB84  7C 08 03 A6 */	mtlr r0
/* 8062FB88  38 21 00 60 */	addi r1, r1, 0x60
/* 8062FB8C  4E 80 00 20 */	blr 
