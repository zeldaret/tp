lbl_807455F4:
/* 807455F4  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 807455F8  7C 08 02 A6 */	mflr r0
/* 807455FC  90 01 01 84 */	stw r0, 0x184(r1)
/* 80745600  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 80745604  F3 E1 01 78 */	psq_st f31, 376(r1), 0, 0 /* qr0 */
/* 80745608  DB C1 01 60 */	stfd f30, 0x160(r1)
/* 8074560C  F3 C1 01 68 */	psq_st f30, 360(r1), 0, 0 /* qr0 */
/* 80745610  DB A1 01 50 */	stfd f29, 0x150(r1)
/* 80745614  F3 A1 01 58 */	psq_st f29, 344(r1), 0, 0 /* qr0 */
/* 80745618  DB 81 01 40 */	stfd f28, 0x140(r1)
/* 8074561C  F3 81 01 48 */	psq_st f28, 328(r1), 0, 0 /* qr0 */
/* 80745620  39 61 01 40 */	addi r11, r1, 0x140
/* 80745624  4B C1 CB A8 */	b _savegpr_25
/* 80745628  7C 7B 1B 78 */	mr r27, r3
/* 8074562C  3C 60 80 75 */	lis r3, lit_3910@ha
/* 80745630  3B E3 BF 3C */	addi r31, r3, lit_3910@l
/* 80745634  3C 60 80 75 */	lis r3, data_8074C3E8@ha
/* 80745638  38 63 C3 E8 */	addi r3, r3, data_8074C3E8@l
/* 8074563C  A8 63 00 00 */	lha r3, 0(r3)
/* 80745640  3C 63 00 01 */	addis r3, r3, 1
/* 80745644  38 03 80 00 */	addi r0, r3, -32768
/* 80745648  B0 1B 06 02 */	sth r0, 0x602(r27)
/* 8074564C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80745650  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80745654  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80745658  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8074565C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80745660  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80745664  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80745668  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8074566C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80745670  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80745674  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80745678  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8074567C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80745680  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80745684  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80745688  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8074568C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80745690  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80745694  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80745698  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8074569C  4B 8C 76 C8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 807456A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807456A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807456A8  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 807456AC  4B 8C 6D 88 */	b mDoMtx_YrotM__FPA4_fs
/* 807456B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807456B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807456B8  38 81 00 44 */	addi r4, r1, 0x44
/* 807456BC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 807456C0  4B C0 16 AC */	b PSMTXMultVec
/* 807456C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807456C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807456CC  38 81 00 14 */	addi r4, r1, 0x14
/* 807456D0  38 A1 00 20 */	addi r5, r1, 0x20
/* 807456D4  4B C0 16 98 */	b PSMTXMultVec
/* 807456D8  3B 21 00 C0 */	addi r25, r1, 0xc0
/* 807456DC  7F 23 CB 78 */	mr r3, r25
/* 807456E0  4B 93 1E 9C */	b __ct__11dBgS_GndChkFv
/* 807456E4  3C 60 80 75 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 807456E8  38 63 C2 EC */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 807456EC  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 807456F0  3B C3 00 0C */	addi r30, r3, 0xc
/* 807456F4  93 C1 00 E0 */	stw r30, 0xe0(r1)
/* 807456F8  3B A3 00 18 */	addi r29, r3, 0x18
/* 807456FC  93 A1 00 FC */	stw r29, 0xfc(r1)
/* 80745700  3B 83 00 24 */	addi r28, r3, 0x24
/* 80745704  93 81 01 0C */	stw r28, 0x10c(r1)
/* 80745708  38 79 00 3C */	addi r3, r25, 0x3c
/* 8074570C  4B 93 37 5C */	b SetObj__16dBgS_PolyPassChkFv
/* 80745710  38 61 00 50 */	addi r3, r1, 0x50
/* 80745714  4B 93 25 54 */	b __ct__11dBgS_LinChkFv
/* 80745718  7F 23 CB 78 */	mr r3, r25
/* 8074571C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80745720  4B B2 26 08 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80745724  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80745728  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8074572C  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 80745730  7F 43 D3 78 */	mr r3, r26
/* 80745734  7F 24 CB 78 */	mr r4, r25
/* 80745738  4B 92 ED 68 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8074573C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80745740  7F 23 CB 78 */	mr r3, r25
/* 80745744  38 81 00 20 */	addi r4, r1, 0x20
/* 80745748  4B B2 25 E0 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8074574C  7F 43 D3 78 */	mr r3, r26
/* 80745750  7F 24 CB 78 */	mr r4, r25
/* 80745754  4B 92 ED 4C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80745758  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8074575C  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80745760  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80745764  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80745768  41 82 01 1C */	beq lbl_80745884
/* 8074576C  C0 7B 04 D4 */	lfs f3, 0x4d4(r27)
/* 80745770  EC 03 10 28 */	fsubs f0, f3, f2
/* 80745774  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80745778  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8074577C  40 81 00 E8 */	ble lbl_80745864
/* 80745780  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80745784  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80745788  D0 1B 06 0C */	stfs f0, 0x60c(r27)
/* 8074578C  7F 63 DB 78 */	mr r3, r27
/* 80745790  38 80 00 16 */	li r4, 0x16
/* 80745794  38 A0 00 02 */	li r5, 2
/* 80745798  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8074579C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807457A0  4B FF CE D5 */	bl SetAnm__8daE_PM_cFiiff
/* 807457A4  3B 20 00 00 */	li r25, 0
/* 807457A8  C3 9F 00 04 */	lfs f28, 4(r31)
/* 807457AC  C3 BF 00 F0 */	lfs f29, 0xf0(r31)
/* 807457B0  C3 DF 00 38 */	lfs f30, 0x38(r31)
/* 807457B4  C3 FF 01 60 */	lfs f31, 0x160(r31)
lbl_807457B8:
/* 807457B8  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 807457BC  38 19 00 01 */	addi r0, r25, 1
/* 807457C0  54 00 70 22 */	slwi r0, r0, 0xe
/* 807457C4  7C 03 02 14 */	add r0, r3, r0
/* 807457C8  B0 1B 06 02 */	sth r0, 0x602(r27)
/* 807457CC  D3 81 00 44 */	stfs f28, 0x44(r1)
/* 807457D0  D3 A1 00 48 */	stfs f29, 0x48(r1)
/* 807457D4  D3 C1 00 4C */	stfs f30, 0x4c(r1)
/* 807457D8  D3 81 00 08 */	stfs f28, 8(r1)
/* 807457DC  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 807457E0  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 807457E4  38 61 00 38 */	addi r3, r1, 0x38
/* 807457E8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807457EC  A8 BB 06 02 */	lha r5, 0x602(r27)
/* 807457F0  38 C1 00 44 */	addi r6, r1, 0x44
/* 807457F4  4B B2 B5 CC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807457F8  38 61 00 14 */	addi r3, r1, 0x14
/* 807457FC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80745800  A8 BB 06 02 */	lha r5, 0x602(r27)
/* 80745804  38 C1 00 08 */	addi r6, r1, 8
/* 80745808  4B B2 B5 B8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8074580C  38 61 00 50 */	addi r3, r1, 0x50
/* 80745810  38 81 00 38 */	addi r4, r1, 0x38
/* 80745814  38 A1 00 14 */	addi r5, r1, 0x14
/* 80745818  38 C0 00 00 */	li r6, 0
/* 8074581C  4B 93 25 48 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80745820  7F 43 D3 78 */	mr r3, r26
/* 80745824  38 81 00 50 */	addi r4, r1, 0x50
/* 80745828  4B 92 EB 8C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8074582C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80745830  40 82 00 10 */	bne lbl_80745840
/* 80745834  3B 39 00 01 */	addi r25, r25, 1
/* 80745838  2C 19 00 04 */	cmpwi r25, 4
/* 8074583C  41 80 FF 7C */	blt lbl_807457B8
lbl_80745840:
/* 80745840  38 00 00 0A */	li r0, 0xa
/* 80745844  98 1B 06 11 */	stb r0, 0x611(r27)
/* 80745848  7F 63 DB 78 */	mr r3, r27
/* 8074584C  38 80 00 16 */	li r4, 0x16
/* 80745850  38 A0 00 02 */	li r5, 2
/* 80745854  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80745858  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074585C  4B FF CE 19 */	bl SetAnm__8daE_PM_cFiiff
/* 80745860  48 00 00 30 */	b lbl_80745890
lbl_80745864:
/* 80745864  FC 00 08 18 */	frsp f0, f1
/* 80745868  EC 03 00 28 */	fsubs f0, f3, f0
/* 8074586C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80745870  40 81 00 20 */	ble lbl_80745890
/* 80745874  3C 60 80 75 */	lis r3, data_8074C3E8@ha
/* 80745878  A8 03 C3 E8 */	lha r0, data_8074C3E8@l(r3)
/* 8074587C  B0 1B 06 02 */	sth r0, 0x602(r27)
/* 80745880  48 00 00 10 */	b lbl_80745890
lbl_80745884:
/* 80745884  3C 60 80 75 */	lis r3, data_8074C3E8@ha
/* 80745888  A8 03 C3 E8 */	lha r0, data_8074C3E8@l(r3)
/* 8074588C  B0 1B 06 02 */	sth r0, 0x602(r27)
lbl_80745890:
/* 80745890  38 61 00 50 */	addi r3, r1, 0x50
/* 80745894  38 80 FF FF */	li r4, -1
/* 80745898  4B 93 24 44 */	b __dt__11dBgS_LinChkFv
/* 8074589C  3C 60 80 75 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 807458A0  38 03 C2 EC */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 807458A4  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 807458A8  93 C1 00 E0 */	stw r30, 0xe0(r1)
/* 807458AC  93 A1 00 FC */	stw r29, 0xfc(r1)
/* 807458B0  93 81 01 0C */	stw r28, 0x10c(r1)
/* 807458B4  38 61 00 C0 */	addi r3, r1, 0xc0
/* 807458B8  38 80 00 00 */	li r4, 0
/* 807458BC  4B 93 1D 34 */	b __dt__11dBgS_GndChkFv
/* 807458C0  E3 E1 01 78 */	psq_l f31, 376(r1), 0, 0 /* qr0 */
/* 807458C4  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 807458C8  E3 C1 01 68 */	psq_l f30, 360(r1), 0, 0 /* qr0 */
/* 807458CC  CB C1 01 60 */	lfd f30, 0x160(r1)
/* 807458D0  E3 A1 01 58 */	psq_l f29, 344(r1), 0, 0 /* qr0 */
/* 807458D4  CB A1 01 50 */	lfd f29, 0x150(r1)
/* 807458D8  E3 81 01 48 */	psq_l f28, 328(r1), 0, 0 /* qr0 */
/* 807458DC  CB 81 01 40 */	lfd f28, 0x140(r1)
/* 807458E0  39 61 01 40 */	addi r11, r1, 0x140
/* 807458E4  4B C1 C9 34 */	b _restgpr_25
/* 807458E8  80 01 01 84 */	lwz r0, 0x184(r1)
/* 807458EC  7C 08 03 A6 */	mtlr r0
/* 807458F0  38 21 01 80 */	addi r1, r1, 0x180
/* 807458F4  4E 80 00 20 */	blr 
