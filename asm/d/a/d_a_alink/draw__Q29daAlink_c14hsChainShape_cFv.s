lbl_80107900:
/* 80107900  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80107904  7C 08 02 A6 */	mflr r0
/* 80107908  90 01 01 64 */	stw r0, 0x164(r1)
/* 8010790C  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80107910  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 80107914  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 80107918  F3 C1 01 48 */	psq_st f30, 328(r1), 0, 0 /* qr0 */
/* 8010791C  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 80107920  F3 A1 01 38 */	psq_st f29, 312(r1), 0, 0 /* qr0 */
/* 80107924  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 80107928  F3 81 01 28 */	psq_st f28, 296(r1), 0, 0 /* qr0 */
/* 8010792C  DB 61 01 10 */	stfd f27, 0x110(r1)
/* 80107930  F3 61 01 18 */	psq_st f27, 280(r1), 0, 0 /* qr0 */
/* 80107934  DB 41 01 00 */	stfd f26, 0x100(r1)
/* 80107938  F3 41 01 08 */	psq_st f26, 264(r1), 0, 0 /* qr0 */
/* 8010793C  DB 21 00 F0 */	stfd f25, 0xf0(r1)
/* 80107940  F3 21 00 F8 */	psq_st f25, 248(r1), 0, 0 /* qr0 */
/* 80107944  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80107948  48 25 A8 75 */	bl _savegpr_21
/* 8010794C  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 80107950  80 9D 07 68 */	lwz r4, 0x768(r29)
/* 80107954  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80107958  83 C3 00 00 */	lwz r30, 0(r3)
/* 8010795C  3A DD 01 0C */	addi r22, r29, 0x10c
/* 80107960  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80107964  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80107968  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8010796C  90 03 01 0C */	stw r0, 0x10c(r3)
/* 80107970  80 04 00 A4 */	lwz r0, 0xa4(r4)
/* 80107974  90 03 01 10 */	stw r0, 0x110(r3)
/* 80107978  80 04 00 AC */	lwz r0, 0xac(r4)
/* 8010797C  90 03 01 14 */	stw r0, 0x114(r3)
/* 80107980  38 00 00 00 */	li r0, 0
/* 80107984  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 80107988  7F C3 F3 78 */	mr r3, r30
/* 8010798C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80107990  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80107994  7D 89 03 A6 */	mtctr r12
/* 80107998  4E 80 04 21 */	bctrl 
/* 8010799C  80 7E 00 08 */	lwz r3, 8(r30)
/* 801079A0  48 20 D9 61 */	bl loadPreDrawSetting__8J3DShapeCFv
/* 801079A4  A8 16 03 48 */	lha r0, 0x348(r22)
/* 801079A8  98 01 00 20 */	stb r0, 0x20(r1)
/* 801079AC  A8 16 03 4A */	lha r0, 0x34a(r22)
/* 801079B0  98 01 00 21 */	stb r0, 0x21(r1)
/* 801079B4  A8 16 03 4C */	lha r0, 0x34c(r22)
/* 801079B8  98 01 00 22 */	stb r0, 0x22(r1)
/* 801079BC  A8 16 03 4E */	lha r0, 0x34e(r22)
/* 801079C0  98 01 00 23 */	stb r0, 0x23(r1)
/* 801079C4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801079C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801079CC  38 60 00 04 */	li r3, 4
/* 801079D0  38 81 00 1C */	addi r4, r1, 0x1c
/* 801079D4  48 25 5F 8D */	bl GXSetChanAmbColor
/* 801079D8  80 0D 80 88 */	lwz r0, g_whiteColor(r13)
/* 801079DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 801079E0  38 60 00 04 */	li r3, 4
/* 801079E4  38 81 00 18 */	addi r4, r1, 0x18
/* 801079E8  48 25 60 61 */	bl GXSetChanMatColor
/* 801079EC  48 09 FB D5 */	bl dKy_setLight_again__Fv
/* 801079F0  7E C3 B3 78 */	mr r3, r22
/* 801079F4  48 0A 0C 5D */	bl dKy_GxFog_tevstr_set__FP12dKy_tevstr_c
/* 801079F8  38 76 00 34 */	addi r3, r22, 0x34
/* 801079FC  38 80 00 01 */	li r4, 1
/* 80107A00  48 25 5E E5 */	bl GXLoadLightObjImm
/* 80107A04  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 80107A08  28 00 00 42 */	cmplwi r0, 0x42
/* 80107A0C  40 82 04 7C */	bne lbl_80107E88
/* 80107A10  83 3D 38 40 */	lwz r25, 0x3840(r29)
/* 80107A14  83 5D 38 44 */	lwz r26, 0x3844(r29)
/* 80107A18  3B 60 00 00 */	li r27, 0
/* 80107A1C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80107A20  3B 03 4A C8 */	addi r24, r3, j3dSys@l
/* 80107A24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80107A28  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l
/* 80107A2C  7E F6 BB 78 */	mr r22, r23
/* 80107A30  3B 39 00 0C */	addi r25, r25, 0xc
/* 80107A34  3B 5A 00 06 */	addi r26, r26, 6
lbl_80107A38:
/* 80107A38  7F 03 C3 78 */	mr r3, r24
/* 80107A3C  7E E4 BB 78 */	mr r4, r23
/* 80107A40  48 23 EA 71 */	bl PSMTXCopy
/* 80107A44  7F 23 CB 78 */	mr r3, r25
/* 80107A48  4B F0 53 8D */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80107A4C  7F 43 D3 78 */	mr r3, r26
/* 80107A50  4B F0 54 F5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80107A54  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 80107A58  FC 40 08 90 */	fmr f2, f1
/* 80107A5C  FC 60 08 90 */	fmr f3, f1
/* 80107A60  4B F0 53 D9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80107A64  7E E3 BB 78 */	mr r3, r23
/* 80107A68  38 80 00 00 */	li r4, 0
/* 80107A6C  48 25 87 E1 */	bl GXLoadPosMtxImm
/* 80107A70  7E C3 B3 78 */	mr r3, r22
/* 80107A74  38 80 00 00 */	li r4, 0
/* 80107A78  48 25 88 25 */	bl GXLoadNrmMtxImm
/* 80107A7C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80107A80  81 83 00 00 */	lwz r12, 0(r3)
/* 80107A84  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80107A88  7D 89 03 A6 */	mtctr r12
/* 80107A8C  4E 80 04 21 */	bctrl 
/* 80107A90  3B 7B 00 01 */	addi r27, r27, 1
/* 80107A94  2C 1B 00 65 */	cmpwi r27, 0x65
/* 80107A98  3B 39 00 0C */	addi r25, r25, 0xc
/* 80107A9C  3B 5A 00 06 */	addi r26, r26, 6
/* 80107AA0  41 80 FF 98 */	blt lbl_80107A38
/* 80107AA4  3B E0 00 00 */	li r31, 0
/* 80107AA8  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 80107AAC  C3 E2 93 3C */	lfs f31, lit_7808(r2)
lbl_80107AB0:
/* 80107AB0  2C 1F 00 00 */	cmpwi r31, 0
/* 80107AB4  40 82 00 54 */	bne lbl_80107B08
/* 80107AB8  80 7D 38 40 */	lwz r3, 0x3840(r29)
/* 80107ABC  A8 1D 30 1A */	lha r0, 0x301a(r29)
/* 80107AC0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80107AC4  7F 83 02 14 */	add r28, r3, r0
/* 80107AC8  38 61 00 70 */	addi r3, r1, 0x70
/* 80107ACC  38 9D 37 EC */	addi r4, r29, 0x37ec
/* 80107AD0  7F 85 E3 78 */	mr r5, r28
/* 80107AD4  48 15 F0 61 */	bl __mi__4cXyzCFRC3Vec
/* 80107AD8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80107ADC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80107AE0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80107AE4  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80107AE8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80107AEC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80107AF0  80 7D 38 44 */	lwz r3, 0x3844(r29)
/* 80107AF4  A8 1D 30 1A */	lha r0, 0x301a(r29)
/* 80107AF8  1C 00 00 06 */	mulli r0, r0, 6
/* 80107AFC  7C 63 02 14 */	add r3, r3, r0
/* 80107B00  3B 20 30 00 */	li r25, 0x3000
/* 80107B04  48 00 00 54 */	b lbl_80107B58
lbl_80107B08:
/* 80107B08  82 DD 38 40 */	lwz r22, 0x3840(r29)
/* 80107B0C  7E DC B3 78 */	mr r28, r22
/* 80107B10  38 76 00 0C */	addi r3, r22, 0xc
/* 80107B14  4B F0 52 51 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80107B18  80 7D 38 44 */	lwz r3, 0x3844(r29)
/* 80107B1C  38 63 00 06 */	addi r3, r3, 6
/* 80107B20  4B F0 54 25 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80107B24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80107B28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80107B2C  3C 80 80 39 */	lis r4, l_ironBallChainVec@ha
/* 80107B30  38 84 FB 44 */	addi r4, r4, l_ironBallChainVec@l
/* 80107B34  38 A1 00 AC */	addi r5, r1, 0xac
/* 80107B38  48 23 F2 35 */	bl PSMTXMultVec
/* 80107B3C  38 61 00 AC */	addi r3, r1, 0xac
/* 80107B40  7E C4 B3 78 */	mr r4, r22
/* 80107B44  7C 65 1B 78 */	mr r5, r3
/* 80107B48  48 23 F5 6D */	bl PSVECSubtract
/* 80107B4C  80 7D 38 44 */	lwz r3, 0x3844(r29)
/* 80107B50  38 63 00 06 */	addi r3, r3, 6
/* 80107B54  3B 20 D0 00 */	li r25, -12288
lbl_80107B58:
/* 80107B58  AB 43 00 02 */	lha r26, 2(r3)
/* 80107B5C  A8 03 00 04 */	lha r0, 4(r3)
/* 80107B60  7C 00 CA 14 */	add r0, r0, r25
/* 80107B64  7C 1B 07 34 */	extsh r27, r0
/* 80107B68  38 61 00 AC */	addi r3, r1, 0xac
/* 80107B6C  48 23 F5 CD */	bl PSVECSquareMag
/* 80107B70  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80107B74  40 81 00 58 */	ble lbl_80107BCC
/* 80107B78  FC 00 08 34 */	frsqrte f0, f1
/* 80107B7C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80107B80  FC 44 00 32 */	fmul f2, f4, f0
/* 80107B84  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80107B88  FC 00 00 32 */	fmul f0, f0, f0
/* 80107B8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80107B90  FC 03 00 28 */	fsub f0, f3, f0
/* 80107B94  FC 02 00 32 */	fmul f0, f2, f0
/* 80107B98  FC 44 00 32 */	fmul f2, f4, f0
/* 80107B9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80107BA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80107BA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80107BA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80107BAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80107BB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80107BB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80107BB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80107BBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80107BC0  FF A1 00 32 */	fmul f29, f1, f0
/* 80107BC4  FF A0 E8 18 */	frsp f29, f29
/* 80107BC8  48 00 00 90 */	b lbl_80107C58
lbl_80107BCC:
/* 80107BCC  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80107BD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80107BD4  40 80 00 10 */	bge lbl_80107BE4
/* 80107BD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80107BDC  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 80107BE0  48 00 00 78 */	b lbl_80107C58
lbl_80107BE4:
/* 80107BE4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80107BE8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80107BEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80107BF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80107BF4  7C 03 00 00 */	cmpw r3, r0
/* 80107BF8  41 82 00 14 */	beq lbl_80107C0C
/* 80107BFC  40 80 00 40 */	bge lbl_80107C3C
/* 80107C00  2C 03 00 00 */	cmpwi r3, 0
/* 80107C04  41 82 00 20 */	beq lbl_80107C24
/* 80107C08  48 00 00 34 */	b lbl_80107C3C
lbl_80107C0C:
/* 80107C0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80107C10  41 82 00 0C */	beq lbl_80107C1C
/* 80107C14  38 00 00 01 */	li r0, 1
/* 80107C18  48 00 00 28 */	b lbl_80107C40
lbl_80107C1C:
/* 80107C1C  38 00 00 02 */	li r0, 2
/* 80107C20  48 00 00 20 */	b lbl_80107C40
lbl_80107C24:
/* 80107C24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80107C28  41 82 00 0C */	beq lbl_80107C34
/* 80107C2C  38 00 00 05 */	li r0, 5
/* 80107C30  48 00 00 10 */	b lbl_80107C40
lbl_80107C34:
/* 80107C34  38 00 00 03 */	li r0, 3
/* 80107C38  48 00 00 08 */	b lbl_80107C40
lbl_80107C3C:
/* 80107C3C  38 00 00 04 */	li r0, 4
lbl_80107C40:
/* 80107C40  2C 00 00 01 */	cmpwi r0, 1
/* 80107C44  40 82 00 10 */	bne lbl_80107C54
/* 80107C48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80107C4C  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 80107C50  48 00 00 08 */	b lbl_80107C58
lbl_80107C54:
/* 80107C54  FF A0 08 90 */	fmr f29, f1
lbl_80107C58:
/* 80107C58  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80107C5C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80107C60  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80107C64  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80107C68  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80107C6C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80107C70  FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 80107C74  40 81 02 04 */	ble lbl_80107E78
/* 80107C78  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80107C7C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80107C80  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80107C84  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80107C88  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80107C8C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80107C90  38 61 00 34 */	addi r3, r1, 0x34
/* 80107C94  48 23 F4 A5 */	bl PSVECSquareMag
/* 80107C98  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80107C9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80107CA0  40 81 00 58 */	ble lbl_80107CF8
/* 80107CA4  FC 00 08 34 */	frsqrte f0, f1
/* 80107CA8  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80107CAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80107CB0  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80107CB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80107CB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80107CBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80107CC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80107CC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80107CC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80107CCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80107CD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80107CD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80107CD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80107CDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80107CE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80107CE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80107CE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80107CEC  FC 21 00 32 */	fmul f1, f1, f0
/* 80107CF0  FC 20 08 18 */	frsp f1, f1
/* 80107CF4  48 00 00 88 */	b lbl_80107D7C
lbl_80107CF8:
/* 80107CF8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80107CFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80107D00  40 80 00 10 */	bge lbl_80107D10
/* 80107D04  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80107D08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80107D0C  48 00 00 70 */	b lbl_80107D7C
lbl_80107D10:
/* 80107D10  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80107D14  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80107D18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80107D1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80107D20  7C 03 00 00 */	cmpw r3, r0
/* 80107D24  41 82 00 14 */	beq lbl_80107D38
/* 80107D28  40 80 00 40 */	bge lbl_80107D68
/* 80107D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80107D30  41 82 00 20 */	beq lbl_80107D50
/* 80107D34  48 00 00 34 */	b lbl_80107D68
lbl_80107D38:
/* 80107D38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80107D3C  41 82 00 0C */	beq lbl_80107D48
/* 80107D40  38 00 00 01 */	li r0, 1
/* 80107D44  48 00 00 28 */	b lbl_80107D6C
lbl_80107D48:
/* 80107D48  38 00 00 02 */	li r0, 2
/* 80107D4C  48 00 00 20 */	b lbl_80107D6C
lbl_80107D50:
/* 80107D50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80107D54  41 82 00 0C */	beq lbl_80107D60
/* 80107D58  38 00 00 05 */	li r0, 5
/* 80107D5C  48 00 00 10 */	b lbl_80107D6C
lbl_80107D60:
/* 80107D60  38 00 00 03 */	li r0, 3
/* 80107D64  48 00 00 08 */	b lbl_80107D6C
lbl_80107D68:
/* 80107D68  38 00 00 04 */	li r0, 4
lbl_80107D6C:
/* 80107D6C  2C 00 00 01 */	cmpwi r0, 1
/* 80107D70  40 82 00 0C */	bne lbl_80107D7C
/* 80107D74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80107D78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80107D7C:
/* 80107D7C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80107D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80107D84  4C 41 13 82 */	cror 2, 1, 2
/* 80107D88  40 82 00 10 */	bne lbl_80107D98
/* 80107D8C  38 61 00 AC */	addi r3, r1, 0xac
/* 80107D90  48 15 F3 99 */	bl atan2sX_Z__4cXyzCFv
/* 80107D94  7C 7A 1B 78 */	mr r26, r3
lbl_80107D98:
/* 80107D98  38 61 00 AC */	addi r3, r1, 0xac
/* 80107D9C  48 15 F3 B5 */	bl atan2sY_XZ__4cXyzCFv
/* 80107DA0  7C 75 1B 78 */	mr r21, r3
/* 80107DA4  38 61 00 64 */	addi r3, r1, 0x64
/* 80107DA8  38 81 00 AC */	addi r4, r1, 0xac
/* 80107DAC  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 80107DB0  EC 20 E8 24 */	fdivs f1, f0, f29
/* 80107DB4  48 15 ED D1 */	bl __ml__4cXyzCFf
/* 80107DB8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80107DBC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80107DC0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80107DC4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80107DC8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80107DCC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80107DD0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80107DD4  3B 83 4A C8 */	addi r28, r3, j3dSys@l
/* 80107DD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80107DDC  3B 03 D4 70 */	addi r24, r3, now__14mDoMtx_stack_c@l
/* 80107DE0  7F 17 C3 78 */	mr r23, r24
/* 80107DE4  7F 16 C3 78 */	mr r22, r24
/* 80107DE8  C3 62 93 30 */	lfs f27, lit_7625(r2)
/* 80107DEC  C3 82 93 3C */	lfs f28, lit_7808(r2)
/* 80107DF0  48 00 00 80 */	b lbl_80107E70
lbl_80107DF4:
/* 80107DF4  7F 83 E3 78 */	mr r3, r28
/* 80107DF8  7F 04 C3 78 */	mr r4, r24
/* 80107DFC  48 23 E6 B5 */	bl PSMTXCopy
/* 80107E00  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80107E04  4B F0 4F D1 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80107E08  7F 03 C3 78 */	mr r3, r24
/* 80107E0C  7E A4 AB 78 */	mr r4, r21
/* 80107E10  7F 45 D3 78 */	mr r5, r26
/* 80107E14  7F 66 DB 78 */	mr r6, r27
/* 80107E18  4B F0 44 89 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80107E1C  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 80107E20  FC 40 08 90 */	fmr f2, f1
/* 80107E24  FC 60 08 90 */	fmr f3, f1
/* 80107E28  4B F0 50 11 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80107E2C  7E E3 BB 78 */	mr r3, r23
/* 80107E30  38 80 00 00 */	li r4, 0
/* 80107E34  48 25 84 19 */	bl GXLoadPosMtxImm
/* 80107E38  7E C3 B3 78 */	mr r3, r22
/* 80107E3C  38 80 00 00 */	li r4, 0
/* 80107E40  48 25 84 5D */	bl GXLoadNrmMtxImm
/* 80107E44  80 7E 00 08 */	lwz r3, 8(r30)
/* 80107E48  81 83 00 00 */	lwz r12, 0(r3)
/* 80107E4C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80107E50  7D 89 03 A6 */	mtctr r12
/* 80107E54  4E 80 04 21 */	bctrl 
/* 80107E58  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80107E5C  38 81 00 94 */	addi r4, r1, 0x94
/* 80107E60  7C 65 1B 78 */	mr r5, r3
/* 80107E64  48 23 F2 2D */	bl PSVECAdd
/* 80107E68  EF BD D8 28 */	fsubs f29, f29, f27
/* 80107E6C  7F 7B CA 14 */	add r27, r27, r25
lbl_80107E70:
/* 80107E70  FC 1D E0 40 */	fcmpo cr0, f29, f28
/* 80107E74  41 81 FF 80 */	bgt lbl_80107DF4
lbl_80107E78:
/* 80107E78  3B FF 00 01 */	addi r31, r31, 1
/* 80107E7C  2C 1F 00 02 */	cmpwi r31, 2
/* 80107E80  41 80 FC 30 */	blt lbl_80107AB0
/* 80107E84  48 00 04 F4 */	b lbl_80108378
lbl_80107E88:
/* 80107E88  38 9D 37 E0 */	addi r4, r29, 0x37e0
/* 80107E8C  3A FD 37 EC */	addi r23, r29, 0x37ec
/* 80107E90  38 61 00 58 */	addi r3, r1, 0x58
/* 80107E94  7E E5 BB 78 */	mr r5, r23
/* 80107E98  48 15 EC 9D */	bl __mi__4cXyzCFRC3Vec
/* 80107E9C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80107EA0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80107EA4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80107EA8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80107EAC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80107EB0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80107EB4  38 61 00 88 */	addi r3, r1, 0x88
/* 80107EB8  48 23 F2 81 */	bl PSVECSquareMag
/* 80107EBC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80107EC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80107EC4  40 81 00 58 */	ble lbl_80107F1C
/* 80107EC8  FC 00 08 34 */	frsqrte f0, f1
/* 80107ECC  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80107ED0  FC 44 00 32 */	fmul f2, f4, f0
/* 80107ED4  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80107ED8  FC 00 00 32 */	fmul f0, f0, f0
/* 80107EDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80107EE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80107EE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80107EE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80107EEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80107EF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80107EF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80107EF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80107EFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80107F00  FC 00 00 32 */	fmul f0, f0, f0
/* 80107F04  FC 01 00 32 */	fmul f0, f1, f0
/* 80107F08  FC 03 00 28 */	fsub f0, f3, f0
/* 80107F0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80107F10  FF 61 00 32 */	fmul f27, f1, f0
/* 80107F14  FF 60 D8 18 */	frsp f27, f27
/* 80107F18  48 00 00 90 */	b lbl_80107FA8
lbl_80107F1C:
/* 80107F1C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80107F20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80107F24  40 80 00 10 */	bge lbl_80107F34
/* 80107F28  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80107F2C  C3 63 0A E0 */	lfs f27, __float_nan@l(r3)
/* 80107F30  48 00 00 78 */	b lbl_80107FA8
lbl_80107F34:
/* 80107F34  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80107F38  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80107F3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80107F40  3C 00 7F 80 */	lis r0, 0x7f80
/* 80107F44  7C 03 00 00 */	cmpw r3, r0
/* 80107F48  41 82 00 14 */	beq lbl_80107F5C
/* 80107F4C  40 80 00 40 */	bge lbl_80107F8C
/* 80107F50  2C 03 00 00 */	cmpwi r3, 0
/* 80107F54  41 82 00 20 */	beq lbl_80107F74
/* 80107F58  48 00 00 34 */	b lbl_80107F8C
lbl_80107F5C:
/* 80107F5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80107F60  41 82 00 0C */	beq lbl_80107F6C
/* 80107F64  38 00 00 01 */	li r0, 1
/* 80107F68  48 00 00 28 */	b lbl_80107F90
lbl_80107F6C:
/* 80107F6C  38 00 00 02 */	li r0, 2
/* 80107F70  48 00 00 20 */	b lbl_80107F90
lbl_80107F74:
/* 80107F74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80107F78  41 82 00 0C */	beq lbl_80107F84
/* 80107F7C  38 00 00 05 */	li r0, 5
/* 80107F80  48 00 00 10 */	b lbl_80107F90
lbl_80107F84:
/* 80107F84  38 00 00 03 */	li r0, 3
/* 80107F88  48 00 00 08 */	b lbl_80107F90
lbl_80107F8C:
/* 80107F8C  38 00 00 04 */	li r0, 4
lbl_80107F90:
/* 80107F90  2C 00 00 01 */	cmpwi r0, 1
/* 80107F94  40 82 00 10 */	bne lbl_80107FA4
/* 80107F98  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80107F9C  C3 63 0A E0 */	lfs f27, __float_nan@l(r3)
/* 80107FA0  48 00 00 08 */	b lbl_80107FA8
lbl_80107FA4:
/* 80107FA4  FF 60 08 90 */	fmr f27, f1
lbl_80107FA8:
/* 80107FA8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80107FAC  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80107FB0  40 81 01 B0 */	ble lbl_80108160
/* 80107FB4  38 61 00 88 */	addi r3, r1, 0x88
/* 80107FB8  7C 64 1B 78 */	mr r4, r3
/* 80107FBC  EC 20 D8 24 */	fdivs f1, f0, f27
/* 80107FC0  48 23 F1 19 */	bl PSVECScale
/* 80107FC4  C3 A2 92 C0 */	lfs f29, lit_6108(r2)
/* 80107FC8  C0 17 00 00 */	lfs f0, 0(r23)
/* 80107FCC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80107FD0  C0 17 00 04 */	lfs f0, 4(r23)
/* 80107FD4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80107FD8  C0 17 00 08 */	lfs f0, 8(r23)
/* 80107FDC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80107FE0  38 61 00 88 */	addi r3, r1, 0x88
/* 80107FE4  48 15 F1 45 */	bl atan2sX_Z__4cXyzCFv
/* 80107FE8  7C 76 1B 78 */	mr r22, r3
/* 80107FEC  38 61 00 88 */	addi r3, r1, 0x88
/* 80107FF0  48 15 F1 61 */	bl atan2sY_XZ__4cXyzCFv
/* 80107FF4  B0 61 00 2C */	sth r3, 0x2c(r1)
/* 80107FF8  B2 C1 00 2E */	sth r22, 0x2e(r1)
/* 80107FFC  38 60 00 00 */	li r3, 0
/* 80108000  B0 61 00 30 */	sth r3, 0x30(r1)
/* 80108004  C0 17 00 00 */	lfs f0, 0(r23)
/* 80108008  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8010800C  C0 17 00 04 */	lfs f0, 4(r23)
/* 80108010  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80108014  C0 17 00 08 */	lfs f0, 8(r23)
/* 80108018  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8010801C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80108020  90 01 00 24 */	stw r0, 0x24(r1)
/* 80108024  B0 61 00 28 */	sth r3, 0x28(r1)
/* 80108028  C0 02 93 AC */	lfs f0, lit_9828(r2)
/* 8010802C  EF 80 D8 24 */	fdivs f28, f0, f27
/* 80108030  C3 42 92 C0 */	lfs f26, lit_6108(r2)
/* 80108034  C0 42 93 D8 */	lfs f2, lit_11470(r2)
/* 80108038  A8 7D 30 26 */	lha r3, 0x3026(r29)
/* 8010803C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80108040  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80108044  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80108048  3C 00 43 30 */	lis r0, 0x4330
/* 8010804C  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80108050  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 80108054  EC 00 08 28 */	fsubs f0, f0, f1
/* 80108058  EF 22 00 32 */	fmuls f25, f2, f0
/* 8010805C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80108060  41 82 00 0C */	beq lbl_8010806C
/* 80108064  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80108068  EF 39 00 32 */	fmuls f25, f25, f0
lbl_8010806C:
/* 8010806C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80108070  3B E3 9A 20 */	addi r31, r3, sincosTable___5JMath@l
/* 80108074  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80108078  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l
/* 8010807C  3C 60 80 39 */	lis r3, hsVec@ha
/* 80108080  3B 03 19 FC */	addi r24, r3, hsVec@l
/* 80108084  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80108088  3B 83 4A C8 */	addi r28, r3, j3dSys@l
/* 8010808C  7E FB BB 78 */	mr r27, r23
/* 80108090  7E FA BB 78 */	mr r26, r23
/* 80108094  7E F9 BB 78 */	mr r25, r23
/* 80108098  C3 C2 93 3C */	lfs f30, lit_7808(r2)
/* 8010809C  48 00 00 BC */	b lbl_80108158
lbl_801080A0:
/* 801080A0  EC 3C 07 72 */	fmuls f1, f28, f29
/* 801080A4  48 15 F5 41 */	bl cM_rad2s__Ff
/* 801080A8  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 801080AC  7C 1F 04 2E */	lfsx f0, r31, r0
/* 801080B0  EF F9 00 32 */	fmuls f31, f25, f0
/* 801080B4  EC 3F D0 28 */	fsubs f1, f31, f26
/* 801080B8  C0 42 93 3C */	lfs f2, lit_7808(r2)
/* 801080BC  48 15 F5 B9 */	bl cM_atan2s__Fff
/* 801080C0  7C 76 1B 78 */	mr r22, r3
/* 801080C4  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 801080C8  7C 00 B2 14 */	add r0, r0, r22
/* 801080CC  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801080D0  38 61 00 7C */	addi r3, r1, 0x7c
/* 801080D4  4B F0 4C 91 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 801080D8  38 61 00 24 */	addi r3, r1, 0x24
/* 801080DC  4B F0 4E 69 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 801080E0  7E E3 BB 78 */	mr r3, r23
/* 801080E4  7F 04 C3 78 */	mr r4, r24
/* 801080E8  38 A1 00 7C */	addi r5, r1, 0x7c
/* 801080EC  48 23 EC 81 */	bl PSMTXMultVec
/* 801080F0  7F 83 E3 78 */	mr r3, r28
/* 801080F4  7E E4 BB 78 */	mr r4, r23
/* 801080F8  7F 65 DB 78 */	mr r5, r27
/* 801080FC  48 23 E3 E9 */	bl PSMTXConcat
/* 80108100  7F 43 D3 78 */	mr r3, r26
/* 80108104  38 80 00 00 */	li r4, 0
/* 80108108  48 25 81 45 */	bl GXLoadPosMtxImm
/* 8010810C  7F 23 CB 78 */	mr r3, r25
/* 80108110  38 80 00 00 */	li r4, 0
/* 80108114  48 25 81 89 */	bl GXLoadNrmMtxImm
/* 80108118  80 7E 00 08 */	lwz r3, 8(r30)
/* 8010811C  81 83 00 00 */	lwz r12, 0(r3)
/* 80108120  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80108124  7D 89 03 A6 */	mtctr r12
/* 80108128  4E 80 04 21 */	bctrl 
/* 8010812C  A8 61 00 28 */	lha r3, 0x28(r1)
/* 80108130  38 03 30 00 */	addi r0, r3, 0x3000
/* 80108134  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80108138  FF 40 F8 90 */	fmr f26, f31
/* 8010813C  56 C0 04 38 */	rlwinm r0, r22, 0, 0x10, 0x1c
/* 80108140  7C 7F 02 14 */	add r3, r31, r0
/* 80108144  C0 03 00 04 */	lfs f0, 4(r3)
/* 80108148  FC 00 02 10 */	fabs f0, f0
/* 8010814C  FC 00 00 18 */	frsp f0, f0
/* 80108150  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80108154  EF BD 00 2A */	fadds f29, f29, f0
lbl_80108158:
/* 80108158  FC 1B E8 40 */	fcmpo cr0, f27, f29
/* 8010815C  41 81 FF 44 */	bgt lbl_801080A0
lbl_80108160:
/* 80108160  38 9D 38 10 */	addi r4, r29, 0x3810
/* 80108164  3A DD 38 04 */	addi r22, r29, 0x3804
/* 80108168  38 61 00 4C */	addi r3, r1, 0x4c
/* 8010816C  7E C5 B3 78 */	mr r5, r22
/* 80108170  48 15 E9 C5 */	bl __mi__4cXyzCFRC3Vec
/* 80108174  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80108178  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8010817C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80108180  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80108184  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80108188  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8010818C  38 61 00 88 */	addi r3, r1, 0x88
/* 80108190  48 23 EF A9 */	bl PSVECSquareMag
/* 80108194  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80108198  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010819C  40 81 00 58 */	ble lbl_801081F4
/* 801081A0  FC 00 08 34 */	frsqrte f0, f1
/* 801081A4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 801081A8  FC 44 00 32 */	fmul f2, f4, f0
/* 801081AC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 801081B0  FC 00 00 32 */	fmul f0, f0, f0
/* 801081B4  FC 01 00 32 */	fmul f0, f1, f0
/* 801081B8  FC 03 00 28 */	fsub f0, f3, f0
/* 801081BC  FC 02 00 32 */	fmul f0, f2, f0
/* 801081C0  FC 44 00 32 */	fmul f2, f4, f0
/* 801081C4  FC 00 00 32 */	fmul f0, f0, f0
/* 801081C8  FC 01 00 32 */	fmul f0, f1, f0
/* 801081CC  FC 03 00 28 */	fsub f0, f3, f0
/* 801081D0  FC 02 00 32 */	fmul f0, f2, f0
/* 801081D4  FC 44 00 32 */	fmul f2, f4, f0
/* 801081D8  FC 00 00 32 */	fmul f0, f0, f0
/* 801081DC  FC 01 00 32 */	fmul f0, f1, f0
/* 801081E0  FC 03 00 28 */	fsub f0, f3, f0
/* 801081E4  FC 02 00 32 */	fmul f0, f2, f0
/* 801081E8  FF 61 00 32 */	fmul f27, f1, f0
/* 801081EC  FF 60 D8 18 */	frsp f27, f27
/* 801081F0  48 00 00 90 */	b lbl_80108280
lbl_801081F4:
/* 801081F4  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 801081F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801081FC  40 80 00 10 */	bge lbl_8010820C
/* 80108200  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80108204  C3 63 0A E0 */	lfs f27, __float_nan@l(r3)
/* 80108208  48 00 00 78 */	b lbl_80108280
lbl_8010820C:
/* 8010820C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80108210  80 81 00 08 */	lwz r4, 8(r1)
/* 80108214  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80108218  3C 00 7F 80 */	lis r0, 0x7f80
/* 8010821C  7C 03 00 00 */	cmpw r3, r0
/* 80108220  41 82 00 14 */	beq lbl_80108234
/* 80108224  40 80 00 40 */	bge lbl_80108264
/* 80108228  2C 03 00 00 */	cmpwi r3, 0
/* 8010822C  41 82 00 20 */	beq lbl_8010824C
/* 80108230  48 00 00 34 */	b lbl_80108264
lbl_80108234:
/* 80108234  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80108238  41 82 00 0C */	beq lbl_80108244
/* 8010823C  38 00 00 01 */	li r0, 1
/* 80108240  48 00 00 28 */	b lbl_80108268
lbl_80108244:
/* 80108244  38 00 00 02 */	li r0, 2
/* 80108248  48 00 00 20 */	b lbl_80108268
lbl_8010824C:
/* 8010824C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80108250  41 82 00 0C */	beq lbl_8010825C
/* 80108254  38 00 00 05 */	li r0, 5
/* 80108258  48 00 00 10 */	b lbl_80108268
lbl_8010825C:
/* 8010825C  38 00 00 03 */	li r0, 3
/* 80108260  48 00 00 08 */	b lbl_80108268
lbl_80108264:
/* 80108264  38 00 00 04 */	li r0, 4
lbl_80108268:
/* 80108268  2C 00 00 01 */	cmpwi r0, 1
/* 8010826C  40 82 00 10 */	bne lbl_8010827C
/* 80108270  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80108274  C3 63 0A E0 */	lfs f27, __float_nan@l(r3)
/* 80108278  48 00 00 08 */	b lbl_80108280
lbl_8010827C:
/* 8010827C  FF 60 08 90 */	fmr f27, f1
lbl_80108280:
/* 80108280  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80108284  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80108288  40 81 00 F0 */	ble lbl_80108378
/* 8010828C  38 61 00 88 */	addi r3, r1, 0x88
/* 80108290  7C 64 1B 78 */	mr r4, r3
/* 80108294  EC 20 D8 24 */	fdivs f1, f0, f27
/* 80108298  48 23 EE 41 */	bl PSVECScale
/* 8010829C  C3 82 92 C0 */	lfs f28, lit_6108(r2)
/* 801082A0  C0 16 00 00 */	lfs f0, 0(r22)
/* 801082A4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801082A8  C0 16 00 04 */	lfs f0, 4(r22)
/* 801082AC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801082B0  C0 16 00 08 */	lfs f0, 8(r22)
/* 801082B4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801082B8  38 61 00 88 */	addi r3, r1, 0x88
/* 801082BC  48 15 EE 6D */	bl atan2sX_Z__4cXyzCFv
/* 801082C0  7C 79 1B 78 */	mr r25, r3
/* 801082C4  38 61 00 88 */	addi r3, r1, 0x88
/* 801082C8  48 15 EE 89 */	bl atan2sY_XZ__4cXyzCFv
/* 801082CC  B0 61 00 2C */	sth r3, 0x2c(r1)
/* 801082D0  B3 21 00 2E */	sth r25, 0x2e(r1)
/* 801082D4  38 00 00 00 */	li r0, 0
/* 801082D8  B0 01 00 30 */	sth r0, 0x30(r1)
/* 801082DC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 801082E0  3B 63 4A C8 */	addi r27, r3, j3dSys@l
/* 801082E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801082E8  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
/* 801082EC  7F 59 D3 78 */	mr r25, r26
/* 801082F0  C3 A2 93 3C */	lfs f29, lit_7808(r2)
/* 801082F4  48 00 00 7C */	b lbl_80108370
lbl_801082F8:
/* 801082F8  7F 63 DB 78 */	mr r3, r27
/* 801082FC  7F 44 D3 78 */	mr r4, r26
/* 80108300  48 23 E1 B1 */	bl PSMTXCopy
/* 80108304  38 61 00 7C */	addi r3, r1, 0x7c
/* 80108308  4B F0 4A CD */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 8010830C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80108310  4B F0 4C 35 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80108314  7F 43 D3 78 */	mr r3, r26
/* 80108318  38 80 00 00 */	li r4, 0
/* 8010831C  48 25 7F 31 */	bl GXLoadPosMtxImm
/* 80108320  7F 23 CB 78 */	mr r3, r25
/* 80108324  38 80 00 00 */	li r4, 0
/* 80108328  48 25 7F 75 */	bl GXLoadNrmMtxImm
/* 8010832C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80108330  81 83 00 00 */	lwz r12, 0(r3)
/* 80108334  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80108338  7D 89 03 A6 */	mtctr r12
/* 8010833C  4E 80 04 21 */	bctrl 
/* 80108340  38 61 00 40 */	addi r3, r1, 0x40
/* 80108344  38 81 00 88 */	addi r4, r1, 0x88
/* 80108348  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 8010834C  48 15 E8 39 */	bl __ml__4cXyzCFf
/* 80108350  38 61 00 7C */	addi r3, r1, 0x7c
/* 80108354  38 81 00 40 */	addi r4, r1, 0x40
/* 80108358  7C 65 1B 78 */	mr r5, r3
/* 8010835C  48 23 ED 35 */	bl PSVECAdd
/* 80108360  A8 61 00 30 */	lha r3, 0x30(r1)
/* 80108364  38 03 30 00 */	addi r0, r3, 0x3000
/* 80108368  B0 01 00 30 */	sth r0, 0x30(r1)
/* 8010836C  EF 9C E8 2A */	fadds f28, f28, f29
lbl_80108370:
/* 80108370  FC 1B E0 40 */	fcmpo cr0, f27, f28
/* 80108374  41 81 FF 84 */	bgt lbl_801082F8
lbl_80108378:
/* 80108378  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 8010837C  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 80108380  E3 C1 01 48 */	psq_l f30, 328(r1), 0, 0 /* qr0 */
/* 80108384  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 80108388  E3 A1 01 38 */	psq_l f29, 312(r1), 0, 0 /* qr0 */
/* 8010838C  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 80108390  E3 81 01 28 */	psq_l f28, 296(r1), 0, 0 /* qr0 */
/* 80108394  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 80108398  E3 61 01 18 */	psq_l f27, 280(r1), 0, 0 /* qr0 */
/* 8010839C  CB 61 01 10 */	lfd f27, 0x110(r1)
/* 801083A0  E3 41 01 08 */	psq_l f26, 264(r1), 0, 0 /* qr0 */
/* 801083A4  CB 41 01 00 */	lfd f26, 0x100(r1)
/* 801083A8  E3 21 00 F8 */	psq_l f25, 248(r1), 0, 0 /* qr0 */
/* 801083AC  CB 21 00 F0 */	lfd f25, 0xf0(r1)
/* 801083B0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 801083B4  48 25 9E 55 */	bl _restgpr_21
/* 801083B8  80 01 01 64 */	lwz r0, 0x164(r1)
/* 801083BC  7C 08 03 A6 */	mtlr r0
/* 801083C0  38 21 01 60 */	addi r1, r1, 0x160
/* 801083C4  4E 80 00 20 */	blr 
