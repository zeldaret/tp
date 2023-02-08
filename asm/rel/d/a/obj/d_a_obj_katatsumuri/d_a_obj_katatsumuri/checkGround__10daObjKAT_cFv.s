lbl_80C3A698:
/* 80C3A698  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C3A69C  7C 08 02 A6 */	mflr r0
/* 80C3A6A0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C3A6A4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C3A6A8  4B 72 7B 35 */	bl _savegpr_29
/* 80C3A6AC  7C 7F 1B 78 */	mr r31, r3
/* 80C3A6B0  3C 60 80 C4 */	lis r3, lit_3775@ha /* 0x80C3C674@ha */
/* 80C3A6B4  3B C3 C6 74 */	addi r30, r3, lit_3775@l /* 0x80C3C674@l */
/* 80C3A6B8  38 61 00 38 */	addi r3, r1, 0x38
/* 80C3A6BC  4B 43 D5 AD */	bl __ct__11dBgS_LinChkFv
/* 80C3A6C0  38 61 00 90 */	addi r3, r1, 0x90
/* 80C3A6C4  4B 43 E7 A5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C3A6C8  38 61 00 38 */	addi r3, r1, 0x38
/* 80C3A6CC  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 80C3A6D0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C3A6D4  38 C0 00 00 */	li r6, 0
/* 80C3A6D8  4B 43 D6 8D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C3A6DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3A6E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3A6E4  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C3A6E8  7F A3 EB 78 */	mr r3, r29
/* 80C3A6EC  38 81 00 38 */	addi r4, r1, 0x38
/* 80C3A6F0  4B 43 9C C5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C3A6F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3A6F8  41 82 01 AC */	beq lbl_80C3A8A4
/* 80C3A6FC  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3A700  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3A704  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C3A708  7F A3 EB 78 */	mr r3, r29
/* 80C3A70C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C3A710  38 A1 00 24 */	addi r5, r1, 0x24
/* 80C3A714  4B 43 A0 31 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C3A718  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C3A71C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C3A720  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80C3A724  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C3A728  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80C3A72C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C3A730  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80C3A734  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C3A738  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C3A73C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C3A740  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C3A744  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C3A748  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C3A74C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C3A750  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C3A754  38 61 00 18 */	addi r3, r1, 0x18
/* 80C3A758  38 81 00 0C */	addi r4, r1, 0xc
/* 80C3A75C  4B 70 CC 41 */	bl PSVECSquareDistance
/* 80C3A760  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80C3A764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3A768  40 81 00 58 */	ble lbl_80C3A7C0
/* 80C3A76C  FC 00 08 34 */	frsqrte f0, f1
/* 80C3A770  C8 9E 00 78 */	lfd f4, 0x78(r30)
/* 80C3A774  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3A778  C8 7E 00 80 */	lfd f3, 0x80(r30)
/* 80C3A77C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3A780  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3A784  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3A788  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3A78C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3A790  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3A794  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3A798  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3A79C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3A7A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3A7A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3A7A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3A7AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3A7B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3A7B4  FC 41 00 32 */	fmul f2, f1, f0
/* 80C3A7B8  FC 40 10 18 */	frsp f2, f2
/* 80C3A7BC  48 00 00 90 */	b lbl_80C3A84C
lbl_80C3A7C0:
/* 80C3A7C0  C8 1E 00 88 */	lfd f0, 0x88(r30)
/* 80C3A7C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3A7C8  40 80 00 10 */	bge lbl_80C3A7D8
/* 80C3A7CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3A7D0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3A7D4  48 00 00 78 */	b lbl_80C3A84C
lbl_80C3A7D8:
/* 80C3A7D8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C3A7DC  80 81 00 08 */	lwz r4, 8(r1)
/* 80C3A7E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C3A7E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C3A7E8  7C 03 00 00 */	cmpw r3, r0
/* 80C3A7EC  41 82 00 14 */	beq lbl_80C3A800
/* 80C3A7F0  40 80 00 40 */	bge lbl_80C3A830
/* 80C3A7F4  2C 03 00 00 */	cmpwi r3, 0
/* 80C3A7F8  41 82 00 20 */	beq lbl_80C3A818
/* 80C3A7FC  48 00 00 34 */	b lbl_80C3A830
lbl_80C3A800:
/* 80C3A800  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3A804  41 82 00 0C */	beq lbl_80C3A810
/* 80C3A808  38 00 00 01 */	li r0, 1
/* 80C3A80C  48 00 00 28 */	b lbl_80C3A834
lbl_80C3A810:
/* 80C3A810  38 00 00 02 */	li r0, 2
/* 80C3A814  48 00 00 20 */	b lbl_80C3A834
lbl_80C3A818:
/* 80C3A818  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3A81C  41 82 00 0C */	beq lbl_80C3A828
/* 80C3A820  38 00 00 05 */	li r0, 5
/* 80C3A824  48 00 00 10 */	b lbl_80C3A834
lbl_80C3A828:
/* 80C3A828  38 00 00 03 */	li r0, 3
/* 80C3A82C  48 00 00 08 */	b lbl_80C3A834
lbl_80C3A830:
/* 80C3A830  38 00 00 04 */	li r0, 4
lbl_80C3A834:
/* 80C3A834  2C 00 00 01 */	cmpwi r0, 1
/* 80C3A838  40 82 00 10 */	bne lbl_80C3A848
/* 80C3A83C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3A840  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3A844  48 00 00 08 */	b lbl_80C3A84C
lbl_80C3A848:
/* 80C3A848  FC 40 08 90 */	fmr f2, f1
lbl_80C3A84C:
/* 80C3A84C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C3A850  4B 62 CE 25 */	bl cM_atan2s__Fff
/* 80C3A854  7C 03 00 D0 */	neg r0, r3
/* 80C3A858  B0 1F 07 EE */	sth r0, 0x7ee(r31)
/* 80C3A85C  B0 1F 07 C6 */	sth r0, 0x7c6(r31)
/* 80C3A860  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C3A864  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80C3A868  4B 62 CE 0D */	bl cM_atan2s__Fff
/* 80C3A86C  B0 7F 07 EA */	sth r3, 0x7ea(r31)
/* 80C3A870  B0 7F 07 C2 */	sth r3, 0x7c2(r31)
/* 80C3A874  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C3A878  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80C3A87C  4B 62 CD F9 */	bl cM_atan2s__Fff
/* 80C3A880  B0 7F 07 F6 */	sth r3, 0x7f6(r31)
/* 80C3A884  38 00 00 00 */	li r0, 0
/* 80C3A888  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80C3A88C  88 7F 07 C1 */	lbz r3, 0x7c1(r31)
/* 80C3A890  38 03 00 01 */	addi r0, r3, 1
/* 80C3A894  98 1F 07 C1 */	stb r0, 0x7c1(r31)
/* 80C3A898  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3A89C  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3A8A0  90 01 00 34 */	stw r0, 0x34(r1)
lbl_80C3A8A4:
/* 80C3A8A4  38 61 00 38 */	addi r3, r1, 0x38
/* 80C3A8A8  38 80 FF FF */	li r4, -1
/* 80C3A8AC  4B 43 D4 31 */	bl __dt__11dBgS_LinChkFv
/* 80C3A8B0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C3A8B4  4B 72 79 75 */	bl _restgpr_29
/* 80C3A8B8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C3A8BC  7C 08 03 A6 */	mtlr r0
/* 80C3A8C0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C3A8C4  4E 80 00 20 */	blr 
