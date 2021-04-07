lbl_8084DD18:
/* 8084DD18  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8084DD1C  7C 08 02 A6 */	mflr r0
/* 8084DD20  90 01 00 74 */	stw r0, 0x74(r1)
/* 8084DD24  39 61 00 70 */	addi r11, r1, 0x70
/* 8084DD28  4B B1 44 B1 */	bl _savegpr_28
/* 8084DD2C  7C 7C 1B 78 */	mr r28, r3
/* 8084DD30  3C 60 80 85 */	lis r3, lit_3929@ha /* 0x80854B04@ha */
/* 8084DD34  3B C3 4B 04 */	addi r30, r3, lit_3929@l /* 0x80854B04@l */
/* 8084DD38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084DD3C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084DD40  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8084DD44  AB A3 04 E6 */	lha r29, 0x4e6(r3)
/* 8084DD48  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8084DD4C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8084DD50  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8084DD54  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8084DD58  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8084DD5C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8084DD60  48 00 6D 81 */	bl getMidnaActor__9daPy_py_cFv
/* 8084DD64  28 03 00 00 */	cmplwi r3, 0
/* 8084DD68  41 82 00 1C */	beq lbl_8084DD84
/* 8084DD6C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8084DD70  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8084DD74  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8084DD78  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8084DD7C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8084DD80  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_8084DD84:
/* 8084DD84  80 1C 07 48 */	lwz r0, 0x748(r28)
/* 8084DD88  2C 00 00 02 */	cmpwi r0, 2
/* 8084DD8C  41 82 01 D0 */	beq lbl_8084DF5C
/* 8084DD90  40 80 00 14 */	bge lbl_8084DDA4
/* 8084DD94  2C 00 00 00 */	cmpwi r0, 0
/* 8084DD98  41 82 00 1C */	beq lbl_8084DDB4
/* 8084DD9C  40 80 01 AC */	bge lbl_8084DF48
/* 8084DDA0  48 00 05 0C */	b lbl_8084E2AC
lbl_8084DDA4:
/* 8084DDA4  2C 00 00 04 */	cmpwi r0, 4
/* 8084DDA8  41 82 04 4C */	beq lbl_8084E1F4
/* 8084DDAC  40 80 05 00 */	bge lbl_8084E2AC
/* 8084DDB0  48 00 04 0C */	b lbl_8084E1BC
lbl_8084DDB4:
/* 8084DDB4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8084DDB8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8084DDBC  80 63 00 00 */	lwz r3, 0(r3)
/* 8084DDC0  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 8084DDC4  80 9C 07 60 */	lwz r4, 0x760(r28)
/* 8084DDC8  4B A6 84 21 */	bl setDemoName__11Z2StatusMgrFPc
/* 8084DDCC  38 00 00 00 */	li r0, 0
/* 8084DDD0  98 1C 07 71 */	stb r0, 0x771(r28)
/* 8084DDD4  80 7C 07 6C */	lwz r3, 0x76c(r28)
/* 8084DDD8  88 9C 07 71 */	lbz r4, 0x771(r28)
/* 8084DDDC  7C 84 07 74 */	extsb r4, r4
/* 8084DDE0  4B 80 39 D1 */	bl dPath_GetPnt__FPC5dPathi
/* 8084DDE4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084DDE8  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8084DDEC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084DDF0  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8084DDF4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084DDF8  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 8084DDFC  88 7C 07 71 */	lbz r3, 0x771(r28)
/* 8084DE00  38 03 00 01 */	addi r0, r3, 1
/* 8084DE04  98 1C 07 71 */	stb r0, 0x771(r28)
/* 8084DE08  88 1C 07 71 */	lbz r0, 0x771(r28)
/* 8084DE0C  7C 04 07 74 */	extsb r4, r0
/* 8084DE10  80 7C 07 6C */	lwz r3, 0x76c(r28)
/* 8084DE14  A0 03 00 00 */	lhz r0, 0(r3)
/* 8084DE18  7C 04 00 00 */	cmpw r4, r0
/* 8084DE1C  41 80 00 0C */	blt lbl_8084DE28
/* 8084DE20  38 00 00 00 */	li r0, 0
/* 8084DE24  98 1C 07 71 */	stb r0, 0x771(r28)
lbl_8084DE28:
/* 8084DE28  80 7C 07 6C */	lwz r3, 0x76c(r28)
/* 8084DE2C  88 9C 07 71 */	lbz r4, 0x771(r28)
/* 8084DE30  7C 84 07 74 */	extsb r4, r4
/* 8084DE34  4B 80 39 7D */	bl dPath_GetPnt__FPC5dPathi
/* 8084DE38  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084DE3C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8084DE40  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084DE44  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8084DE48  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084DE4C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8084DE50  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8084DE54  38 81 00 38 */	addi r4, r1, 0x38
/* 8084DE58  4B A2 2D AD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8084DE5C  7C 7D 1B 78 */	mr r29, r3
/* 8084DE60  38 80 00 02 */	li r4, 2
/* 8084DE64  80 7C 07 6C */	lwz r3, 0x76c(r28)
/* 8084DE68  A0 A3 00 00 */	lhz r5, 0(r3)
/* 8084DE6C  2C 05 00 02 */	cmpwi r5, 2
/* 8084DE70  41 81 00 08 */	bgt lbl_8084DE78
/* 8084DE74  38 85 FF FF */	addi r4, r5, -1
lbl_8084DE78:
/* 8084DE78  4B 80 39 39 */	bl dPath_GetPnt__FPC5dPathi
/* 8084DE7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084DE80  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8084DE84  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084DE88  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8084DE8C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084DE90  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8084DE94  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8084DE98  38 81 00 38 */	addi r4, r1, 0x38
/* 8084DE9C  4B A2 2D 69 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8084DEA0  7F A4 07 34 */	extsh r4, r29
/* 8084DEA4  7C 03 20 50 */	subf r0, r3, r4
/* 8084DEA8  7C 00 07 35 */	extsh. r0, r0
/* 8084DEAC  38 04 10 00 */	addi r0, r4, 0x1000
/* 8084DEB0  7C 00 07 34 */	extsh r0, r0
/* 8084DEB4  40 80 00 0C */	bge lbl_8084DEC0
/* 8084DEB8  38 04 F0 00 */	addi r0, r4, -4096
/* 8084DEBC  7C 00 07 34 */	extsh r0, r0
lbl_8084DEC0:
/* 8084DEC0  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 8084DEC4  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 8084DEC8  38 80 00 00 */	li r4, 0
/* 8084DECC  B0 9C 04 E8 */	sth r4, 0x4e8(r28)
/* 8084DED0  B0 9C 04 E4 */	sth r4, 0x4e4(r28)
/* 8084DED4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8084DED8  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8084DEDC  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8084DEE0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8084DEE4  38 00 00 B4 */	li r0, 0xb4
/* 8084DEE8  90 1C 07 2C */	stw r0, 0x72c(r28)
/* 8084DEEC  80 7C 07 2C */	lwz r3, 0x72c(r28)
/* 8084DEF0  38 03 00 5A */	addi r0, r3, 0x5a
/* 8084DEF4  90 1C 07 28 */	stw r0, 0x728(r28)
/* 8084DEF8  98 9C 06 E8 */	stb r4, 0x6e8(r28)
/* 8084DEFC  80 1C 07 3C */	lwz r0, 0x73c(r28)
/* 8084DF00  2C 00 00 00 */	cmpwi r0, 0
/* 8084DF04  40 82 00 2C */	bne lbl_8084DF30
/* 8084DF08  38 60 00 00 */	li r3, 0
/* 8084DF0C  4B 7D EA 71 */	bl getLayerNo__14dComIfG_play_cFi
/* 8084DF10  2C 03 00 0D */	cmpwi r3, 0xd
/* 8084DF14  40 82 00 1C */	bne lbl_8084DF30
/* 8084DF18  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8084DF1C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 8084DF20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084DF24  40 81 00 0C */	ble lbl_8084DF30
/* 8084DF28  38 00 00 01 */	li r0, 1
/* 8084DF2C  98 1C 06 E8 */	stb r0, 0x6e8(r28)
lbl_8084DF30:
/* 8084DF30  7F 83 E3 78 */	mr r3, r28
/* 8084DF34  38 80 00 00 */	li r4, 0
/* 8084DF38  4B FF FA E1 */	bl calcCircleCamera__8daKago_cFi
/* 8084DF3C  38 00 00 00 */	li r0, 0
/* 8084DF40  98 1C 06 E4 */	stb r0, 0x6e4(r28)
/* 8084DF44  48 00 03 68 */	b lbl_8084E2AC
lbl_8084DF48:
/* 8084DF48  38 00 00 5A */	li r0, 0x5a
/* 8084DF4C  90 1C 07 28 */	stw r0, 0x728(r28)
/* 8084DF50  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8084DF54  D0 1C 06 F8 */	stfs f0, 0x6f8(r28)
/* 8084DF58  48 00 03 54 */	b lbl_8084E2AC
lbl_8084DF5C:
/* 8084DF5C  80 1C 07 3C */	lwz r0, 0x73c(r28)
/* 8084DF60  2C 00 00 00 */	cmpwi r0, 0
/* 8084DF64  41 82 00 10 */	beq lbl_8084DF74
/* 8084DF68  7F 83 E3 78 */	mr r3, r28
/* 8084DF6C  4B FF CC C1 */	bl searchNearPassPoint__8daKago_cFv
/* 8084DF70  98 7C 07 70 */	stb r3, 0x770(r28)
lbl_8084DF74:
/* 8084DF74  38 00 00 01 */	li r0, 1
/* 8084DF78  90 1C 07 58 */	stw r0, 0x758(r28)
/* 8084DF7C  88 1C 07 72 */	lbz r0, 0x772(r28)
/* 8084DF80  7C 00 07 75 */	extsb. r0, r0
/* 8084DF84  40 80 00 38 */	bge lbl_8084DFBC
/* 8084DF88  3C 7D 00 01 */	addis r3, r29, 1
/* 8084DF8C  38 03 80 00 */	addi r0, r3, -32768
/* 8084DF90  7C 1D 07 34 */	extsh r29, r0
/* 8084DF94  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8084DF98  38 81 00 50 */	addi r4, r1, 0x50
/* 8084DF9C  7F A5 EB 78 */	mr r5, r29
/* 8084DFA0  38 C0 00 00 */	li r6, 0
/* 8084DFA4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8084DFA8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8084DFAC  7D 89 03 A6 */	mtctr r12
/* 8084DFB0  4E 80 04 21 */	bctrl 
/* 8084DFB4  38 00 FF FF */	li r0, -1
/* 8084DFB8  90 1C 07 58 */	stw r0, 0x758(r28)
lbl_8084DFBC:
/* 8084DFBC  38 61 00 44 */	addi r3, r1, 0x44
/* 8084DFC0  4B 7B ED A5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8084DFC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8084DFC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084DFCC  7F A4 EB 78 */	mr r4, r29
/* 8084DFD0  4B 7B E4 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 8084DFD4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8084DFD8  C0 5E 01 20 */	lfs f2, 0x120(r30)
/* 8084DFDC  C0 7E 01 14 */	lfs f3, 0x114(r30)
/* 8084DFE0  4B 7B ED BD */	bl transM__14mDoMtx_stack_cFfff
/* 8084DFE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8084DFE8  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084DFEC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084DFF0  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8084DFF4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8084DFF8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8084DFFC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084E000  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 8084E004  7F 83 E3 78 */	mr r3, r28
/* 8084E008  38 80 00 0C */	li r4, 0xc
/* 8084E00C  38 A0 00 02 */	li r5, 2
/* 8084E010  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8084E014  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8084E018  4B FF B6 D9 */	bl setBck__8daKago_cFiUcff
/* 8084E01C  38 61 00 44 */	addi r3, r1, 0x44
/* 8084E020  4B 7B ED 45 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8084E024  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8084E028  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084E02C  7F A4 EB 78 */	mr r4, r29
/* 8084E030  4B 7B E4 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 8084E034  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8084E038  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8084E03C  C0 7E 01 24 */	lfs f3, 0x124(r30)
/* 8084E040  4B 7B ED 5D */	bl transM__14mDoMtx_stack_cFfff
/* 8084E044  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084E048  D0 1C 06 A4 */	stfs f0, 0x6a4(r28)
/* 8084E04C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8084E050  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 8084E054  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084E058  D0 1C 06 AC */	stfs f0, 0x6ac(r28)
/* 8084E05C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8084E060  38 9C 06 A4 */	addi r4, r28, 0x6a4
/* 8084E064  4B A2 2B A1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8084E068  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 8084E06C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8084E070  38 9C 06 A4 */	addi r4, r28, 0x6a4
/* 8084E074  4B A2 2C 01 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8084E078  7C 03 00 D0 */	neg r0, r3
/* 8084E07C  B0 1C 04 DC */	sth r0, 0x4dc(r28)
/* 8084E080  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8084E084  D0 1C 06 F8 */	stfs f0, 0x6f8(r28)
/* 8084E088  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8084E08C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8084E090  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084E094  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084E098  7C 64 02 14 */	add r3, r4, r0
/* 8084E09C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084E0A0  FC 00 02 10 */	fabs f0, f0
/* 8084E0A4  FC 20 00 18 */	frsp f1, f0
/* 8084E0A8  C0 1C 06 F8 */	lfs f0, 0x6f8(r28)
/* 8084E0AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084E0B0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8084E0B4  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084E0B8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084E0BC  7C 24 04 2E */	lfsx f1, r4, r0
/* 8084E0C0  C0 1C 06 F8 */	lfs f0, 0x6f8(r28)
/* 8084E0C4  FC 00 00 50 */	fneg f0, f0
/* 8084E0C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084E0CC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8084E0D0  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084E0D4  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 8084E0D8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8084E0DC  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 8084E0E0  38 00 00 00 */	li r0, 0
/* 8084E0E4  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 8084E0E8  38 61 00 50 */	addi r3, r1, 0x50
/* 8084E0EC  4B 7B EC 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8084E0F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8084E0F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084E0F8  7F A4 EB 78 */	mr r4, r29
/* 8084E0FC  4B 7B E3 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 8084E100  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 8084E104  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 8084E108  C0 7E 01 24 */	lfs f3, 0x124(r30)
/* 8084E10C  4B 7B EC 91 */	bl transM__14mDoMtx_stack_cFfff
/* 8084E110  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084E114  D0 1C 06 8C */	stfs f0, 0x68c(r28)
/* 8084E118  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8084E11C  D0 1C 06 90 */	stfs f0, 0x690(r28)
/* 8084E120  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084E124  D0 1C 06 94 */	stfs f0, 0x694(r28)
/* 8084E128  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8084E12C  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 8084E130  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 8084E134  4B 7B EC 69 */	bl transM__14mDoMtx_stack_cFfff
/* 8084E138  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8084E13C  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 8084E140  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 8084E144  4B 7B EC 59 */	bl transM__14mDoMtx_stack_cFfff
/* 8084E148  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084E14C  D0 1C 06 98 */	stfs f0, 0x698(r28)
/* 8084E150  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8084E154  D0 1C 06 9C */	stfs f0, 0x69c(r28)
/* 8084E158  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084E15C  D0 1C 06 A0 */	stfs f0, 0x6a0(r28)
/* 8084E160  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8084E164  D0 1C 06 D4 */	stfs f0, 0x6d4(r28)
/* 8084E168  C0 1C 06 8C */	lfs f0, 0x68c(r28)
/* 8084E16C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8084E170  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 8084E174  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8084E178  C0 1C 06 94 */	lfs f0, 0x694(r28)
/* 8084E17C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8084E180  C0 1C 06 98 */	lfs f0, 0x698(r28)
/* 8084E184  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8084E188  C0 1C 06 9C */	lfs f0, 0x69c(r28)
/* 8084E18C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8084E190  C0 1C 06 A0 */	lfs f0, 0x6a0(r28)
/* 8084E194  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8084E198  4B 93 34 A9 */	bl dCam_getBody__Fv
/* 8084E19C  38 81 00 20 */	addi r4, r1, 0x20
/* 8084E1A0  38 A1 00 14 */	addi r5, r1, 0x14
/* 8084E1A4  C0 3C 06 D4 */	lfs f1, 0x6d4(r28)
/* 8084E1A8  38 C0 00 00 */	li r6, 0
/* 8084E1AC  4B 93 29 35 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 8084E1B0  38 00 00 0A */	li r0, 0xa
/* 8084E1B4  90 1C 07 28 */	stw r0, 0x728(r28)
/* 8084E1B8  48 00 00 F4 */	b lbl_8084E2AC
lbl_8084E1BC:
/* 8084E1BC  7F 83 E3 78 */	mr r3, r28
/* 8084E1C0  38 80 00 09 */	li r4, 9
/* 8084E1C4  38 A0 00 02 */	li r5, 2
/* 8084E1C8  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8084E1CC  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8084E1D0  4B FF B5 21 */	bl setBck__8daKago_cFiUcff
/* 8084E1D4  7F 83 E3 78 */	mr r3, r28
/* 8084E1D8  4B FF C8 D5 */	bl setMidnaTagPos__8daKago_cFv
/* 8084E1DC  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8084E1E0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8084E1E4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8084E1E8  38 00 00 1E */	li r0, 0x1e
/* 8084E1EC  90 1C 07 28 */	stw r0, 0x728(r28)
/* 8084E1F0  48 00 00 BC */	b lbl_8084E2AC
lbl_8084E1F4:
/* 8084E1F4  7F 83 E3 78 */	mr r3, r28
/* 8084E1F8  38 80 00 0F */	li r4, 0xf
/* 8084E1FC  38 A0 00 02 */	li r5, 2
/* 8084E200  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8084E204  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8084E208  4B FF B4 E9 */	bl setBck__8daKago_cFiUcff
/* 8084E20C  80 1C 07 3C */	lwz r0, 0x73c(r28)
/* 8084E210  2C 00 00 00 */	cmpwi r0, 0
/* 8084E214  40 82 00 20 */	bne lbl_8084E234
/* 8084E218  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 8084E21C  D0 1C 06 A4 */	stfs f0, 0x6a4(r28)
/* 8084E220  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 8084E224  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 8084E228  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 8084E22C  D0 1C 06 AC */	stfs f0, 0x6ac(r28)
/* 8084E230  48 00 00 2C */	b lbl_8084E25C
lbl_8084E234:
/* 8084E234  80 7C 07 68 */	lwz r3, 0x768(r28)
/* 8084E238  88 9C 07 70 */	lbz r4, 0x770(r28)
/* 8084E23C  7C 84 07 74 */	extsb r4, r4
/* 8084E240  4B 80 35 71 */	bl dPath_GetPnt__FPC5dPathi
/* 8084E244  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084E248  D0 1C 06 A4 */	stfs f0, 0x6a4(r28)
/* 8084E24C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084E250  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 8084E254  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084E258  D0 1C 06 AC */	stfs f0, 0x6ac(r28)
lbl_8084E25C:
/* 8084E25C  7F 83 E3 78 */	mr r3, r28
/* 8084E260  4B FF C8 E1 */	bl setMidnaRideOn__8daKago_cFv
/* 8084E264  7F 83 E3 78 */	mr r3, r28
/* 8084E268  4B FF C9 25 */	bl setPlayerRideOn__8daKago_cFv
/* 8084E26C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8084E270  D0 21 00 08 */	stfs f1, 8(r1)
/* 8084E274  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8084E278  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8084E27C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8084E280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084E284  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084E288  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084E28C  38 80 00 02 */	li r4, 2
/* 8084E290  38 A0 00 1F */	li r5, 0x1f
/* 8084E294  38 C1 00 08 */	addi r6, r1, 8
/* 8084E298  4B 82 17 8D */	bl StartShock__12dVibration_cFii4cXyz
/* 8084E29C  38 00 00 01 */	li r0, 1
/* 8084E2A0  90 1C 07 44 */	stw r0, 0x744(r28)
/* 8084E2A4  38 00 00 1E */	li r0, 0x1e
/* 8084E2A8  90 1C 07 28 */	stw r0, 0x728(r28)
lbl_8084E2AC:
/* 8084E2AC  38 00 00 01 */	li r0, 1
/* 8084E2B0  90 1C 07 4C */	stw r0, 0x74c(r28)
/* 8084E2B4  38 00 00 00 */	li r0, 0
/* 8084E2B8  90 1C 07 44 */	stw r0, 0x744(r28)
/* 8084E2BC  39 61 00 70 */	addi r11, r1, 0x70
/* 8084E2C0  4B B1 3F 65 */	bl _restgpr_28
/* 8084E2C4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8084E2C8  7C 08 03 A6 */	mtlr r0
/* 8084E2CC  38 21 00 70 */	addi r1, r1, 0x70
/* 8084E2D0  4E 80 00 20 */	blr 
