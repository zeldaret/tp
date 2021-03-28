lbl_80CB7B84:
/* 80CB7B84  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80CB7B88  7C 08 02 A6 */	mflr r0
/* 80CB7B8C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CB7B90  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80CB7B94  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80CB7B98  39 61 00 70 */	addi r11, r1, 0x70
/* 80CB7B9C  4B 6A A6 30 */	b _savegpr_25
/* 80CB7BA0  7C 79 1B 78 */	mr r25, r3
/* 80CB7BA4  7C BA 2B 78 */	mr r26, r5
/* 80CB7BA8  3C 60 80 CC */	lis r3, m__21daObj_Pumpkin_Param_c@ha
/* 80CB7BAC  3B A3 83 70 */	addi r29, r3, m__21daObj_Pumpkin_Param_c@l
/* 80CB7BB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB7BB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB7BB8  4B 35 48 24 */	b mDoMtx_YrotS__FPA4_fs
/* 80CB7BBC  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80CB7BC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CB7BC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CB7BC8  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 80CB7BCC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CB7BD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB7BD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB7BD8  38 81 00 14 */	addi r4, r1, 0x14
/* 80CB7BDC  38 A1 00 20 */	addi r5, r1, 0x20
/* 80CB7BE0  4B 68 F1 8C */	b PSMTXMultVec
/* 80CB7BE4  38 61 00 20 */	addi r3, r1, 0x20
/* 80CB7BE8  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80CB7BEC  7C 65 1B 78 */	mr r5, r3
/* 80CB7BF0  4B 68 F4 A0 */	b PSVECAdd
/* 80CB7BF4  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80CB7BF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CB7BFC  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80CB7C00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CB7C04  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 80CB7C08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CB7C0C  3B 60 00 00 */	li r27, 0
/* 80CB7C10  3B E0 00 00 */	li r31, 0
/* 80CB7C14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB7C18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB7C1C  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80CB7C20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB7C24  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 80CB7C28  C3 FD 00 7C */	lfs f31, 0x7c(r29)
lbl_80CB7C2C:
/* 80CB7C2C  7F C3 F3 78 */	mr r3, r30
/* 80CB7C30  38 81 00 14 */	addi r4, r1, 0x14
/* 80CB7C34  3B A1 00 2C */	addi r29, r1, 0x2c
/* 80CB7C38  7F BD FA 14 */	add r29, r29, r31
/* 80CB7C3C  7F A5 EB 78 */	mr r5, r29
/* 80CB7C40  4B 68 F1 2C */	b PSMTXMultVec
/* 80CB7C44  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CB7C48  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80CB7C4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CB7C50  7F A3 EB 78 */	mr r3, r29
/* 80CB7C54  38 81 00 20 */	addi r4, r1, 0x20
/* 80CB7C58  7F A5 EB 78 */	mr r5, r29
/* 80CB7C5C  4B 68 F4 34 */	b PSVECAdd
/* 80CB7C60  38 79 0A A8 */	addi r3, r25, 0xaa8
/* 80CB7C64  38 81 00 20 */	addi r4, r1, 0x20
/* 80CB7C68  7F A5 EB 78 */	mr r5, r29
/* 80CB7C6C  7F 26 CB 78 */	mr r6, r25
/* 80CB7C70  4B 3C 00 F4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80CB7C74  7F 83 E3 78 */	mr r3, r28
/* 80CB7C78  38 99 0A A8 */	addi r4, r25, 0xaa8
/* 80CB7C7C  4B 3B C7 38 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80CB7C80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CB7C84  41 82 00 20 */	beq lbl_80CB7CA4
/* 80CB7C88  C0 19 0A D8 */	lfs f0, 0xad8(r25)
/* 80CB7C8C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80CB7C90  C0 19 0A DC */	lfs f0, 0xadc(r25)
/* 80CB7C94  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80CB7C98  C0 19 0A E0 */	lfs f0, 0xae0(r25)
/* 80CB7C9C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80CB7CA0  48 00 00 0C */	b lbl_80CB7CAC
lbl_80CB7CA4:
/* 80CB7CA4  38 60 00 00 */	li r3, 0
/* 80CB7CA8  48 00 00 4C */	b lbl_80CB7CF4
lbl_80CB7CAC:
/* 80CB7CAC  3B 7B 00 01 */	addi r27, r27, 1
/* 80CB7CB0  2C 1B 00 02 */	cmpwi r27, 2
/* 80CB7CB4  3B FF 00 0C */	addi r31, r31, 0xc
/* 80CB7CB8  41 80 FF 74 */	blt lbl_80CB7C2C
/* 80CB7CBC  38 61 00 08 */	addi r3, r1, 8
/* 80CB7CC0  38 81 00 38 */	addi r4, r1, 0x38
/* 80CB7CC4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80CB7CC8  4B 5A EE 6C */	b __mi__4cXyzCFRC3Vec
/* 80CB7CCC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80CB7CD0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CB7CD4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CB7CD8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CB7CDC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80CB7CE0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80CB7CE4  4B 5A F9 90 */	b cM_atan2s__Fff
/* 80CB7CE8  38 03 40 00 */	addi r0, r3, 0x4000
/* 80CB7CEC  B0 1A 00 00 */	sth r0, 0(r26)
/* 80CB7CF0  38 60 00 01 */	li r3, 1
lbl_80CB7CF4:
/* 80CB7CF4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80CB7CF8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80CB7CFC  39 61 00 70 */	addi r11, r1, 0x70
/* 80CB7D00  4B 6A A5 18 */	b _restgpr_25
/* 80CB7D04  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80CB7D08  7C 08 03 A6 */	mtlr r0
/* 80CB7D0C  38 21 00 80 */	addi r1, r1, 0x80
/* 80CB7D10  4E 80 00 20 */	blr 
