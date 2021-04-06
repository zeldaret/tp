lbl_807F94E8:
/* 807F94E8  94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 807F94EC  7C 08 02 A6 */	mflr r0
/* 807F94F0  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 807F94F4  DB E1 01 B0 */	stfd f31, 0x1b0(r1)
/* 807F94F8  F3 E1 01 B8 */	psq_st f31, 440(r1), 0, 0 /* qr0 */
/* 807F94FC  DB C1 01 A0 */	stfd f30, 0x1a0(r1)
/* 807F9500  F3 C1 01 A8 */	psq_st f30, 424(r1), 0, 0 /* qr0 */
/* 807F9504  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 807F9508  4B B6 8C C1 */	bl _savegpr_24
/* 807F950C  7C 7E 1B 78 */	mr r30, r3
/* 807F9510  3C 60 80 80 */	lis r3, lit_3801@ha /* 0x807FCCB4@ha */
/* 807F9514  3B E3 CC B4 */	addi r31, r3, lit_3801@l /* 0x807FCCB4@l */
/* 807F9518  38 61 00 4C */	addi r3, r1, 0x4c
/* 807F951C  4B 87 E7 4D */	bl __ct__11dBgS_LinChkFv
/* 807F9520  38 61 00 BC */	addi r3, r1, 0xbc
/* 807F9524  3C 80 80 80 */	lis r4, __ct__4cXyzFv@ha /* 0x807F99CC@ha */
/* 807F9528  38 84 99 CC */	addi r4, r4, __ct__4cXyzFv@l /* 0x807F99CC@l */
/* 807F952C  3C A0 80 80 */	lis r5, __dt__4cXyzFv@ha /* 0x807FCC64@ha */
/* 807F9530  38 A5 CC 64 */	addi r5, r5, __dt__4cXyzFv@l /* 0x807FCC64@l */
/* 807F9534  38 C0 00 0C */	li r6, 0xc
/* 807F9538  38 E0 00 10 */	li r7, 0x10
/* 807F953C  4B B6 88 25 */	bl __construct_array
/* 807F9540  AB 5E 04 E6 */	lha r26, 0x4e6(r30)
/* 807F9544  3B 20 00 00 */	li r25, 0
/* 807F9548  3B 00 00 00 */	li r24, 0
/* 807F954C  3B 60 00 00 */	li r27, 0
/* 807F9550  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F9554  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F9558  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 807F955C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F9560  3B 83 07 68 */	addi r28, r3, calc_mtx@l /* 0x80450768@l */
/* 807F9564  C3 DF 00 04 */	lfs f30, 4(r31)
/* 807F9568  C3 FF 00 80 */	lfs f31, 0x80(r31)
lbl_807F956C:
/* 807F956C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807F9570  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807F9574  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807F9578  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807F957C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807F9580  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807F9584  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807F9588  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807F958C  80 7C 00 00 */	lwz r3, 0(r28)
/* 807F9590  7F 44 D3 78 */	mr r4, r26
/* 807F9594  4B 81 2E 49 */	bl mDoMtx_YrotS__FPA4_fs
/* 807F9598  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 807F959C  D3 C1 00 2C */	stfs f30, 0x2c(r1)
/* 807F95A0  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 807F95A4  38 61 00 28 */	addi r3, r1, 0x28
/* 807F95A8  38 81 00 34 */	addi r4, r1, 0x34
/* 807F95AC  4B A7 79 41 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F95B0  38 61 00 34 */	addi r3, r1, 0x34
/* 807F95B4  38 81 00 40 */	addi r4, r1, 0x40
/* 807F95B8  7C 65 1B 78 */	mr r5, r3
/* 807F95BC  4B B4 DA D5 */	bl PSVECAdd
/* 807F95C0  38 61 00 4C */	addi r3, r1, 0x4c
/* 807F95C4  38 81 00 40 */	addi r4, r1, 0x40
/* 807F95C8  38 A1 00 34 */	addi r5, r1, 0x34
/* 807F95CC  7F C6 F3 78 */	mr r6, r30
/* 807F95D0  4B 87 E7 95 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807F95D4  7F A3 EB 78 */	mr r3, r29
/* 807F95D8  38 81 00 4C */	addi r4, r1, 0x4c
/* 807F95DC  4B 87 AD D9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807F95E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807F95E4  41 82 00 F4 */	beq lbl_807F96D8
/* 807F95E8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 807F95EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807F95F0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807F95F4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807F95F8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 807F95FC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807F9600  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F9604  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807F9608  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807F960C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807F9610  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807F9614  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807F9618  38 61 00 28 */	addi r3, r1, 0x28
/* 807F961C  38 81 00 40 */	addi r4, r1, 0x40
/* 807F9620  4B A7 78 CD */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F9624  38 61 00 40 */	addi r3, r1, 0x40
/* 807F9628  38 81 00 34 */	addi r4, r1, 0x34
/* 807F962C  7C 65 1B 78 */	mr r5, r3
/* 807F9630  4B B4 DA 61 */	bl PSVECAdd
/* 807F9634  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807F9638  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807F963C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807F9640  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807F9644  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807F9648  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807F964C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 807F9650  EC 01 00 28 */	fsubs f0, f1, f0
/* 807F9654  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807F9658  38 61 00 4C */	addi r3, r1, 0x4c
/* 807F965C  38 81 00 40 */	addi r4, r1, 0x40
/* 807F9660  38 A1 00 34 */	addi r5, r1, 0x34
/* 807F9664  7F C6 F3 78 */	mr r6, r30
/* 807F9668  4B 87 E6 FD */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807F966C  7F A3 EB 78 */	mr r3, r29
/* 807F9670  38 81 00 4C */	addi r4, r1, 0x4c
/* 807F9674  4B 87 AD 41 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807F9678  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807F967C  41 82 00 2C */	beq lbl_807F96A8
/* 807F9680  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 807F9684  38 61 00 BC */	addi r3, r1, 0xbc
/* 807F9688  7C 63 DA 14 */	add r3, r3, r27
/* 807F968C  D0 03 00 00 */	stfs f0, 0(r3)
/* 807F9690  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807F9694  D0 03 00 04 */	stfs f0, 4(r3)
/* 807F9698  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 807F969C  D0 03 00 08 */	stfs f0, 8(r3)
/* 807F96A0  3B 20 00 01 */	li r25, 1
/* 807F96A4  48 00 00 34 */	b lbl_807F96D8
lbl_807F96A8:
/* 807F96A8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807F96AC  38 61 00 BC */	addi r3, r1, 0xbc
/* 807F96B0  7C 63 DA 14 */	add r3, r3, r27
/* 807F96B4  D0 03 00 00 */	stfs f0, 0(r3)
/* 807F96B8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807F96BC  D0 03 00 04 */	stfs f0, 4(r3)
/* 807F96C0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807F96C4  D0 03 00 08 */	stfs f0, 8(r3)
/* 807F96C8  C0 23 00 00 */	lfs f1, 0(r3)
/* 807F96CC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 807F96D0  EC 01 00 2A */	fadds f0, f1, f0
/* 807F96D4  D0 03 00 00 */	stfs f0, 0(r3)
lbl_807F96D8:
/* 807F96D8  3B 18 00 01 */	addi r24, r24, 1
/* 807F96DC  2C 18 00 10 */	cmpwi r24, 0x10
/* 807F96E0  3B 5A 10 00 */	addi r26, r26, 0x1000
/* 807F96E4  3B 7B 00 0C */	addi r27, r27, 0xc
/* 807F96E8  41 80 FE 84 */	blt lbl_807F956C
/* 807F96EC  7F 20 07 75 */	extsb. r0, r25
/* 807F96F0  41 82 02 60 */	beq lbl_807F9950
/* 807F96F4  3B A0 00 00 */	li r29, 0
/* 807F96F8  3B 80 00 01 */	li r28, 1
/* 807F96FC  3B 60 00 0C */	li r27, 0xc
/* 807F9700  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_807F9704:
/* 807F9704  38 61 00 1C */	addi r3, r1, 0x1c
/* 807F9708  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 807F970C  38 81 00 BC */	addi r4, r1, 0xbc
/* 807F9710  7C 84 02 14 */	add r4, r4, r0
/* 807F9714  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807F9718  4B A6 D4 1D */	bl __mi__4cXyzCFRC3Vec
/* 807F971C  38 61 00 10 */	addi r3, r1, 0x10
/* 807F9720  38 81 00 BC */	addi r4, r1, 0xbc
/* 807F9724  7C 84 DA 14 */	add r4, r4, r27
/* 807F9728  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807F972C  4B A6 D4 09 */	bl __mi__4cXyzCFRC3Vec
/* 807F9730  38 61 00 1C */	addi r3, r1, 0x1c
/* 807F9734  4B B4 DA 05 */	bl PSVECSquareMag
/* 807F9738  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 807F973C  40 81 00 58 */	ble lbl_807F9794
/* 807F9740  FC 00 08 34 */	frsqrte f0, f1
/* 807F9744  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807F9748  FC 44 00 32 */	fmul f2, f4, f0
/* 807F974C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807F9750  FC 00 00 32 */	fmul f0, f0, f0
/* 807F9754  FC 01 00 32 */	fmul f0, f1, f0
/* 807F9758  FC 03 00 28 */	fsub f0, f3, f0
/* 807F975C  FC 02 00 32 */	fmul f0, f2, f0
/* 807F9760  FC 44 00 32 */	fmul f2, f4, f0
/* 807F9764  FC 00 00 32 */	fmul f0, f0, f0
/* 807F9768  FC 01 00 32 */	fmul f0, f1, f0
/* 807F976C  FC 03 00 28 */	fsub f0, f3, f0
/* 807F9770  FC 02 00 32 */	fmul f0, f2, f0
/* 807F9774  FC 44 00 32 */	fmul f2, f4, f0
/* 807F9778  FC 00 00 32 */	fmul f0, f0, f0
/* 807F977C  FC 01 00 32 */	fmul f0, f1, f0
/* 807F9780  FC 03 00 28 */	fsub f0, f3, f0
/* 807F9784  FC 02 00 32 */	fmul f0, f2, f0
/* 807F9788  FF C1 00 32 */	fmul f30, f1, f0
/* 807F978C  FF C0 F0 18 */	frsp f30, f30
/* 807F9790  48 00 00 90 */	b lbl_807F9820
lbl_807F9794:
/* 807F9794  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807F9798  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F979C  40 80 00 10 */	bge lbl_807F97AC
/* 807F97A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F97A4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807F97A8  48 00 00 78 */	b lbl_807F9820
lbl_807F97AC:
/* 807F97AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807F97B0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807F97B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807F97B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 807F97BC  7C 03 00 00 */	cmpw r3, r0
/* 807F97C0  41 82 00 14 */	beq lbl_807F97D4
/* 807F97C4  40 80 00 40 */	bge lbl_807F9804
/* 807F97C8  2C 03 00 00 */	cmpwi r3, 0
/* 807F97CC  41 82 00 20 */	beq lbl_807F97EC
/* 807F97D0  48 00 00 34 */	b lbl_807F9804
lbl_807F97D4:
/* 807F97D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F97D8  41 82 00 0C */	beq lbl_807F97E4
/* 807F97DC  38 00 00 01 */	li r0, 1
/* 807F97E0  48 00 00 28 */	b lbl_807F9808
lbl_807F97E4:
/* 807F97E4  38 00 00 02 */	li r0, 2
/* 807F97E8  48 00 00 20 */	b lbl_807F9808
lbl_807F97EC:
/* 807F97EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F97F0  41 82 00 0C */	beq lbl_807F97FC
/* 807F97F4  38 00 00 05 */	li r0, 5
/* 807F97F8  48 00 00 10 */	b lbl_807F9808
lbl_807F97FC:
/* 807F97FC  38 00 00 03 */	li r0, 3
/* 807F9800  48 00 00 08 */	b lbl_807F9808
lbl_807F9804:
/* 807F9804  38 00 00 04 */	li r0, 4
lbl_807F9808:
/* 807F9808  2C 00 00 01 */	cmpwi r0, 1
/* 807F980C  40 82 00 10 */	bne lbl_807F981C
/* 807F9810  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F9814  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807F9818  48 00 00 08 */	b lbl_807F9820
lbl_807F981C:
/* 807F981C  FF C0 08 90 */	fmr f30, f1
lbl_807F9820:
/* 807F9820  38 61 00 10 */	addi r3, r1, 0x10
/* 807F9824  4B B4 D9 15 */	bl PSVECSquareMag
/* 807F9828  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 807F982C  40 81 00 58 */	ble lbl_807F9884
/* 807F9830  FC 00 08 34 */	frsqrte f0, f1
/* 807F9834  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807F9838  FC 44 00 32 */	fmul f2, f4, f0
/* 807F983C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807F9840  FC 00 00 32 */	fmul f0, f0, f0
/* 807F9844  FC 01 00 32 */	fmul f0, f1, f0
/* 807F9848  FC 03 00 28 */	fsub f0, f3, f0
/* 807F984C  FC 02 00 32 */	fmul f0, f2, f0
/* 807F9850  FC 44 00 32 */	fmul f2, f4, f0
/* 807F9854  FC 00 00 32 */	fmul f0, f0, f0
/* 807F9858  FC 01 00 32 */	fmul f0, f1, f0
/* 807F985C  FC 03 00 28 */	fsub f0, f3, f0
/* 807F9860  FC 02 00 32 */	fmul f0, f2, f0
/* 807F9864  FC 44 00 32 */	fmul f2, f4, f0
/* 807F9868  FC 00 00 32 */	fmul f0, f0, f0
/* 807F986C  FC 01 00 32 */	fmul f0, f1, f0
/* 807F9870  FC 03 00 28 */	fsub f0, f3, f0
/* 807F9874  FC 02 00 32 */	fmul f0, f2, f0
/* 807F9878  FC 21 00 32 */	fmul f1, f1, f0
/* 807F987C  FC 20 08 18 */	frsp f1, f1
/* 807F9880  48 00 00 88 */	b lbl_807F9908
lbl_807F9884:
/* 807F9884  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807F9888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F988C  40 80 00 10 */	bge lbl_807F989C
/* 807F9890  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F9894  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807F9898  48 00 00 70 */	b lbl_807F9908
lbl_807F989C:
/* 807F989C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807F98A0  80 81 00 08 */	lwz r4, 8(r1)
/* 807F98A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807F98A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 807F98AC  7C 03 00 00 */	cmpw r3, r0
/* 807F98B0  41 82 00 14 */	beq lbl_807F98C4
/* 807F98B4  40 80 00 40 */	bge lbl_807F98F4
/* 807F98B8  2C 03 00 00 */	cmpwi r3, 0
/* 807F98BC  41 82 00 20 */	beq lbl_807F98DC
/* 807F98C0  48 00 00 34 */	b lbl_807F98F4
lbl_807F98C4:
/* 807F98C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F98C8  41 82 00 0C */	beq lbl_807F98D4
/* 807F98CC  38 00 00 01 */	li r0, 1
/* 807F98D0  48 00 00 28 */	b lbl_807F98F8
lbl_807F98D4:
/* 807F98D4  38 00 00 02 */	li r0, 2
/* 807F98D8  48 00 00 20 */	b lbl_807F98F8
lbl_807F98DC:
/* 807F98DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F98E0  41 82 00 0C */	beq lbl_807F98EC
/* 807F98E4  38 00 00 05 */	li r0, 5
/* 807F98E8  48 00 00 10 */	b lbl_807F98F8
lbl_807F98EC:
/* 807F98EC  38 00 00 03 */	li r0, 3
/* 807F98F0  48 00 00 08 */	b lbl_807F98F8
lbl_807F98F4:
/* 807F98F4  38 00 00 04 */	li r0, 4
lbl_807F98F8:
/* 807F98F8  2C 00 00 01 */	cmpwi r0, 1
/* 807F98FC  40 82 00 0C */	bne lbl_807F9908
/* 807F9900  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F9904  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807F9908:
/* 807F9908  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 807F990C  40 81 00 08 */	ble lbl_807F9914
/* 807F9910  7F 9D E3 78 */	mr r29, r28
lbl_807F9914:
/* 807F9914  3B 9C 00 01 */	addi r28, r28, 1
/* 807F9918  2C 1C 00 10 */	cmpwi r28, 0x10
/* 807F991C  3B 7B 00 0C */	addi r27, r27, 0xc
/* 807F9920  41 80 FD E4 */	blt lbl_807F9704
/* 807F9924  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 807F9928  38 61 00 BC */	addi r3, r1, 0xbc
/* 807F992C  7C 03 04 2E */	lfsx f0, r3, r0
/* 807F9930  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 807F9934  38 61 00 C0 */	addi r3, r1, 0xc0
/* 807F9938  7C 03 04 2E */	lfsx f0, r3, r0
/* 807F993C  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 807F9940  38 61 00 C4 */	addi r3, r1, 0xc4
/* 807F9944  7C 03 04 2E */	lfsx f0, r3, r0
/* 807F9948  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 807F994C  48 00 00 34 */	b lbl_807F9980
lbl_807F9950:
/* 807F9950  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 807F9954  4B A6 E0 39 */	bl cM_rndFX__Ff
/* 807F9958  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807F995C  EC 00 08 2A */	fadds f0, f0, f1
/* 807F9960  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 807F9964  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807F9968  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 807F996C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 807F9970  4B A6 E0 1D */	bl cM_rndFX__Ff
/* 807F9974  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807F9978  EC 00 08 2A */	fadds f0, f0, f1
/* 807F997C  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
lbl_807F9980:
/* 807F9980  38 61 00 BC */	addi r3, r1, 0xbc
/* 807F9984  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha /* 0x807FCC64@ha */
/* 807F9988  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807FCC64@l */
/* 807F998C  38 A0 00 0C */	li r5, 0xc
/* 807F9990  38 C0 00 10 */	li r6, 0x10
/* 807F9994  4B B6 83 55 */	bl __destroy_arr
/* 807F9998  38 61 00 4C */	addi r3, r1, 0x4c
/* 807F999C  38 80 FF FF */	li r4, -1
/* 807F99A0  4B 87 E3 3D */	bl __dt__11dBgS_LinChkFv
/* 807F99A4  E3 E1 01 B8 */	psq_l f31, 440(r1), 0, 0 /* qr0 */
/* 807F99A8  CB E1 01 B0 */	lfd f31, 0x1b0(r1)
/* 807F99AC  E3 C1 01 A8 */	psq_l f30, 424(r1), 0, 0 /* qr0 */
/* 807F99B0  CB C1 01 A0 */	lfd f30, 0x1a0(r1)
/* 807F99B4  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 807F99B8  4B B6 88 5D */	bl _restgpr_24
/* 807F99BC  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 807F99C0  7C 08 03 A6 */	mtlr r0
/* 807F99C4  38 21 01 C0 */	addi r1, r1, 0x1c0
/* 807F99C8  4E 80 00 20 */	blr 
