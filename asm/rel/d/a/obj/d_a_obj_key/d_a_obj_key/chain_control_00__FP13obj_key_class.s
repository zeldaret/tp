lbl_80C3F728:
/* 80C3F728  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80C3F72C  7C 08 02 A6 */	mflr r0
/* 80C3F730  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80C3F734  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80C3F738  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80C3F73C  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80C3F740  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 80C3F744  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 80C3F748  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 80C3F74C  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 80C3F750  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 80C3F754  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80C3F758  4B 72 2A 69 */	bl _savegpr_22
/* 80C3F75C  7C 7C 1B 78 */	mr r28, r3
/* 80C3F760  3C 60 80 C4 */	lis r3, lit_3778@ha /* 0x80C40FEC@ha */
/* 80C3F764  3B E3 0F EC */	addi r31, r3, lit_3778@l /* 0x80C40FEC@l */
/* 80C3F768  A8 1C 06 0C */	lha r0, 0x60c(r28)
/* 80C3F76C  2C 00 00 01 */	cmpwi r0, 1
/* 80C3F770  41 82 00 A0 */	beq lbl_80C3F810
/* 80C3F774  40 80 00 10 */	bge lbl_80C3F784
/* 80C3F778  2C 00 00 00 */	cmpwi r0, 0
/* 80C3F77C  40 80 00 14 */	bge lbl_80C3F790
/* 80C3F780  48 00 01 08 */	b lbl_80C3F888
lbl_80C3F784:
/* 80C3F784  2C 00 00 03 */	cmpwi r0, 3
/* 80C3F788  40 80 01 00 */	bge lbl_80C3F888
/* 80C3F78C  48 00 00 D4 */	b lbl_80C3F860
lbl_80C3F790:
/* 80C3F790  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 80C3F794  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C3F798  41 82 00 5C */	beq lbl_80C3F7F4
/* 80C3F79C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C3F7A0  4B 62 81 ED */	bl cM_rndFX__Ff
/* 80C3F7A4  D0 3C 04 F8 */	stfs f1, 0x4f8(r28)
/* 80C3F7A8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C3F7AC  4B 62 81 E1 */	bl cM_rndFX__Ff
/* 80C3F7B0  D0 3C 05 00 */	stfs f1, 0x500(r28)
/* 80C3F7B4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C3F7B8  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C3F7BC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060010@ha */
/* 80C3F7C0  38 03 00 10 */	addi r0, r3, 0x0010 /* 0x00060010@l */
/* 80C3F7C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C3F7C8  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 80C3F7CC  38 81 00 0C */	addi r4, r1, 0xc
/* 80C3F7D0  38 A0 00 00 */	li r5, 0
/* 80C3F7D4  38 C0 FF FF */	li r6, -1
/* 80C3F7D8  81 9C 05 F8 */	lwz r12, 0x5f8(r28)
/* 80C3F7DC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C3F7E0  7D 89 03 A6 */	mtctr r12
/* 80C3F7E4  4E 80 04 21 */	bctrl 
/* 80C3F7E8  A8 7C 06 0C */	lha r3, 0x60c(r28)
/* 80C3F7EC  38 03 00 01 */	addi r0, r3, 1
/* 80C3F7F0  B0 1C 06 0C */	sth r0, 0x60c(r28)
lbl_80C3F7F4:
/* 80C3F7F4  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80C3F7F8  38 03 02 00 */	addi r0, r3, 0x200
/* 80C3F7FC  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80C3F800  A8 7C 04 E4 */	lha r3, 0x4e4(r28)
/* 80C3F804  38 03 09 00 */	addi r0, r3, 0x900
/* 80C3F808  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80C3F80C  48 00 00 7C */	b lbl_80C3F888
lbl_80C3F810:
/* 80C3F810  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 80C3F814  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C3F818  41 82 00 48 */	beq lbl_80C3F860
/* 80C3F81C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C3F820  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80C3F824  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80C3F828  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060010@ha */
/* 80C3F82C  38 03 00 10 */	addi r0, r3, 0x0010 /* 0x00060010@l */
/* 80C3F830  90 01 00 08 */	stw r0, 8(r1)
/* 80C3F834  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 80C3F838  38 81 00 08 */	addi r4, r1, 8
/* 80C3F83C  38 A0 00 00 */	li r5, 0
/* 80C3F840  38 C0 FF FF */	li r6, -1
/* 80C3F844  81 9C 05 F8 */	lwz r12, 0x5f8(r28)
/* 80C3F848  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C3F84C  7D 89 03 A6 */	mtctr r12
/* 80C3F850  4E 80 04 21 */	bctrl 
/* 80C3F854  A8 7C 06 0C */	lha r3, 0x60c(r28)
/* 80C3F858  38 03 00 01 */	addi r0, r3, 1
/* 80C3F85C  B0 1C 06 0C */	sth r0, 0x60c(r28)
lbl_80C3F860:
/* 80C3F860  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80C3F864  38 80 00 00 */	li r4, 0
/* 80C3F868  38 A0 00 01 */	li r5, 1
/* 80C3F86C  38 C0 10 00 */	li r6, 0x1000
/* 80C3F870  4B 63 0D 99 */	bl cLib_addCalcAngleS2__FPssss
/* 80C3F874  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 80C3F878  38 80 00 00 */	li r4, 0
/* 80C3F87C  38 A0 00 01 */	li r5, 1
/* 80C3F880  38 C0 10 00 */	li r6, 0x1000
/* 80C3F884  4B 63 0D 85 */	bl cLib_addCalcAngleS2__FPssss
lbl_80C3F888:
/* 80C3F888  38 61 00 34 */	addi r3, r1, 0x34
/* 80C3F88C  4B 43 7C F1 */	bl __ct__11dBgS_GndChkFv
/* 80C3F890  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C3F894  D0 1C 05 88 */	stfs f0, 0x588(r28)
/* 80C3F898  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C3F89C  D0 1C 05 8C */	stfs f0, 0x58c(r28)
/* 80C3F8A0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80C3F8A4  D0 1C 05 90 */	stfs f0, 0x590(r28)
/* 80C3F8A8  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 80C3F8AC  B0 1C 05 CA */	sth r0, 0x5ca(r28)
/* 80C3F8B0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80C3F8B4  B0 1C 05 CC */	sth r0, 0x5cc(r28)
/* 80C3F8B8  A8 1C 04 E8 */	lha r0, 0x4e8(r28)
/* 80C3F8BC  B0 1C 05 CE */	sth r0, 0x5ce(r28)
/* 80C3F8C0  C3 FF 00 14 */	lfs f31, 0x14(r31)
/* 80C3F8C4  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 80C3F8C8  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80C3F8CC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C3F8D0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C3F8D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3F8D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3F8DC  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80C3F8E0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C3F8E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C3F8E8  3B 03 07 68 */	addi r24, r3, calc_mtx@l /* 0x80450768@l */
/* 80C3F8EC  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 80C3F8F0  3A E3 0C D8 */	addi r23, r3, g_Counter@l /* 0x80430CD8@l */
/* 80C3F8F4  C0 5C 05 7C */	lfs f2, 0x57c(r28)
/* 80C3F8F8  C0 3C 05 88 */	lfs f1, 0x588(r28)
/* 80C3F8FC  EF C2 08 28 */	fsubs f30, f2, f1
/* 80C3F900  C0 5C 05 84 */	lfs f2, 0x584(r28)
/* 80C3F904  C0 3C 05 90 */	lfs f1, 0x590(r28)
/* 80C3F908  EF 82 08 28 */	fsubs f28, f2, f1
/* 80C3F90C  C0 3C 05 80 */	lfs f1, 0x580(r28)
/* 80C3F910  EC 21 00 2A */	fadds f1, f1, f0
/* 80C3F914  C0 1C 05 D8 */	lfs f0, 0x5d8(r28)
/* 80C3F918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3F91C  4C 40 13 82 */	cror 2, 0, 2
/* 80C3F920  40 82 00 08 */	bne lbl_80C3F928
/* 80C3F924  FC 20 00 90 */	fmr f1, f0
lbl_80C3F928:
/* 80C3F928  C0 1C 05 8C */	lfs f0, 0x58c(r28)
/* 80C3F92C  EF A1 00 28 */	fsubs f29, f1, f0
/* 80C3F930  FC 20 F0 90 */	fmr f1, f30
/* 80C3F934  FC 40 E0 90 */	fmr f2, f28
/* 80C3F938  4B 62 7D 3D */	bl cM_atan2s__Fff
/* 80C3F93C  7C 7A 07 34 */	extsh r26, r3
/* 80C3F940  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 80C3F944  EC 1C 07 32 */	fmuls f0, f28, f28
/* 80C3F948  EC 41 00 2A */	fadds f2, f1, f0
/* 80C3F94C  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 80C3F950  40 81 00 0C */	ble lbl_80C3F95C
/* 80C3F954  FC 00 10 34 */	frsqrte f0, f2
/* 80C3F958  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80C3F95C:
/* 80C3F95C  FC 20 E8 90 */	fmr f1, f29
/* 80C3F960  4B 62 7D 15 */	bl cM_atan2s__Fff
/* 80C3F964  7C 03 00 D0 */	neg r0, r3
/* 80C3F968  7C 16 07 34 */	extsh r22, r0
/* 80C3F96C  80 78 00 00 */	lwz r3, 0(r24)
/* 80C3F970  7F 44 D3 78 */	mr r4, r26
/* 80C3F974  4B 3C CA 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C3F978  80 78 00 00 */	lwz r3, 0(r24)
/* 80C3F97C  7E C4 B3 78 */	mr r4, r22
/* 80C3F980  4B 3C CA 1D */	bl mDoMtx_XrotM__FPA4_fs
/* 80C3F984  38 61 00 28 */	addi r3, r1, 0x28
/* 80C3F988  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C3F98C  4B 63 15 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80C3F990  C0 3C 05 88 */	lfs f1, 0x588(r28)
/* 80C3F994  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C3F998  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3F99C  D0 1C 05 7C */	stfs f0, 0x57c(r28)
/* 80C3F9A0  C0 3C 05 8C */	lfs f1, 0x58c(r28)
/* 80C3F9A4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C3F9A8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3F9AC  D0 1C 05 80 */	stfs f0, 0x580(r28)
/* 80C3F9B0  C0 3C 05 90 */	lfs f1, 0x590(r28)
/* 80C3F9B4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C3F9B8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3F9BC  D0 1C 05 84 */	stfs f0, 0x584(r28)
/* 80C3F9C0  B2 DC 05 C4 */	sth r22, 0x5c4(r28)
/* 80C3F9C4  B3 5C 05 C6 */	sth r26, 0x5c6(r28)
/* 80C3F9C8  80 17 00 00 */	lwz r0, 0(r23)
/* 80C3F9CC  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80C3F9D0  40 82 00 68 */	bne lbl_80C3FA38
/* 80C3F9D4  C0 1C 05 7C */	lfs f0, 0x57c(r28)
/* 80C3F9D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C3F9DC  C0 3C 05 80 */	lfs f1, 0x580(r28)
/* 80C3F9E0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C3F9E4  C0 1C 05 84 */	lfs f0, 0x584(r28)
/* 80C3F9E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C3F9EC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C3F9F0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3F9F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C3F9F8  38 61 00 34 */	addi r3, r1, 0x34
/* 80C3F9FC  38 81 00 10 */	addi r4, r1, 0x10
/* 80C3FA00  4B 62 83 0D */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 80C3FA04  7F 23 CB 78 */	mr r3, r25
/* 80C3FA08  38 81 00 34 */	addi r4, r1, 0x34
/* 80C3FA0C  4B 43 4A 95 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80C3FA10  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C3FA14  EC 00 08 2A */	fadds f0, f0, f1
/* 80C3FA18  D0 1C 05 D8 */	stfs f0, 0x5d8(r28)
/* 80C3FA1C  C0 1C 05 D8 */	lfs f0, 0x5d8(r28)
/* 80C3FA20  C0 5C 05 80 */	lfs f2, 0x580(r28)
/* 80C3FA24  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C3FA28  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C3FA2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3FA30  40 81 00 08 */	ble lbl_80C3FA38
/* 80C3FA34  D0 5C 05 D8 */	stfs f2, 0x5d8(r28)
lbl_80C3FA38:
/* 80C3FA38  3B C0 00 00 */	li r30, 0
/* 80C3FA3C  3B A0 00 00 */	li r29, 0
/* 80C3FA40  3B 60 00 00 */	li r27, 0
/* 80C3FA44  3B 40 00 00 */	li r26, 0
/* 80C3FA48  3B 20 00 00 */	li r25, 0
/* 80C3FA4C  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C41148@ha */
/* 80C3FA50  3A E3 11 48 */	addi r23, r3, l_HIO@l /* 0x80C41148@l */
/* 80C3FA54  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C3FA58  3B 03 07 68 */	addi r24, r3, calc_mtx@l /* 0x80450768@l */
lbl_80C3FA5C:
/* 80C3FA5C  7C 7C CA 14 */	add r3, r28, r25
/* 80C3FA60  C0 23 05 7C */	lfs f1, 0x57c(r3)
/* 80C3FA64  C0 43 05 80 */	lfs f2, 0x580(r3)
/* 80C3FA68  C0 63 05 84 */	lfs f3, 0x584(r3)
/* 80C3FA6C  38 60 00 00 */	li r3, 0
/* 80C3FA70  4B 63 13 ED */	bl MtxTrans__FfffUc
/* 80C3FA74  80 78 00 00 */	lwz r3, 0(r24)
/* 80C3FA78  7E DC D2 14 */	add r22, r28, r26
/* 80C3FA7C  A8 96 05 C6 */	lha r4, 0x5c6(r22)
/* 80C3FA80  4B 3C C9 B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C3FA84  80 78 00 00 */	lwz r3, 0(r24)
/* 80C3FA88  A8 96 05 C4 */	lha r4, 0x5c4(r22)
/* 80C3FA8C  4B 3C C9 11 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C3FA90  2C 1D 00 01 */	cmpwi r29, 1
/* 80C3FA94  40 82 00 24 */	bne lbl_80C3FAB8
/* 80C3FA98  C3 97 00 08 */	lfs f28, 8(r23)
/* 80C3FA9C  C3 BF 00 24 */	lfs f29, 0x24(r31)
/* 80C3FAA0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C3FAA4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80C3FAA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C3FAAC  A8 96 05 C8 */	lha r4, 0x5c8(r22)
/* 80C3FAB0  4B 3C CA 1D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C3FAB4  48 00 00 24 */	b lbl_80C3FAD8
lbl_80C3FAB8:
/* 80C3FAB8  C3 97 00 0C */	lfs f28, 0xc(r23)
/* 80C3FABC  C3 BF 00 28 */	lfs f29, 0x28(r31)
/* 80C3FAC0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C3FAC4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80C3FAC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C3FACC  7F C4 F3 78 */	mr r4, r30
/* 80C3FAD0  4B 3C C9 FD */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C3FAD4  3B DE 40 00 */	addi r30, r30, 0x4000
lbl_80C3FAD8:
/* 80C3FAD8  FC 20 E0 90 */	fmr f1, f28
/* 80C3FADC  FC 40 E0 90 */	fmr f2, f28
/* 80C3FAE0  FC 60 E0 90 */	fmr f3, f28
/* 80C3FAE4  38 60 00 01 */	li r3, 1
/* 80C3FAE8  4B 63 13 BD */	bl MtxScale__FfffUc
/* 80C3FAEC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80C3FAF0  FC 40 08 90 */	fmr f2, f1
/* 80C3FAF4  FC 60 E8 90 */	fmr f3, f29
/* 80C3FAF8  38 60 00 01 */	li r3, 1
/* 80C3FAFC  4B 63 13 61 */	bl MtxTrans__FfffUc
/* 80C3FB00  80 78 00 00 */	lwz r3, 0(r24)
/* 80C3FB04  38 80 C0 00 */	li r4, -16384
/* 80C3FB08  4B 3C C8 95 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C3FB0C  80 78 00 00 */	lwz r3, 0(r24)
/* 80C3FB10  38 1B 05 70 */	addi r0, r27, 0x570
/* 80C3FB14  7C 9C 00 2E */	lwzx r4, r28, r0
/* 80C3FB18  38 84 00 24 */	addi r4, r4, 0x24
/* 80C3FB1C  4B 70 69 95 */	bl PSMTXCopy
/* 80C3FB20  3B BD 00 01 */	addi r29, r29, 1
/* 80C3FB24  2C 1D 00 02 */	cmpwi r29, 2
/* 80C3FB28  3B 7B 00 04 */	addi r27, r27, 4
/* 80C3FB2C  3B 5A 00 06 */	addi r26, r26, 6
/* 80C3FB30  3B 39 00 0C */	addi r25, r25, 0xc
/* 80C3FB34  41 80 FF 28 */	blt lbl_80C3FA5C
/* 80C3FB38  38 00 00 00 */	li r0, 0
/* 80C3FB3C  98 1C 06 1C */	stb r0, 0x61c(r28)
/* 80C3FB40  38 61 00 34 */	addi r3, r1, 0x34
/* 80C3FB44  38 80 FF FF */	li r4, -1
/* 80C3FB48  4B 43 7A A9 */	bl __dt__11dBgS_GndChkFv
/* 80C3FB4C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80C3FB50  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80C3FB54  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80C3FB58  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80C3FB5C  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 80C3FB60  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80C3FB64  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 80C3FB68  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 80C3FB6C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80C3FB70  4B 72 26 9D */	bl _restgpr_22
/* 80C3FB74  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80C3FB78  7C 08 03 A6 */	mtlr r0
/* 80C3FB7C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80C3FB80  4E 80 00 20 */	blr 
