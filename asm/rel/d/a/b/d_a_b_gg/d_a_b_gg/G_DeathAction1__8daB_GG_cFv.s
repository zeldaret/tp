lbl_805E7F50:
/* 805E7F50  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 805E7F54  7C 08 02 A6 */	mflr r0
/* 805E7F58  90 01 01 04 */	stw r0, 0x104(r1)
/* 805E7F5C  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 805E7F60  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 805E7F64  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805E7F68  4B D7 A2 74 */	b _savegpr_29
/* 805E7F6C  7C 7E 1B 78 */	mr r30, r3
/* 805E7F70  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805E7F74  3B E3 D0 60 */	addi r31, r3, lit_3911@l
/* 805E7F78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E7F7C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805E7F80  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E7F84  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E7F88  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E7F8C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E7F90  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E7F94  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805E7F98  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805E7F9C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805E7FA0  38 61 00 70 */	addi r3, r1, 0x70
/* 805E7FA4  4B A8 FC C4 */	b __ct__11dBgS_LinChkFv
/* 805E7FA8  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E7FAC  38 63 00 0C */	addi r3, r3, 0xc
/* 805E7FB0  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 805E7FB4  4B D4 04 78 */	b checkPass__12J3DFrameCtrlFf
/* 805E7FB8  2C 03 00 00 */	cmpwi r3, 0
/* 805E7FBC  41 82 00 E8 */	beq lbl_805E80A4
/* 805E7FC0  38 00 00 01 */	li r0, 1
/* 805E7FC4  98 1E 06 6D */	stb r0, 0x66d(r30)
/* 805E7FC8  80 7E 0E 38 */	lwz r3, 0xe38(r30)
/* 805E7FCC  38 63 00 24 */	addi r3, r3, 0x24
/* 805E7FD0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805E7FD4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805E7FD8  4B D5 E4 D8 */	b PSMTXCopy
/* 805E7FDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805E7FE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805E7FE4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805E7FE8  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 805E7FEC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805E7FF0  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 805E7FF4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805E7FF8  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 805E7FFC  38 9E 06 7C */	addi r4, r30, 0x67c
/* 805E8000  4B A2 4C 00 */	b mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 805E8004  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E8008  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805E800C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E8010  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E8014  38 7E 06 70 */	addi r3, r30, 0x670
/* 805E8018  7C 64 1B 78 */	mr r4, r3
/* 805E801C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 805E8020  38 C1 00 50 */	addi r6, r1, 0x50
/* 805E8024  4B C8 8D 9C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E8028  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 805E802C  28 00 00 03 */	cmplwi r0, 3
/* 805E8030  41 82 00 2C */	beq lbl_805E805C
/* 805E8034  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 805E8038  4B C7 F9 54 */	b cM_rndFX__Ff
/* 805E803C  FF E0 08 90 */	fmr f31, f1
/* 805E8040  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 805E8044  4B C7 F9 48 */	b cM_rndFX__Ff
/* 805E8048  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805E804C  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 805E8050  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E8054  D3 E1 00 4C */	stfs f31, 0x4c(r1)
/* 805E8058  48 00 00 1C */	b lbl_805E8074
lbl_805E805C:
/* 805E805C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E8060  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E8064  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 805E8068  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E806C  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 805E8070  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_805E8074:
/* 805E8074  38 61 00 50 */	addi r3, r1, 0x50
/* 805E8078  38 81 00 38 */	addi r4, r1, 0x38
/* 805E807C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 805E8080  38 C1 00 44 */	addi r6, r1, 0x44
/* 805E8084  4B C8 8D 3C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E8088  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805E808C  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 805E8090  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 805E8094  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 805E8098  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805E809C  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 805E80A0  48 00 01 98 */	b lbl_805E8238
lbl_805E80A4:
/* 805E80A4  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E80A8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805E80AC  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 805E80B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E80B4  40 81 01 84 */	ble lbl_805E8238
/* 805E80B8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E80BC  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 805E80C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E80C4  41 82 01 74 */	beq lbl_805E8238
/* 805E80C8  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 805E80CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E80D0  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 805E80D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805E80D8  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 805E80DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E80E0  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 805E80E4  C0 1F 02 C4 */	lfs f0, 0x2c4(r31)
/* 805E80E8  EC 01 00 2A */	fadds f0, f1, f0
/* 805E80EC  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 805E80F0  38 7E 06 70 */	addi r3, r30, 0x670
/* 805E80F4  38 9E 06 84 */	addi r4, r30, 0x684
/* 805E80F8  7C 65 1B 78 */	mr r5, r3
/* 805E80FC  4B D5 EF 94 */	b PSVECAdd
/* 805E8100  38 7E 06 80 */	addi r3, r30, 0x680
/* 805E8104  38 80 CB 00 */	li r4, -13568
/* 805E8108  38 A0 05 00 */	li r5, 0x500
/* 805E810C  4B C8 8A 84 */	b cLib_chaseAngleS__FPsss
/* 805E8110  38 7E 06 7C */	addi r3, r30, 0x67c
/* 805E8114  38 80 4F A0 */	li r4, 0x4fa0
/* 805E8118  38 A0 05 00 */	li r5, 0x500
/* 805E811C  4B C8 8A 74 */	b cLib_chaseAngleS__FPsss
/* 805E8120  38 61 00 70 */	addi r3, r1, 0x70
/* 805E8124  38 81 00 2C */	addi r4, r1, 0x2c
/* 805E8128  38 BE 06 70 */	addi r5, r30, 0x670
/* 805E812C  38 C0 00 00 */	li r6, 0
/* 805E8130  4B A8 FC 34 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805E8134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E8138  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E813C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 805E8140  7F A3 EB 78 */	mr r3, r29
/* 805E8144  38 81 00 70 */	addi r4, r1, 0x70
/* 805E8148  4B A8 C2 6C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805E814C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E8150  41 82 00 E8 */	beq lbl_805E8238
/* 805E8154  88 7E 05 B2 */	lbz r3, 0x5b2(r30)
/* 805E8158  38 03 00 01 */	addi r0, r3, 1
/* 805E815C  98 1E 05 B2 */	stb r0, 0x5b2(r30)
/* 805E8160  3C 60 80 5F */	lis r3, __vt__8cM3dGPla@ha
/* 805E8164  38 03 D6 9C */	addi r0, r3, __vt__8cM3dGPla@l
/* 805E8168  90 01 00 6C */	stw r0, 0x6c(r1)
/* 805E816C  7F A3 EB 78 */	mr r3, r29
/* 805E8170  38 81 00 84 */	addi r4, r1, 0x84
/* 805E8174  38 A1 00 5C */	addi r5, r1, 0x5c
/* 805E8178  4B A8 C5 CC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 805E817C  C0 1E 06 84 */	lfs f0, 0x684(r30)
/* 805E8180  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805E8184  C0 1E 06 88 */	lfs f0, 0x688(r30)
/* 805E8188  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E818C  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 805E8190  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E8194  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 805E8198  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805E819C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805E81A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E81A4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 805E81A8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E81AC  38 61 00 08 */	addi r3, r1, 8
/* 805E81B0  7F C4 F3 78 */	mr r4, r30
/* 805E81B4  38 A1 00 20 */	addi r5, r1, 0x20
/* 805E81B8  38 C1 00 14 */	addi r6, r1, 0x14
/* 805E81BC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 805E81C0  4B FF 70 91 */	bl Hanekaeri__FP8daB_GG_c4cXyz4cXyzf
/* 805E81C4  C0 01 00 08 */	lfs f0, 8(r1)
/* 805E81C8  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 805E81CC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E81D0  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 805E81D4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805E81D8  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 805E81DC  88 1E 05 B2 */	lbz r0, 0x5b2(r30)
/* 805E81E0  28 00 00 02 */	cmplwi r0, 2
/* 805E81E4  40 81 00 14 */	ble lbl_805E81F8
/* 805E81E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E81EC  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 805E81F0  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 805E81F4  D0 1E 06 8C */	stfs f0, 0x68c(r30)
lbl_805E81F8:
/* 805E81F8  A8 7E 06 7E */	lha r3, 0x67e(r30)
/* 805E81FC  38 03 05 00 */	addi r0, r3, 0x500
/* 805E8200  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 805E8204  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 805E8208  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 805E820C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 805E8210  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 805E8214  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 805E8218  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 805E821C  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 805E8220  C0 1F 02 88 */	lfs f0, 0x288(r31)
/* 805E8224  EC 01 00 2A */	fadds f0, f1, f0
/* 805E8228  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 805E822C  3C 60 80 5F */	lis r3, __vt__8cM3dGPla@ha
/* 805E8230  38 03 D6 9C */	addi r0, r3, __vt__8cM3dGPla@l
/* 805E8234  90 01 00 6C */	stw r0, 0x6c(r1)
lbl_805E8238:
/* 805E8238  38 80 00 01 */	li r4, 1
/* 805E823C  98 9E 06 6C */	stb r4, 0x66c(r30)
/* 805E8240  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E8244  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E8248  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E824C  40 82 00 18 */	bne lbl_805E8264
/* 805E8250  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E8254  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E8258  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E825C  41 82 00 08 */	beq lbl_805E8264
/* 805E8260  38 80 00 00 */	li r4, 0
lbl_805E8264:
/* 805E8264  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E8268  41 82 00 14 */	beq lbl_805E827C
/* 805E826C  38 7E 06 68 */	addi r3, r30, 0x668
/* 805E8270  C0 3F 02 30 */	lfs f1, 0x230(r31)
/* 805E8274  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 805E8278  4B C8 84 C8 */	b cLib_chaseF__FPfff
lbl_805E827C:
/* 805E827C  38 61 00 70 */	addi r3, r1, 0x70
/* 805E8280  38 80 FF FF */	li r4, -1
/* 805E8284  4B A8 FA 58 */	b __dt__11dBgS_LinChkFv
/* 805E8288  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 805E828C  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 805E8290  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805E8294  4B D7 9F 94 */	b _restgpr_29
/* 805E8298  80 01 01 04 */	lwz r0, 0x104(r1)
/* 805E829C  7C 08 03 A6 */	mtlr r0
/* 805E82A0  38 21 01 00 */	addi r1, r1, 0x100
/* 805E82A4  4E 80 00 20 */	blr 
