lbl_80800F44:
/* 80800F44  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80800F48  7C 08 02 A6 */	mflr r0
/* 80800F4C  90 01 01 14 */	stw r0, 0x114(r1)
/* 80800F50  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80800F54  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80800F58  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 80800F5C  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 80800F60  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80800F64  4B B6 12 60 */	b _savegpr_23
/* 80800F68  7C 7C 1B 78 */	mr r28, r3
/* 80800F6C  3C 60 80 80 */	lis r3, lit_3902@ha
/* 80800F70  3B C3 42 7C */	addi r30, r3, lit_3902@l
/* 80800F74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80800F78  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80800F7C  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 80800F80  38 00 00 00 */	li r0, 0
/* 80800F84  90 1C 10 14 */	stw r0, 0x1014(r28)
/* 80800F88  38 61 00 5C */	addi r3, r1, 0x5c
/* 80800F8C  4B 87 68 24 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 80800F90  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80800F94  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80800F98  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80800F9C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80800FA0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80800FA4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80800FA8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80800FAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80800FB0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80800FB4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80800FB8  38 81 00 50 */	addi r4, r1, 0x50
/* 80800FBC  4B A6 6D 6C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80800FC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80800FC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80800FC8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80800FCC  7F A3 EB 78 */	mr r3, r29
/* 80800FD0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80800FD4  4B 87 34 CC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80800FD8  FF E0 08 90 */	fmr f31, f1
/* 80800FDC  7F 83 E3 78 */	mr r3, r28
/* 80800FE0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80800FE4  4B 81 97 FC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80800FE8  FF C0 08 90 */	fmr f30, f1
/* 80800FEC  3B 40 00 01 */	li r26, 1
/* 80800FF0  3B 20 00 02 */	li r25, 2
/* 80800FF4  3B 00 00 01 */	li r24, 1
/* 80800FF8  38 7D 3E E8 */	addi r3, r29, 0x3ee8
/* 80800FFC  81 9D 3E E8 */	lwz r12, 0x3ee8(r29)
/* 80801000  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80801004  7D 89 03 A6 */	mtctr r12
/* 80801008  4E 80 04 21 */	bctrl 
/* 8080100C  7C 77 1B 78 */	mr r23, r3
/* 80801010  A8 1C 06 70 */	lha r0, 0x670(r28)
/* 80801014  28 00 00 32 */	cmplwi r0, 0x32
/* 80801018  41 81 09 B8 */	bgt lbl_808019D0
/* 8080101C  3C 60 80 80 */	lis r3, lit_5371@ha
/* 80801020  38 63 44 3C */	addi r3, r3, lit_5371@l
/* 80801024  54 00 10 3A */	slwi r0, r0, 2
/* 80801028  7C 03 00 2E */	lwzx r0, r3, r0
/* 8080102C  7C 09 03 A6 */	mtctr r0
/* 80801030  4E 80 04 20 */	bctr 
lbl_80801034:
/* 80801034  3B 20 00 01 */	li r25, 1
/* 80801038  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8080103C  D0 1C 08 44 */	stfs f0, 0x844(r28)
/* 80801040  80 1C 10 8C */	lwz r0, 0x108c(r28)
/* 80801044  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80801048  41 82 09 88 */	beq lbl_808019D0
/* 8080104C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80801050  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80801054  38 00 00 01 */	li r0, 1
/* 80801058  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 8080105C  7F 83 E3 78 */	mr r3, r28
/* 80801060  38 80 00 10 */	li r4, 0x10
/* 80801064  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80801068  38 A0 00 02 */	li r5, 2
/* 8080106C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80801070  4B FF C6 4D */	bl anm_init__FP10e_yh_classifUcf
/* 80801074  38 7C 09 E0 */	addi r3, r28, 0x9e0
/* 80801078  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8080107C  4B 88 39 FC */	b StartCAt__8dCcD_SphFR4cXyz
/* 80801080  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80801084  4B A6 68 D0 */	b cM_rndF__Ff
/* 80801088  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8080108C  EC 00 08 2A */	fadds f0, f0, f1
/* 80801090  FC 00 00 1E */	fctiwz f0, f0
/* 80801094  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 80801098  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8080109C  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 808010A0  38 7C 12 5C */	addi r3, r28, 0x125c
/* 808010A4  38 9C 12 60 */	addi r4, r28, 0x1260
/* 808010A8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 808010AC  38 DC 04 E4 */	addi r6, r28, 0x4e4
/* 808010B0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 808010B4  38 FC 01 0C */	addi r7, r28, 0x10c
/* 808010B8  39 00 00 01 */	li r8, 1
/* 808010BC  4B 81 BF 64 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 808010C0  48 00 09 10 */	b lbl_808019D0
lbl_808010C4:
/* 808010C4  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 808010C8  A8 9C 06 88 */	lha r4, 0x688(r28)
/* 808010CC  38 A0 00 08 */	li r5, 8
/* 808010D0  38 C0 04 00 */	li r6, 0x400
/* 808010D4  4B A6 F5 34 */	b cLib_addCalcAngleS2__FPssss
/* 808010D8  80 17 00 0C */	lwz r0, 0xc(r23)
/* 808010DC  54 00 87 7F */	rlwinm. r0, r0, 0x10, 0x1d, 0x1f
/* 808010E0  40 82 00 28 */	bne lbl_80801108
/* 808010E4  A8 1C 06 98 */	lha r0, 0x698(r28)
/* 808010E8  2C 00 00 00 */	cmpwi r0, 0
/* 808010EC  40 82 00 1C */	bne lbl_80801108
/* 808010F0  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 808010F4  28 00 00 00 */	cmplwi r0, 0
/* 808010F8  40 82 00 10 */	bne lbl_80801108
/* 808010FC  38 00 00 02 */	li r0, 2
/* 80801100  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80801104  48 00 08 CC */	b lbl_808019D0
lbl_80801108:
/* 80801108  A8 1C 06 9A */	lha r0, 0x69a(r28)
/* 8080110C  2C 00 00 00 */	cmpwi r0, 0
/* 80801110  40 82 08 C0 */	bne lbl_808019D0
/* 80801114  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80801118  A8 1C 06 88 */	lha r0, 0x688(r28)
/* 8080111C  7C 03 00 50 */	subf r0, r3, r0
/* 80801120  7C 00 07 34 */	extsh r0, r0
/* 80801124  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80801128  40 80 08 A8 */	bge lbl_808019D0
/* 8080112C  2C 00 F0 00 */	cmpwi r0, -4096
/* 80801130  40 81 08 A0 */	ble lbl_808019D0
/* 80801134  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80801138  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8080113C  40 80 08 94 */	bge lbl_808019D0
/* 80801140  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80801144  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80801148  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080114C  40 82 08 84 */	bne lbl_808019D0
/* 80801150  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80801154  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 80801158  40 82 08 78 */	bne lbl_808019D0
/* 8080115C  38 00 00 0F */	li r0, 0xf
/* 80801160  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80801164  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015D@ha */
/* 80801168  38 03 01 5D */	addi r0, r3, 0x015D /* 0x0007015D@l */
/* 8080116C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80801170  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80801174  38 81 00 28 */	addi r4, r1, 0x28
/* 80801178  38 A0 FF FF */	li r5, -1
/* 8080117C  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80801180  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80801184  7D 89 03 A6 */	mtctr r12
/* 80801188  4E 80 04 21 */	bctrl 
/* 8080118C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80801190  4B A6 67 C4 */	b cM_rndF__Ff
/* 80801194  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80801198  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080119C  40 80 00 10 */	bge lbl_808011AC
/* 808011A0  38 00 40 00 */	li r0, 0x4000
/* 808011A4  B0 1C 08 64 */	sth r0, 0x864(r28)
/* 808011A8  48 00 00 0C */	b lbl_808011B4
lbl_808011AC:
/* 808011AC  38 00 C0 00 */	li r0, -16384
/* 808011B0  B0 1C 08 64 */	sth r0, 0x864(r28)
lbl_808011B4:
/* 808011B4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 808011B8  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 808011BC  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 808011C0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 808011C4  38 00 E0 00 */	li r0, -8192
/* 808011C8  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 808011CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070083@ha */
/* 808011D0  38 03 00 83 */	addi r0, r3, 0x0083 /* 0x00070083@l */
/* 808011D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 808011D8  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 808011DC  38 81 00 24 */	addi r4, r1, 0x24
/* 808011E0  38 A0 FF FF */	li r5, -1
/* 808011E4  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 808011E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 808011EC  7D 89 03 A6 */	mtctr r12
/* 808011F0  4E 80 04 21 */	bctrl 
/* 808011F4  48 00 07 DC */	b lbl_808019D0
lbl_808011F8:
/* 808011F8  38 61 00 38 */	addi r3, r1, 0x38
/* 808011FC  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80801200  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80801204  4B A6 59 30 */	b __mi__4cXyzCFRC3Vec
/* 80801208  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8080120C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80801210  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80801214  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80801218  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8080121C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80801220  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80801224  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80801228  4B A6 64 4C */	b cM_atan2s__Fff
/* 8080122C  7C 64 1B 78 */	mr r4, r3
/* 80801230  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80801234  38 A0 00 08 */	li r5, 8
/* 80801238  38 C0 08 00 */	li r6, 0x800
/* 8080123C  4B A6 F3 CC */	b cLib_addCalcAngleS2__FPssss
/* 80801240  38 61 00 50 */	addi r3, r1, 0x50
/* 80801244  4B B4 5E F4 */	b PSVECSquareMag
/* 80801248  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080124C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80801250  40 81 00 58 */	ble lbl_808012A8
/* 80801254  FC 00 08 34 */	frsqrte f0, f1
/* 80801258  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080125C  FC 44 00 32 */	fmul f2, f4, f0
/* 80801260  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80801264  FC 00 00 32 */	fmul f0, f0, f0
/* 80801268  FC 01 00 32 */	fmul f0, f1, f0
/* 8080126C  FC 03 00 28 */	fsub f0, f3, f0
/* 80801270  FC 02 00 32 */	fmul f0, f2, f0
/* 80801274  FC 44 00 32 */	fmul f2, f4, f0
/* 80801278  FC 00 00 32 */	fmul f0, f0, f0
/* 8080127C  FC 01 00 32 */	fmul f0, f1, f0
/* 80801280  FC 03 00 28 */	fsub f0, f3, f0
/* 80801284  FC 02 00 32 */	fmul f0, f2, f0
/* 80801288  FC 44 00 32 */	fmul f2, f4, f0
/* 8080128C  FC 00 00 32 */	fmul f0, f0, f0
/* 80801290  FC 01 00 32 */	fmul f0, f1, f0
/* 80801294  FC 03 00 28 */	fsub f0, f3, f0
/* 80801298  FC 02 00 32 */	fmul f0, f2, f0
/* 8080129C  FC 21 00 32 */	fmul f1, f1, f0
/* 808012A0  FC 20 08 18 */	frsp f1, f1
/* 808012A4  48 00 00 88 */	b lbl_8080132C
lbl_808012A8:
/* 808012A8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 808012AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808012B0  40 80 00 10 */	bge lbl_808012C0
/* 808012B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 808012B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 808012BC  48 00 00 70 */	b lbl_8080132C
lbl_808012C0:
/* 808012C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 808012C4  80 81 00 08 */	lwz r4, 8(r1)
/* 808012C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 808012CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 808012D0  7C 03 00 00 */	cmpw r3, r0
/* 808012D4  41 82 00 14 */	beq lbl_808012E8
/* 808012D8  40 80 00 40 */	bge lbl_80801318
/* 808012DC  2C 03 00 00 */	cmpwi r3, 0
/* 808012E0  41 82 00 20 */	beq lbl_80801300
/* 808012E4  48 00 00 34 */	b lbl_80801318
lbl_808012E8:
/* 808012E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 808012EC  41 82 00 0C */	beq lbl_808012F8
/* 808012F0  38 00 00 01 */	li r0, 1
/* 808012F4  48 00 00 28 */	b lbl_8080131C
lbl_808012F8:
/* 808012F8  38 00 00 02 */	li r0, 2
/* 808012FC  48 00 00 20 */	b lbl_8080131C
lbl_80801300:
/* 80801300  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80801304  41 82 00 0C */	beq lbl_80801310
/* 80801308  38 00 00 05 */	li r0, 5
/* 8080130C  48 00 00 10 */	b lbl_8080131C
lbl_80801310:
/* 80801310  38 00 00 03 */	li r0, 3
/* 80801314  48 00 00 08 */	b lbl_8080131C
lbl_80801318:
/* 80801318  38 00 00 04 */	li r0, 4
lbl_8080131C:
/* 8080131C  2C 00 00 01 */	cmpwi r0, 1
/* 80801320  40 82 00 0C */	bne lbl_8080132C
/* 80801324  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80801328  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8080132C:
/* 8080132C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80801330  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80801334  40 80 06 9C */	bge lbl_808019D0
/* 80801338  38 00 00 03 */	li r0, 3
/* 8080133C  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80801340  38 00 00 19 */	li r0, 0x19
/* 80801344  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 80801348  7F 83 E3 78 */	mr r3, r28
/* 8080134C  38 80 00 14 */	li r4, 0x14
/* 80801350  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80801354  38 A0 00 02 */	li r5, 2
/* 80801358  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080135C  4B FF C4 0D */	bl leaf_anm_init__FP10e_yh_classifUcf
/* 80801360  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 80801364  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 80801368  90 01 00 20 */	stw r0, 0x20(r1)
/* 8080136C  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80801370  38 81 00 20 */	addi r4, r1, 0x20
/* 80801374  38 A0 00 00 */	li r5, 0
/* 80801378  38 C0 FF FF */	li r6, -1
/* 8080137C  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80801380  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80801384  7D 89 03 A6 */	mtctr r12
/* 80801388  4E 80 04 21 */	bctrl 
/* 8080138C  48 00 06 44 */	b lbl_808019D0
lbl_80801390:
/* 80801390  3B 20 00 00 */	li r25, 0
/* 80801394  38 7C 08 44 */	addi r3, r28, 0x844
/* 80801398  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8080139C  FC 40 08 90 */	fmr f2, f1
/* 808013A0  4B A6 E6 E0 */	b cLib_addCalc0__FPfff
/* 808013A4  C0 1C 04 F8 */	lfs f0, 0x4f8(r28)
/* 808013A8  FC 00 02 10 */	fabs f0, f0
/* 808013AC  FC 60 00 18 */	frsp f3, f0
/* 808013B0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 808013B4  C0 3C 04 A8 */	lfs f1, 0x4a8(r28)
/* 808013B8  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 808013BC  4B A6 E6 80 */	b cLib_addCalc2__FPffff
/* 808013C0  C0 1C 05 00 */	lfs f0, 0x500(r28)
/* 808013C4  FC 00 02 10 */	fabs f0, f0
/* 808013C8  FC 60 00 18 */	frsp f3, f0
/* 808013CC  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 808013D0  C0 3C 04 B0 */	lfs f1, 0x4b0(r28)
/* 808013D4  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 808013D8  4B A6 E6 64 */	b cLib_addCalc2__FPffff
/* 808013DC  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 808013E0  38 80 C0 00 */	li r4, -16384
/* 808013E4  38 A0 00 04 */	li r5, 4
/* 808013E8  38 C0 04 00 */	li r6, 0x400
/* 808013EC  4B A6 F2 1C */	b cLib_addCalcAngleS2__FPssss
/* 808013F0  A8 1C 06 98 */	lha r0, 0x698(r28)
/* 808013F4  2C 00 00 00 */	cmpwi r0, 0
/* 808013F8  40 82 05 D8 */	bne lbl_808019D0
/* 808013FC  38 00 00 01 */	li r0, 1
/* 80801400  B0 1C 06 6E */	sth r0, 0x66e(r28)
/* 80801404  38 00 00 00 */	li r0, 0
/* 80801408  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 8080140C  38 00 00 1E */	li r0, 0x1e
/* 80801410  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 80801414  38 00 00 2D */	li r0, 0x2d
/* 80801418  90 1C 10 14 */	stw r0, 0x1014(r28)
/* 8080141C  48 00 05 B4 */	b lbl_808019D0
lbl_80801420:
/* 80801420  7F 83 E3 78 */	mr r3, r28
/* 80801424  38 80 00 0C */	li r4, 0xc
/* 80801428  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8080142C  38 A0 00 00 */	li r5, 0
/* 80801430  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80801434  4B FF C2 89 */	bl anm_init__FP10e_yh_classifUcf
/* 80801438  38 00 00 0B */	li r0, 0xb
/* 8080143C  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80801440  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070084@ha */
/* 80801444  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00070084@l */
/* 80801448  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8080144C  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80801450  38 81 00 1C */	addi r4, r1, 0x1c
/* 80801454  38 A0 FF FF */	li r5, -1
/* 80801458  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8080145C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80801460  7D 89 03 A6 */	mtctr r12
/* 80801464  4E 80 04 21 */	bctrl 
/* 80801468  48 00 05 68 */	b lbl_808019D0
lbl_8080146C:
/* 8080146C  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 80801470  38 80 00 01 */	li r4, 1
/* 80801474  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80801478  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080147C  40 82 00 18 */	bne lbl_80801494
/* 80801480  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80801484  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80801488  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080148C  41 82 00 08 */	beq lbl_80801494
/* 80801490  38 80 00 00 */	li r4, 0
lbl_80801494:
/* 80801494  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80801498  41 82 05 38 */	beq lbl_808019D0
/* 8080149C  38 00 00 01 */	li r0, 1
/* 808014A0  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 808014A4  7F 83 E3 78 */	mr r3, r28
/* 808014A8  38 80 00 10 */	li r4, 0x10
/* 808014AC  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 808014B0  38 A0 00 02 */	li r5, 2
/* 808014B4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 808014B8  4B FF C2 05 */	bl anm_init__FP10e_yh_classifUcf
/* 808014BC  48 00 05 14 */	b lbl_808019D0
lbl_808014C0:
/* 808014C0  3B 20 00 01 */	li r25, 1
/* 808014C4  A8 1C 08 64 */	lha r0, 0x864(r28)
/* 808014C8  2C 00 00 00 */	cmpwi r0, 0
/* 808014CC  40 82 00 2C */	bne lbl_808014F8
/* 808014D0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 808014D4  4B A6 64 80 */	b cM_rndF__Ff
/* 808014D8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 808014DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808014E0  40 80 00 10 */	bge lbl_808014F0
/* 808014E4  38 00 40 00 */	li r0, 0x4000
/* 808014E8  B0 1C 08 64 */	sth r0, 0x864(r28)
/* 808014EC  48 00 00 0C */	b lbl_808014F8
lbl_808014F0:
/* 808014F0  38 00 C0 00 */	li r0, -16384
/* 808014F4  B0 1C 08 64 */	sth r0, 0x864(r28)
lbl_808014F8:
/* 808014F8  80 1C 08 D4 */	lwz r0, 0x8d4(r28)
/* 808014FC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80801500  90 1C 08 D4 */	stw r0, 0x8d4(r28)
/* 80801504  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80801508  38 80 20 00 */	li r4, 0x2000
/* 8080150C  38 A0 00 02 */	li r5, 2
/* 80801510  38 C0 04 00 */	li r6, 0x400
/* 80801514  4B A6 F0 F4 */	b cLib_addCalcAngleS2__FPssss
/* 80801518  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 8080151C  A8 9C 08 64 */	lha r4, 0x864(r28)
/* 80801520  38 A0 00 02 */	li r5, 2
/* 80801524  38 C0 08 00 */	li r6, 0x800
/* 80801528  4B A6 F0 E0 */	b cLib_addCalcAngleS2__FPssss
/* 8080152C  A8 1C 06 9A */	lha r0, 0x69a(r28)
/* 80801530  2C 00 00 00 */	cmpwi r0, 0
/* 80801534  40 82 00 98 */	bne lbl_808015CC
/* 80801538  38 00 00 02 */	li r0, 2
/* 8080153C  98 1C 0B 18 */	stb r0, 0xb18(r28)
/* 80801540  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80801544  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80801548  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080154C  40 82 00 80 */	bne lbl_808015CC
/* 80801550  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80801554  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 80801558  40 82 00 74 */	bne lbl_808015CC
/* 8080155C  38 7C 09 E0 */	addi r3, r28, 0x9e0
/* 80801560  4B 88 2D 60 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80801564  28 03 00 00 */	cmplwi r3, 0
/* 80801568  41 82 00 64 */	beq lbl_808015CC
/* 8080156C  80 1C 0A 3C */	lwz r0, 0xa3c(r28)
/* 80801570  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80801574  40 82 00 58 */	bne lbl_808015CC
/* 80801578  38 00 00 14 */	li r0, 0x14
/* 8080157C  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80801580  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80801584  D0 1C 06 90 */	stfs f0, 0x690(r28)
/* 80801588  38 00 00 78 */	li r0, 0x78
/* 8080158C  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 80801590  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80801594  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80801598  64 00 00 02 */	oris r0, r0, 2
/* 8080159C  90 03 05 70 */	stw r0, 0x570(r3)
/* 808015A0  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 808015A4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 808015A8  7C 03 00 50 */	subf r0, r3, r0
/* 808015AC  B0 1C 08 62 */	sth r0, 0x862(r28)
/* 808015B0  7F 83 E3 78 */	mr r3, r28
/* 808015B4  38 80 00 08 */	li r4, 8
/* 808015B8  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 808015BC  38 A0 00 02 */	li r5, 2
/* 808015C0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 808015C4  4B FF C0 F9 */	bl anm_init__FP10e_yh_classifUcf
/* 808015C8  48 00 04 08 */	b lbl_808019D0
lbl_808015CC:
/* 808015CC  80 1C 10 8C */	lwz r0, 0x108c(r28)
/* 808015D0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 808015D4  41 82 03 FC */	beq lbl_808019D0
/* 808015D8  38 00 00 01 */	li r0, 1
/* 808015DC  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 808015E0  38 00 00 1E */	li r0, 0x1e
/* 808015E4  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 808015E8  7F 83 E3 78 */	mr r3, r28
/* 808015EC  38 80 00 10 */	li r4, 0x10
/* 808015F0  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 808015F4  38 A0 00 02 */	li r5, 2
/* 808015F8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 808015FC  4B FF C0 C1 */	bl anm_init__FP10e_yh_classifUcf
/* 80801600  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 80801604  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80801608  38 7C 12 5C */	addi r3, r28, 0x125c
/* 8080160C  38 9C 12 60 */	addi r4, r28, 0x1260
/* 80801610  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80801614  38 DC 04 E4 */	addi r6, r28, 0x4e4
/* 80801618  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8080161C  38 FC 01 0C */	addi r7, r28, 0x10c
/* 80801620  39 00 00 01 */	li r8, 1
/* 80801624  4B 81 B9 FC */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80801628  48 00 03 A8 */	b lbl_808019D0
lbl_8080162C:
/* 8080162C  38 00 00 01 */	li r0, 1
/* 80801630  98 1C 08 55 */	stb r0, 0x855(r28)
/* 80801634  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015E@ha */
/* 80801638  38 03 01 5E */	addi r0, r3, 0x015E /* 0x0007015E@l */
/* 8080163C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80801640  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80801644  38 81 00 18 */	addi r4, r1, 0x18
/* 80801648  38 A0 FF FF */	li r5, -1
/* 8080164C  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80801650  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80801654  7D 89 03 A6 */	mtctr r12
/* 80801658  4E 80 04 21 */	bctrl 
/* 8080165C  3B 40 00 00 */	li r26, 0
/* 80801660  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80801664  4B 95 DE 8C */	b setLookPos__9daPy_py_cFP4cXyz
/* 80801668  3B 20 00 00 */	li r25, 0
/* 8080166C  80 1C 08 D4 */	lwz r0, 0x8d4(r28)
/* 80801670  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80801674  90 1C 08 D4 */	stw r0, 0x8d4(r28)
/* 80801678  38 7C 10 60 */	addi r3, r28, 0x1060
/* 8080167C  7F A4 EB 78 */	mr r4, r29
/* 80801680  4B 87 54 2C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80801684  80 1C 10 8C */	lwz r0, 0x108c(r28)
/* 80801688  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8080168C  40 82 01 A8 */	bne lbl_80801834
/* 80801690  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80801694  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80801698  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 8080169C  41 82 01 98 */	beq lbl_80801834
/* 808016A0  A8 1C 06 98 */	lha r0, 0x698(r28)
/* 808016A4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 808016A8  40 82 00 24 */	bne lbl_808016CC
/* 808016AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808016B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808016B4  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 808016B8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 808016BC  EC 01 00 2A */	fadds f0, f1, f0
/* 808016C0  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 808016C4  38 00 00 00 */	li r0, 0
/* 808016C8  98 03 5E B6 */	stb r0, 0x5eb6(r3)
lbl_808016CC:
/* 808016CC  A8 1C 06 6C */	lha r0, 0x66c(r28)
/* 808016D0  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 808016D4  40 82 00 2C */	bne lbl_80801700
/* 808016D8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 808016DC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 808016E0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 808016E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 808016E8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 808016EC  38 7D 4C 9C */	addi r3, r29, 0x4c9c
/* 808016F0  38 80 00 03 */	li r4, 3
/* 808016F4  38 A0 00 1F */	li r5, 0x1f
/* 808016F8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 808016FC  4B 86 E3 28 */	b StartShock__12dVibration_cFii4cXyz
lbl_80801700:
/* 80801700  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80801704  A8 1C 08 62 */	lha r0, 0x862(r28)
/* 80801708  7C 03 02 14 */	add r0, r3, r0
/* 8080170C  7C 17 07 34 */	extsh r23, r0
/* 80801710  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80801714  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80801718  80 63 00 00 */	lwz r3, 0(r3)
/* 8080171C  7E E4 BB 78 */	mr r4, r23
/* 80801720  4B 80 AC BC */	b mDoMtx_YrotS__FPA4_fs
/* 80801724  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80801728  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8080172C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80801730  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80801734  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80801738  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8080173C  38 61 00 50 */	addi r3, r1, 0x50
/* 80801740  38 9C 06 78 */	addi r4, r28, 0x678
/* 80801744  4B A6 F7 A8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80801748  38 7C 06 78 */	addi r3, r28, 0x678
/* 8080174C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80801750  7C 65 1B 78 */	mr r5, r3
/* 80801754  4B B4 59 3C */	b PSVECAdd
/* 80801758  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8080175C  7E E4 BB 78 */	mr r4, r23
/* 80801760  38 A0 00 02 */	li r5, 2
/* 80801764  38 C0 20 00 */	li r6, 0x2000
/* 80801768  4B A6 EE A0 */	b cLib_addCalcAngleS2__FPssss
/* 8080176C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80801770  C0 3C 06 78 */	lfs f1, 0x678(r28)
/* 80801774  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80801778  C0 7C 06 90 */	lfs f3, 0x690(r28)
/* 8080177C  4B A6 E2 C0 */	b cLib_addCalc2__FPffff
/* 80801780  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 80801784  C0 3C 06 80 */	lfs f1, 0x680(r28)
/* 80801788  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080178C  C0 7C 06 90 */	lfs f3, 0x690(r28)
/* 80801790  4B A6 E2 AC */	b cLib_addCalc2__FPffff
/* 80801794  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 80801798  C0 3C 06 7C */	lfs f1, 0x67c(r28)
/* 8080179C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 808017A0  C0 7C 06 90 */	lfs f3, 0x690(r28)
/* 808017A4  4B A6 E2 98 */	b cLib_addCalc2__FPffff
/* 808017A8  38 7C 06 90 */	addi r3, r28, 0x690
/* 808017AC  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 808017B0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 808017B4  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 808017B8  4B A6 E2 84 */	b cLib_addCalc2__FPffff
/* 808017BC  A8 1C 06 6C */	lha r0, 0x66c(r28)
/* 808017C0  1C 00 2E E0 */	mulli r0, r0, 0x2ee0
/* 808017C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808017C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 808017CC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 808017D0  7C 43 04 2E */	lfsx f2, r3, r0
/* 808017D4  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 808017D8  A8 1C 08 64 */	lha r0, 0x864(r28)
/* 808017DC  C8 3E 00 A8 */	lfd f1, 0xa8(r30)
/* 808017E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 808017E4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 808017E8  3C 00 43 30 */	lis r0, 0x4330
/* 808017EC  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 808017F0  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 808017F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 808017F8  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 808017FC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80801800  EC 01 00 2A */	fadds f0, f1, f0
/* 80801804  FC 00 00 1E */	fctiwz f0, f0
/* 80801808  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 8080180C  80 81 00 BC */	lwz r4, 0xbc(r1)
/* 80801810  38 A0 00 02 */	li r5, 2
/* 80801814  38 C0 20 00 */	li r6, 0x2000
/* 80801818  4B A6 ED F0 */	b cLib_addCalcAngleS2__FPssss
/* 8080181C  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80801820  38 80 00 00 */	li r4, 0
/* 80801824  38 A0 00 02 */	li r5, 2
/* 80801828  38 C0 08 00 */	li r6, 0x800
/* 8080182C  4B A6 ED DC */	b cLib_addCalcAngleS2__FPssss
/* 80801830  48 00 01 A0 */	b lbl_808019D0
lbl_80801834:
/* 80801834  38 00 00 15 */	li r0, 0x15
/* 80801838  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 8080183C  38 00 00 1E */	li r0, 0x1e
/* 80801840  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 80801844  7F 83 E3 78 */	mr r3, r28
/* 80801848  38 80 00 11 */	li r4, 0x11
/* 8080184C  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80801850  38 A0 00 00 */	li r5, 0
/* 80801854  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80801858  4B FF BE 65 */	bl anm_init__FP10e_yh_classifUcf
/* 8080185C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015F@ha */
/* 80801860  38 03 01 5F */	addi r0, r3, 0x015F /* 0x0007015F@l */
/* 80801864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80801868  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8080186C  38 81 00 14 */	addi r4, r1, 0x14
/* 80801870  38 A0 FF FF */	li r5, -1
/* 80801874  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80801878  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8080187C  7D 89 03 A6 */	mtctr r12
/* 80801880  4E 80 04 21 */	bctrl 
/* 80801884  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80801888  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080188C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80801890  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80801894  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80801898  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8080189C  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 808018A0  90 03 05 70 */	stw r0, 0x570(r3)
/* 808018A4  48 00 01 2C */	b lbl_808019D0
lbl_808018A8:
/* 808018A8  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 808018AC  38 80 00 01 */	li r4, 1
/* 808018B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 808018B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 808018B8  40 82 00 18 */	bne lbl_808018D0
/* 808018BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 808018C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 808018C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 808018C8  41 82 00 08 */	beq lbl_808018D0
/* 808018CC  38 80 00 00 */	li r4, 0
lbl_808018D0:
/* 808018D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 808018D4  41 82 00 FC */	beq lbl_808019D0
/* 808018D8  7F 83 E3 78 */	mr r3, r28
/* 808018DC  38 80 00 10 */	li r4, 0x10
/* 808018E0  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 808018E4  38 A0 00 02 */	li r5, 2
/* 808018E8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 808018EC  4B FF BD D1 */	bl anm_init__FP10e_yh_classifUcf
/* 808018F0  38 00 00 01 */	li r0, 1
/* 808018F4  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 808018F8  48 00 00 D8 */	b lbl_808019D0
lbl_808018FC:
/* 808018FC  3B 00 00 00 */	li r24, 0
/* 80801900  3B 20 00 00 */	li r25, 0
/* 80801904  3B 40 00 00 */	li r26, 0
/* 80801908  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 8080190C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80801910  EC 20 F8 2A */	fadds f1, f0, f31
/* 80801914  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80801918  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 8080191C  4B A6 E1 20 */	b cLib_addCalc2__FPffff
/* 80801920  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 80801924  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80801928  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 8080192C  4B A6 E1 54 */	b cLib_addCalc0__FPfff
/* 80801930  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80801934  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 80801938  EC 01 00 2A */	fadds f0, f1, f0
/* 8080193C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80801940  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 80801944  A8 9C 08 64 */	lha r4, 0x864(r28)
/* 80801948  38 A0 00 02 */	li r5, 2
/* 8080194C  38 C0 08 00 */	li r6, 0x800
/* 80801950  4B A6 EC B8 */	b cLib_addCalcAngleS2__FPssss
/* 80801954  38 7C 08 52 */	addi r3, r28, 0x852
/* 80801958  38 80 00 00 */	li r4, 0
/* 8080195C  38 A0 00 01 */	li r5, 1
/* 80801960  38 C0 00 96 */	li r6, 0x96
/* 80801964  4B A6 EC A4 */	b cLib_addCalcAngleS2__FPssss
/* 80801968  A8 1C 06 6C */	lha r0, 0x66c(r28)
/* 8080196C  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80801970  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80801974  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80801978  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8080197C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80801980  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80801984  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80801988  EC 00 00 72 */	fmuls f0, f0, f1
/* 8080198C  FC 00 00 1E */	fctiwz f0, f0
/* 80801990  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80801994  80 81 00 BC */	lwz r4, 0xbc(r1)
/* 80801998  38 A0 00 02 */	li r5, 2
/* 8080199C  38 C0 08 00 */	li r6, 0x800
/* 808019A0  4B A6 EC 68 */	b cLib_addCalcAngleS2__FPssss
/* 808019A4  A8 1C 06 98 */	lha r0, 0x698(r28)
/* 808019A8  2C 00 00 00 */	cmpwi r0, 0
/* 808019AC  40 82 00 24 */	bne lbl_808019D0
/* 808019B0  7F 83 E3 78 */	mr r3, r28
/* 808019B4  4B FF BB 61 */	bl yh_disappear__FP10e_yh_class
/* 808019B8  A0 9C 04 94 */	lhz r4, 0x494(r28)
/* 808019BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808019C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808019C4  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 808019C8  7C 05 07 74 */	extsb r5, r0
/* 808019CC  4B 83 3C 78 */	b onActor__10dSv_info_cFii
lbl_808019D0:
/* 808019D0  7F 20 07 75 */	extsb. r0, r25
/* 808019D4  41 82 01 F8 */	beq lbl_80801BCC
/* 808019D8  7F 20 07 74 */	extsb r0, r25
/* 808019DC  2C 00 00 02 */	cmpwi r0, 2
/* 808019E0  40 82 00 98 */	bne lbl_80801A78
/* 808019E4  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 808019E8  38 80 00 00 */	li r4, 0
/* 808019EC  38 A0 00 02 */	li r5, 2
/* 808019F0  38 C0 08 00 */	li r6, 0x800
/* 808019F4  4B A6 EC 14 */	b cLib_addCalcAngleS2__FPssss
/* 808019F8  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 808019FC  38 80 00 00 */	li r4, 0
/* 80801A00  38 A0 00 02 */	li r5, 2
/* 80801A04  38 C0 08 00 */	li r6, 0x800
/* 80801A08  4B A6 EC 00 */	b cLib_addCalcAngleS2__FPssss
/* 80801A0C  A8 1C 06 9A */	lha r0, 0x69a(r28)
/* 80801A10  2C 00 00 0A */	cmpwi r0, 0xa
/* 80801A14  40 80 00 18 */	bge lbl_80801A2C
/* 80801A18  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80801A1C  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 80801A20  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80801A24  FC 60 10 90 */	fmr f3, f2
/* 80801A28  4B A6 E0 14 */	b cLib_addCalc2__FPffff
lbl_80801A2C:
/* 80801A2C  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 80801A30  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80801A34  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80801A38  EC 20 00 72 */	fmuls f1, f0, f1
/* 80801A3C  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80801A40  EC 01 00 24 */	fdivs f0, f1, f0
/* 80801A44  FC 00 00 1E */	fctiwz f0, f0
/* 80801A48  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80801A4C  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80801A50  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80801A54  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80801A58  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80801A5C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80801A60  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 80801A64  EC 00 00 72 */	fmuls f0, f0, f1
/* 80801A68  FC 00 00 1E */	fctiwz f0, f0
/* 80801A6C  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 80801A70  80 81 00 B4 */	lwz r4, 0xb4(r1)
/* 80801A74  48 00 00 08 */	b lbl_80801A7C
lbl_80801A78:
/* 80801A78  38 80 00 00 */	li r4, 0
lbl_80801A7C:
/* 80801A7C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80801A80  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80801A84  80 63 00 00 */	lwz r3, 0(r3)
/* 80801A88  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80801A8C  7C 04 02 14 */	add r0, r4, r0
/* 80801A90  7C 04 07 34 */	extsh r4, r0
/* 80801A94  4B 80 A9 48 */	b mDoMtx_YrotS__FPA4_fs
/* 80801A98  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80801A9C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80801AA0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80801AA4  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80801AA8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80801AAC  38 61 00 50 */	addi r3, r1, 0x50
/* 80801AB0  38 81 00 44 */	addi r4, r1, 0x44
/* 80801AB4  4B A6 F4 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 80801AB8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80801ABC  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80801AC0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80801AC4  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80801AC8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80801ACC  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 80801AD0  7C 65 1B 78 */	mr r5, r3
/* 80801AD4  4B B4 55 BC */	b PSVECAdd
/* 80801AD8  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80801ADC  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80801AE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80801AE4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80801AE8  C0 3C 08 5C */	lfs f1, 0x85c(r28)
/* 80801AEC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80801AF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80801AF4  40 81 00 48 */	ble lbl_80801B3C
/* 80801AF8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80801AFC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80801B00  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80801B04  FC 00 08 50 */	fneg f0, f1
/* 80801B08  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80801B0C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80801B10  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80801B14  80 63 00 00 */	lwz r3, 0(r3)
/* 80801B18  A8 9C 08 60 */	lha r4, 0x860(r28)
/* 80801B1C  4B 80 A8 C0 */	b mDoMtx_YrotS__FPA4_fs
/* 80801B20  38 61 00 50 */	addi r3, r1, 0x50
/* 80801B24  38 81 00 44 */	addi r4, r1, 0x44
/* 80801B28  4B A6 F3 C4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80801B2C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80801B30  38 81 00 44 */	addi r4, r1, 0x44
/* 80801B34  7C 65 1B 78 */	mr r5, r3
/* 80801B38  4B B4 55 58 */	b PSVECAdd
lbl_80801B3C:
/* 80801B3C  34 7C 08 6C */	addic. r3, r28, 0x86c
/* 80801B40  41 82 00 34 */	beq lbl_80801B74
/* 80801B44  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80801B48  C0 03 00 00 */	lfs f0, 0(r3)
/* 80801B4C  EC 01 00 2A */	fadds f0, f1, f0
/* 80801B50  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80801B54  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80801B58  C0 03 00 04 */	lfs f0, 4(r3)
/* 80801B5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80801B60  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80801B64  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80801B68  C0 03 00 08 */	lfs f0, 8(r3)
/* 80801B6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80801B70  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_80801B74:
/* 80801B74  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80801B78  C0 1C 06 94 */	lfs f0, 0x694(r28)
/* 80801B7C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80801B80  3C 60 80 80 */	lis r3, l_HIO@ha
/* 80801B84  38 63 47 28 */	addi r3, r3, l_HIO@l
/* 80801B88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80801B8C  EF C1 00 32 */	fmuls f30, f1, f0
/* 80801B90  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80801B94  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80801B98  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80801B9C  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 80801BA0  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80801BA4  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80801BA8  38 7C 10 60 */	addi r3, r28, 0x1060
/* 80801BAC  7F A4 EB 78 */	mr r4, r29
/* 80801BB0  4B 87 4E FC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80801BB4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80801BB8  EC 00 F0 2A */	fadds f0, f0, f30
/* 80801BBC  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80801BC0  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 80801BC4  EC 00 F0 2A */	fadds f0, f0, f30
/* 80801BC8  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
lbl_80801BCC:
/* 80801BCC  7F 00 07 75 */	extsb. r0, r24
/* 80801BD0  41 82 01 08 */	beq lbl_80801CD8
/* 80801BD4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80801BD8  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80801BDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80801BE0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80801BE4  40 80 00 F4 */	bge lbl_80801CD8
/* 80801BE8  38 00 00 32 */	li r0, 0x32
/* 80801BEC  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80801BF0  7F 83 E3 78 */	mr r3, r28
/* 80801BF4  38 80 00 0F */	li r4, 0xf
/* 80801BF8  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80801BFC  38 A0 00 00 */	li r5, 0
/* 80801C00  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80801C04  4B FF BA B9 */	bl anm_init__FP10e_yh_classifUcf
/* 80801C08  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070086@ha */
/* 80801C0C  38 03 00 86 */	addi r0, r3, 0x0086 /* 0x00070086@l */
/* 80801C10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80801C14  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80801C18  38 81 00 10 */	addi r4, r1, 0x10
/* 80801C1C  38 A0 FF FF */	li r5, -1
/* 80801C20  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80801C24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80801C28  7D 89 03 A6 */	mtctr r12
/* 80801C2C  4E 80 04 21 */	bctrl 
/* 80801C30  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80801C34  80 03 05 88 */	lwz r0, 0x588(r3)
/* 80801C38  64 00 01 00 */	oris r0, r0, 0x100
/* 80801C3C  90 03 05 88 */	stw r0, 0x588(r3)
/* 80801C40  38 00 00 C8 */	li r0, 0xc8
/* 80801C44  B0 1C 06 9E */	sth r0, 0x69e(r28)
/* 80801C48  38 00 00 50 */	li r0, 0x50
/* 80801C4C  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 80801C50  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80801C54  4B A6 5D 00 */	b cM_rndF__Ff
/* 80801C58  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80801C5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80801C60  40 80 00 10 */	bge lbl_80801C70
/* 80801C64  38 00 40 00 */	li r0, 0x4000
/* 80801C68  B0 1C 08 64 */	sth r0, 0x864(r28)
/* 80801C6C  48 00 00 0C */	b lbl_80801C78
lbl_80801C70:
/* 80801C70  38 00 C0 00 */	li r0, -16384
/* 80801C74  B0 1C 08 64 */	sth r0, 0x864(r28)
lbl_80801C78:
/* 80801C78  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80801C7C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80801C80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80801C84  40 80 00 10 */	bge lbl_80801C94
/* 80801C88  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80801C8C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80801C90  48 00 00 0C */	b lbl_80801C9C
lbl_80801C94:
/* 80801C94  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80801C98  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_80801C9C:
/* 80801C9C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80801CA0  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 80801CA4  38 80 00 00 */	li r4, 0
/* 80801CA8  4B 81 DB D4 */	b fopKyM_createWpillar__FPC4cXyzfi
/* 80801CAC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80801CB0  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80801CB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80801CB8  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80801CBC  38 81 00 0C */	addi r4, r1, 0xc
/* 80801CC0  38 A0 00 00 */	li r5, 0
/* 80801CC4  38 C0 FF FF */	li r6, -1
/* 80801CC8  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80801CCC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80801CD0  7D 89 03 A6 */	mtctr r12
/* 80801CD4  4E 80 04 21 */	bctrl 
lbl_80801CD8:
/* 80801CD8  38 61 00 5C */	addi r3, r1, 0x5c
/* 80801CDC  38 80 FF FF */	li r4, -1
/* 80801CE0  4B 87 5B 68 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80801CE4  7F 43 D3 78 */	mr r3, r26
/* 80801CE8  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80801CEC  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80801CF0  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 80801CF4  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80801CF8  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80801CFC  4B B6 05 14 */	b _restgpr_23
/* 80801D00  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80801D04  7C 08 03 A6 */	mtlr r0
/* 80801D08  38 21 01 10 */	addi r1, r1, 0x110
/* 80801D0C  4E 80 00 20 */	blr 
