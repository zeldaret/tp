lbl_80C2E7A0:
/* 80C2E7A0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C2E7A4  7C 08 02 A6 */	mflr r0
/* 80C2E7A8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C2E7AC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C2E7B0  4B 73 3A 25 */	bl _savegpr_27
/* 80C2E7B4  7C 7C 1B 78 */	mr r28, r3
/* 80C2E7B8  7C 9B 23 78 */	mr r27, r4
/* 80C2E7BC  7C BE 2B 78 */	mr r30, r5
/* 80C2E7C0  7C DF 33 78 */	mr r31, r6
/* 80C2E7C4  3C 60 80 C3 */	lis r3, lit_3774@ha /* 0x80C3114C@ha */
/* 80C2E7C8  3B A3 11 4C */	addi r29, r3, lit_3774@l /* 0x80C3114C@l */
/* 80C2E7CC  38 61 00 38 */	addi r3, r1, 0x38
/* 80C2E7D0  4B 44 94 99 */	bl __ct__11dBgS_LinChkFv
/* 80C2E7D4  38 61 00 90 */	addi r3, r1, 0x90
/* 80C2E7D8  4B 44 A6 91 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C2E7DC  38 61 00 38 */	addi r3, r1, 0x38
/* 80C2E7E0  38 9C 04 BC */	addi r4, r28, 0x4bc
/* 80C2E7E4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80C2E7E8  38 C0 00 00 */	li r6, 0
/* 80C2E7EC  4B 44 95 79 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C2E7F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2E7F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2E7F8  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80C2E7FC  7F 83 E3 78 */	mr r3, r28
/* 80C2E800  38 81 00 38 */	addi r4, r1, 0x38
/* 80C2E804  4B 44 5B B1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C2E808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2E80C  41 82 01 C4 */	beq lbl_80C2E9D0
/* 80C2E810  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C31404@ha */
/* 80C2E814  38 03 14 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C31404@l */
/* 80C2E818  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C2E81C  7F 83 E3 78 */	mr r3, r28
/* 80C2E820  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C2E824  38 A1 00 24 */	addi r5, r1, 0x24
/* 80C2E828  4B 44 5F 1D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C2E82C  28 1B 00 00 */	cmplwi r27, 0
/* 80C2E830  41 82 00 1C */	beq lbl_80C2E84C
/* 80C2E834  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C2E838  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80C2E83C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80C2E840  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80C2E844  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80C2E848  D0 1B 00 08 */	stfs f0, 8(r27)
lbl_80C2E84C:
/* 80C2E84C  28 1E 00 00 */	cmplwi r30, 0
/* 80C2E850  41 82 01 40 */	beq lbl_80C2E990
/* 80C2E854  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80C2E858  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C2E85C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C2E860  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C2E864  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80C2E868  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80C2E86C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C2E870  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C2E874  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C2E878  38 61 00 18 */	addi r3, r1, 0x18
/* 80C2E87C  38 81 00 0C */	addi r4, r1, 0xc
/* 80C2E880  4B 71 8B 1D */	bl PSVECSquareDistance
/* 80C2E884  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80C2E888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2E88C  40 81 00 58 */	ble lbl_80C2E8E4
/* 80C2E890  FC 00 08 34 */	frsqrte f0, f1
/* 80C2E894  C8 9D 00 20 */	lfd f4, 0x20(r29)
/* 80C2E898  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2E89C  C8 7D 00 28 */	lfd f3, 0x28(r29)
/* 80C2E8A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2E8A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2E8A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2E8AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2E8B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2E8B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2E8B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2E8BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2E8C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2E8C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2E8C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2E8CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2E8D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2E8D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2E8D8  FC 41 00 32 */	fmul f2, f1, f0
/* 80C2E8DC  FC 40 10 18 */	frsp f2, f2
/* 80C2E8E0  48 00 00 90 */	b lbl_80C2E970
lbl_80C2E8E4:
/* 80C2E8E4  C8 1D 00 30 */	lfd f0, 0x30(r29)
/* 80C2E8E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2E8EC  40 80 00 10 */	bge lbl_80C2E8FC
/* 80C2E8F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2E8F4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2E8F8  48 00 00 78 */	b lbl_80C2E970
lbl_80C2E8FC:
/* 80C2E8FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C2E900  80 81 00 08 */	lwz r4, 8(r1)
/* 80C2E904  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2E908  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2E90C  7C 03 00 00 */	cmpw r3, r0
/* 80C2E910  41 82 00 14 */	beq lbl_80C2E924
/* 80C2E914  40 80 00 40 */	bge lbl_80C2E954
/* 80C2E918  2C 03 00 00 */	cmpwi r3, 0
/* 80C2E91C  41 82 00 20 */	beq lbl_80C2E93C
/* 80C2E920  48 00 00 34 */	b lbl_80C2E954
lbl_80C2E924:
/* 80C2E924  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2E928  41 82 00 0C */	beq lbl_80C2E934
/* 80C2E92C  38 00 00 01 */	li r0, 1
/* 80C2E930  48 00 00 28 */	b lbl_80C2E958
lbl_80C2E934:
/* 80C2E934  38 00 00 02 */	li r0, 2
/* 80C2E938  48 00 00 20 */	b lbl_80C2E958
lbl_80C2E93C:
/* 80C2E93C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2E940  41 82 00 0C */	beq lbl_80C2E94C
/* 80C2E944  38 00 00 05 */	li r0, 5
/* 80C2E948  48 00 00 10 */	b lbl_80C2E958
lbl_80C2E94C:
/* 80C2E94C  38 00 00 03 */	li r0, 3
/* 80C2E950  48 00 00 08 */	b lbl_80C2E958
lbl_80C2E954:
/* 80C2E954  38 00 00 04 */	li r0, 4
lbl_80C2E958:
/* 80C2E958  2C 00 00 01 */	cmpwi r0, 1
/* 80C2E95C  40 82 00 10 */	bne lbl_80C2E96C
/* 80C2E960  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2E964  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2E968  48 00 00 08 */	b lbl_80C2E970
lbl_80C2E96C:
/* 80C2E96C  FC 40 08 90 */	fmr f2, f1
lbl_80C2E970:
/* 80C2E970  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C2E974  4B 63 8D 01 */	bl cM_atan2s__Fff
/* 80C2E978  7C 03 00 D0 */	neg r0, r3
/* 80C2E97C  B0 1E 00 04 */	sth r0, 4(r30)
/* 80C2E980  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C2E984  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80C2E988  4B 63 8C ED */	bl cM_atan2s__Fff
/* 80C2E98C  B0 7E 00 00 */	sth r3, 0(r30)
lbl_80C2E990:
/* 80C2E990  28 1F 00 00 */	cmplwi r31, 0
/* 80C2E994  41 82 00 1C */	beq lbl_80C2E9B0
/* 80C2E998  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C2E99C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80C2E9A0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C2E9A4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80C2E9A8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C2E9AC  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80C2E9B0:
/* 80C2E9B0  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C31404@ha */
/* 80C2E9B4  38 03 14 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C31404@l */
/* 80C2E9B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C2E9BC  38 61 00 38 */	addi r3, r1, 0x38
/* 80C2E9C0  38 80 FF FF */	li r4, -1
/* 80C2E9C4  4B 44 93 19 */	bl __dt__11dBgS_LinChkFv
/* 80C2E9C8  38 60 00 01 */	li r3, 1
/* 80C2E9CC  48 00 00 14 */	b lbl_80C2E9E0
lbl_80C2E9D0:
/* 80C2E9D0  38 61 00 38 */	addi r3, r1, 0x38
/* 80C2E9D4  38 80 FF FF */	li r4, -1
/* 80C2E9D8  4B 44 93 05 */	bl __dt__11dBgS_LinChkFv
/* 80C2E9DC  38 60 00 00 */	li r3, 0
lbl_80C2E9E0:
/* 80C2E9E0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C2E9E4  4B 73 38 3D */	bl _restgpr_27
/* 80C2E9E8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C2E9EC  7C 08 03 A6 */	mtlr r0
/* 80C2E9F0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C2E9F4  4E 80 00 20 */	blr 
