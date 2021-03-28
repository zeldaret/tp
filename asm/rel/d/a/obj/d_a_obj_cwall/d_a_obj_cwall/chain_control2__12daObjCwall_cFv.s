lbl_80BD7ED8:
/* 80BD7ED8  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80BD7EDC  7C 08 02 A6 */	mflr r0
/* 80BD7EE0  90 01 01 24 */	stw r0, 0x124(r1)
/* 80BD7EE4  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80BD7EE8  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 80BD7EEC  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80BD7EF0  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 80BD7EF4  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 80BD7EF8  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 80BD7EFC  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 80BD7F00  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 80BD7F04  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80BD7F08  4B 78 A2 C4 */	b _savegpr_25
/* 80BD7F0C  7C 7B 1B 78 */	mr r27, r3
/* 80BD7F10  3C 60 80 BE */	lis r3, l_wallBmd@ha
/* 80BD7F14  3B E3 9F A4 */	addi r31, r3, l_wallBmd@l
/* 80BD7F18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD7F1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD7F20  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80BD7F24  80 7B 0E 8C */	lwz r3, 0xe8c(r27)
/* 80BD7F28  3B A3 00 50 */	addi r29, r3, 0x50
/* 80BD7F2C  3B 9B 0E DC */	addi r28, r27, 0xedc
/* 80BD7F30  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD7F34  D0 1B 0F 50 */	stfs f0, 0xf50(r27)
/* 80BD7F38  88 7B 0E 90 */	lbz r3, 0xe90(r27)
/* 80BD7F3C  28 03 00 00 */	cmplwi r3, 0
/* 80BD7F40  40 82 00 34 */	bne lbl_80BD7F74
/* 80BD7F44  88 1B 0F 58 */	lbz r0, 0xf58(r27)
/* 80BD7F48  28 00 00 00 */	cmplwi r0, 0
/* 80BD7F4C  40 82 00 28 */	bne lbl_80BD7F74
/* 80BD7F50  38 00 00 00 */	li r0, 0
/* 80BD7F54  B0 1B 0F 1C */	sth r0, 0xf1c(r27)
/* 80BD7F58  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80BD7F5C  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80BD7F60  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80BD7F64  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80BD7F68  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80BD7F6C  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80BD7F70  48 00 05 18 */	b lbl_80BD8488
lbl_80BD7F74:
/* 80BD7F74  28 03 00 00 */	cmplwi r3, 0
/* 80BD7F78  41 82 02 28 */	beq lbl_80BD81A0
/* 80BD7F7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD7F80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD7F84  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BD7F88  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80BD7F8C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80BD7F90  41 82 00 DC */	beq lbl_80BD806C
/* 80BD7F94  7F C3 F3 78 */	mr r3, r30
/* 80BD7F98  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80BD7F9C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80BD7FA0  7D 89 03 A6 */	mtctr r12
/* 80BD7FA4  4E 80 04 21 */	bctrl 
/* 80BD7FA8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80BD7FAC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80BD7FB0  4B 76 E5 00 */	b PSMTXCopy
/* 80BD7FB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD7FB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD7FBC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BD7FC0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80BD7FC4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80BD7FC8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80BD7FCC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80BD7FD0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80BD7FD4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD7FD8  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80BD7FDC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80BD7FE0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80BD7FE4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80BD7FE8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BD7FEC  4B 43 43 F0 */	b mDoMtx_YrotS__FPA4_fs
/* 80BD7FF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD7FF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD7FF8  A8 9B 0F 1A */	lha r4, 0xf1a(r27)
/* 80BD7FFC  4B 43 43 A0 */	b mDoMtx_XrotM__FPA4_fs
/* 80BD8000  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD8004  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD8008  38 81 00 90 */	addi r4, r1, 0x90
/* 80BD800C  7C 85 23 78 */	mr r5, r4
/* 80BD8010  4B 76 ED 5C */	b PSMTXMultVec
/* 80BD8014  38 61 00 48 */	addi r3, r1, 0x48
/* 80BD8018  38 81 00 90 */	addi r4, r1, 0x90
/* 80BD801C  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 80BD8020  4B 68 EA C4 */	b __pl__4cXyzCFRC3Vec
/* 80BD8024  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80BD8028  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BD802C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80BD8030  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BD8034  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80BD8038  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80BD803C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80BD8040  D0 1B 0F 20 */	stfs f0, 0xf20(r27)
/* 80BD8044  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80BD8048  D0 1B 0F 24 */	stfs f0, 0xf24(r27)
/* 80BD804C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80BD8050  D0 1B 0F 28 */	stfs f0, 0xf28(r27)
/* 80BD8054  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD8058  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80BD805C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80BD8060  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80BD8064  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80BD8068  48 00 00 C8 */	b lbl_80BD8130
lbl_80BD806C:
/* 80BD806C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80BD8070  7F C4 F3 78 */	mr r4, r30
/* 80BD8074  48 00 1F 01 */	bl getRightHandPos__9daPy_py_cCFv
/* 80BD8078  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BD807C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80BD8080  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BD8084  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80BD8088  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80BD808C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80BD8090  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80BD8094  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80BD8098  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80BD809C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80BD80A0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80BD80A4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80BD80A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD80AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD80B0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BD80B4  4B 43 43 28 */	b mDoMtx_YrotS__FPA4_fs
/* 80BD80B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD80BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD80C0  A8 9B 0F 1A */	lha r4, 0xf1a(r27)
/* 80BD80C4  4B 43 42 D8 */	b mDoMtx_XrotM__FPA4_fs
/* 80BD80C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD80CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD80D0  38 81 00 84 */	addi r4, r1, 0x84
/* 80BD80D4  7C 85 23 78 */	mr r5, r4
/* 80BD80D8  4B 76 EC 94 */	b PSMTXMultVec
/* 80BD80DC  38 61 00 84 */	addi r3, r1, 0x84
/* 80BD80E0  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80BD80E4  7C 65 1B 78 */	mr r5, r3
/* 80BD80E8  4B 76 EF A8 */	b PSVECAdd
/* 80BD80EC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80BD80F0  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BD80F4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80BD80F8  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BD80FC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80BD8100  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80BD8104  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80BD8108  D0 1B 0F 20 */	stfs f0, 0xf20(r27)
/* 80BD810C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80BD8110  D0 1B 0F 24 */	stfs f0, 0xf24(r27)
/* 80BD8114  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80BD8118  D0 1B 0F 28 */	stfs f0, 0xf28(r27)
/* 80BD811C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD8120  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80BD8124  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80BD8128  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80BD812C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
lbl_80BD8130:
/* 80BD8130  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD8134  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD8138  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BD813C  38 04 7F FF */	addi r0, r4, 0x7fff
/* 80BD8140  7C 04 07 34 */	extsh r4, r0
/* 80BD8144  4B 43 42 98 */	b mDoMtx_YrotS__FPA4_fs
/* 80BD8148  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD814C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD8150  A8 1B 0F 1A */	lha r0, 0xf1a(r27)
/* 80BD8154  7C 00 00 D0 */	neg r0, r0
/* 80BD8158  7C 04 07 34 */	extsh r4, r0
/* 80BD815C  4B 43 42 40 */	b mDoMtx_XrotM__FPA4_fs
/* 80BD8160  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD8164  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD8168  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80BD816C  38 A1 00 9C */	addi r5, r1, 0x9c
/* 80BD8170  4B 76 EB FC */	b PSMTXMultVec
/* 80BD8174  38 61 00 9C */	addi r3, r1, 0x9c
/* 80BD8178  38 9B 0F 20 */	addi r4, r27, 0xf20
/* 80BD817C  7C 65 1B 78 */	mr r5, r3
/* 80BD8180  4B 76 EF 10 */	b PSVECAdd
/* 80BD8184  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80BD8188  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BD818C  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80BD8190  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BD8194  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80BD8198  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80BD819C  48 00 00 40 */	b lbl_80BD81DC
lbl_80BD81A0:
/* 80BD81A0  88 1B 0F 58 */	lbz r0, 0xf58(r27)
/* 80BD81A4  28 00 00 00 */	cmplwi r0, 0
/* 80BD81A8  41 82 00 34 */	beq lbl_80BD81DC
/* 80BD81AC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80BD81B0  D0 1B 0F 20 */	stfs f0, 0xf20(r27)
/* 80BD81B4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80BD81B8  D0 1B 0F 24 */	stfs f0, 0xf24(r27)
/* 80BD81BC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80BD81C0  D0 1B 0F 28 */	stfs f0, 0xf28(r27)
/* 80BD81C4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80BD81C8  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BD81CC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80BD81D0  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BD81D4  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80BD81D8  D0 1C 00 08 */	stfs f0, 8(r28)
lbl_80BD81DC:
/* 80BD81DC  C3 DF 00 64 */	lfs f30, 0x64(r31)
/* 80BD81E0  7F 63 DB 78 */	mr r3, r27
/* 80BD81E4  38 81 00 78 */	addi r4, r1, 0x78
/* 80BD81E8  4B FF F5 A1 */	bl getChainBasePos__12daObjCwall_cFP4cXyz
/* 80BD81EC  C0 1B 0E DC */	lfs f0, 0xedc(r27)
/* 80BD81F0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80BD81F4  C0 1B 0E E0 */	lfs f0, 0xee0(r27)
/* 80BD81F8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BD81FC  C0 1B 0E E4 */	lfs f0, 0xee4(r27)
/* 80BD8200  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BD8204  38 61 00 6C */	addi r3, r1, 0x6c
/* 80BD8208  38 81 00 78 */	addi r4, r1, 0x78
/* 80BD820C  4B 76 F1 90 */	b PSVECSquareDistance
/* 80BD8210  FC 00 F0 90 */	fmr f0, f30
/* 80BD8214  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8218  40 81 00 58 */	ble lbl_80BD8270
/* 80BD821C  FC 00 08 34 */	frsqrte f0, f1
/* 80BD8220  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80BD8224  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8228  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80BD822C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8230  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8234  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8238  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD823C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8240  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8244  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8248  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD824C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8250  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8254  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8258  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD825C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8260  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8264  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD8268  FC 20 08 18 */	frsp f1, f1
/* 80BD826C  48 00 00 88 */	b lbl_80BD82F4
lbl_80BD8270:
/* 80BD8270  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80BD8274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8278  40 80 00 10 */	bge lbl_80BD8288
/* 80BD827C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD8280  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BD8284  48 00 00 70 */	b lbl_80BD82F4
lbl_80BD8288:
/* 80BD8288  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BD828C  80 81 00 08 */	lwz r4, 8(r1)
/* 80BD8290  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD8294  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD8298  7C 03 00 00 */	cmpw r3, r0
/* 80BD829C  41 82 00 14 */	beq lbl_80BD82B0
/* 80BD82A0  40 80 00 40 */	bge lbl_80BD82E0
/* 80BD82A4  2C 03 00 00 */	cmpwi r3, 0
/* 80BD82A8  41 82 00 20 */	beq lbl_80BD82C8
/* 80BD82AC  48 00 00 34 */	b lbl_80BD82E0
lbl_80BD82B0:
/* 80BD82B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD82B4  41 82 00 0C */	beq lbl_80BD82C0
/* 80BD82B8  38 00 00 01 */	li r0, 1
/* 80BD82BC  48 00 00 28 */	b lbl_80BD82E4
lbl_80BD82C0:
/* 80BD82C0  38 00 00 02 */	li r0, 2
/* 80BD82C4  48 00 00 20 */	b lbl_80BD82E4
lbl_80BD82C8:
/* 80BD82C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD82CC  41 82 00 0C */	beq lbl_80BD82D8
/* 80BD82D0  38 00 00 05 */	li r0, 5
/* 80BD82D4  48 00 00 10 */	b lbl_80BD82E4
lbl_80BD82D8:
/* 80BD82D8  38 00 00 03 */	li r0, 3
/* 80BD82DC  48 00 00 08 */	b lbl_80BD82E4
lbl_80BD82E0:
/* 80BD82E0  38 00 00 04 */	li r0, 4
lbl_80BD82E4:
/* 80BD82E4  2C 00 00 01 */	cmpwi r0, 1
/* 80BD82E8  40 82 00 0C */	bne lbl_80BD82F4
/* 80BD82EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD82F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BD82F4:
/* 80BD82F4  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80BD82F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD82FC  40 81 00 10 */	ble lbl_80BD830C
/* 80BD8300  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BD8304  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80BD8308  EF C1 00 24 */	fdivs f30, f1, f0
lbl_80BD830C:
/* 80BD830C  7F 9A E3 78 */	mr r26, r28
/* 80BD8310  3B 20 00 05 */	li r25, 5
/* 80BD8314  3B C0 00 14 */	li r30, 0x14
/* 80BD8318  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80BD831C  EF C0 F0 2A */	fadds f30, f0, f30
/* 80BD8320  C3 FF 00 A4 */	lfs f31, 0xa4(r31)
/* 80BD8324  C3 BF 00 B4 */	lfs f29, 0xb4(r31)
/* 80BD8328  3B 9C FF F4 */	addi r28, r28, -12
lbl_80BD832C:
/* 80BD832C  C3 9C 00 04 */	lfs f28, 4(r28)
/* 80BD8330  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80BD8334  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BD8338  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80BD833C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80BD8340  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80BD8344  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BD8348  EC 01 F8 2A */	fadds f0, f1, f31
/* 80BD834C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BD8350  38 61 00 60 */	addi r3, r1, 0x60
/* 80BD8354  4B 44 59 68 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80BD8358  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD835C  41 82 00 30 */	beq lbl_80BD838C
/* 80BD8360  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80BD8364  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80BD8368  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80BD836C  EC 21 00 2A */	fadds f1, f1, f0
/* 80BD8370  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80BD8374  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8378  40 81 00 14 */	ble lbl_80BD838C
/* 80BD837C  D0 3C 00 04 */	stfs f1, 4(r28)
/* 80BD8380  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD8384  38 1E 0E E8 */	addi r0, r30, 0xee8
/* 80BD8388  7C 1B 05 2E */	stfsx f0, r27, r0
lbl_80BD838C:
/* 80BD838C  38 19 0F 05 */	addi r0, r25, 0xf05
/* 80BD8390  7C 1B 00 AE */	lbzx r0, r27, r0
/* 80BD8394  28 00 00 00 */	cmplwi r0, 0
/* 80BD8398  41 82 00 08 */	beq lbl_80BD83A0
/* 80BD839C  D3 9C 00 04 */	stfs f28, 4(r28)
lbl_80BD83A0:
/* 80BD83A0  38 61 00 30 */	addi r3, r1, 0x30
/* 80BD83A4  7F 84 E3 78 */	mr r4, r28
/* 80BD83A8  7F 45 D3 78 */	mr r5, r26
/* 80BD83AC  4B 68 E7 88 */	b __mi__4cXyzCFRC3Vec
/* 80BD83B0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BD83B4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BD83B8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BD83BC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BD83C0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BD83C4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BD83C8  38 61 00 24 */	addi r3, r1, 0x24
/* 80BD83CC  38 81 00 54 */	addi r4, r1, 0x54
/* 80BD83D0  4B 68 EB 78 */	b normalizeZP__4cXyzFv
/* 80BD83D4  FC 20 F0 90 */	fmr f1, f30
/* 80BD83D8  2C 19 00 05 */	cmpwi r25, 5
/* 80BD83DC  40 82 00 08 */	bne lbl_80BD83E4
/* 80BD83E0  C0 3F 00 9C */	lfs f1, 0x9c(r31)
lbl_80BD83E4:
/* 80BD83E4  38 61 00 18 */	addi r3, r1, 0x18
/* 80BD83E8  38 81 00 54 */	addi r4, r1, 0x54
/* 80BD83EC  4B 68 E7 98 */	b __ml__4cXyzCFf
/* 80BD83F0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BD83F4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BD83F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BD83FC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BD8400  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BD8404  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BD8408  38 61 00 0C */	addi r3, r1, 0xc
/* 80BD840C  7F 44 D3 78 */	mr r4, r26
/* 80BD8410  38 A1 00 54 */	addi r5, r1, 0x54
/* 80BD8414  4B 68 E6 D0 */	b __pl__4cXyzCFRC3Vec
/* 80BD8418  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BD841C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BD8420  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BD8424  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BD8428  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BD842C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80BD8430  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80BD8434  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80BD8438  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD843C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80BD8440  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BD8444  C0 3A 00 04 */	lfs f1, 4(r26)
/* 80BD8448  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80BD844C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD8450  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80BD8454  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80BD8458  C0 3A 00 08 */	lfs f1, 8(r26)
/* 80BD845C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80BD8460  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD8464  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80BD8468  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80BD846C  7F 9A E3 78 */	mr r26, r28
/* 80BD8470  3B 39 FF FF */	addi r25, r25, -1
/* 80BD8474  2C 19 00 01 */	cmpwi r25, 1
/* 80BD8478  3B 9C FF F4 */	addi r28, r28, -12
/* 80BD847C  3B DE FF FC */	addi r30, r30, -4
/* 80BD8480  3B BD FF F0 */	addi r29, r29, -16
/* 80BD8484  40 80 FE A8 */	bge lbl_80BD832C
lbl_80BD8488:
/* 80BD8488  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 80BD848C  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80BD8490  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 80BD8494  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80BD8498  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 80BD849C  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 80BD84A0  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 80BD84A4  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 80BD84A8  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80BD84AC  4B 78 9D 6C */	b _restgpr_25
/* 80BD84B0  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80BD84B4  7C 08 03 A6 */	mtlr r0
/* 80BD84B8  38 21 01 20 */	addi r1, r1, 0x120
/* 80BD84BC  4E 80 00 20 */	blr 
