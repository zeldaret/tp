lbl_806608F0:
/* 806608F0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 806608F4  7C 08 02 A6 */	mflr r0
/* 806608F8  90 01 01 04 */	stw r0, 0x104(r1)
/* 806608FC  39 61 01 00 */	addi r11, r1, 0x100
/* 80660900  4B D0 18 D0 */	b _savegpr_26
/* 80660904  7C 7A 1B 78 */	mr r26, r3
/* 80660908  3C 60 80 66 */	lis r3, cNullVec__6Z2Calc@ha
/* 8066090C  3B A3 2F 58 */	addi r29, r3, cNullVec__6Z2Calc@l
/* 80660910  3C 60 80 66 */	lis r3, lit_3987@ha
/* 80660914  3B C3 2D B0 */	addi r30, r3, lit_3987@l
/* 80660918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066091C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80660920  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80660924  38 60 02 43 */	li r3, 0x243
/* 80660928  38 81 00 1C */	addi r4, r1, 0x1c
/* 8066092C  4B 9B 91 00 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80660930  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80660934  28 03 00 00 */	cmplwi r3, 0
/* 80660938  41 82 09 8C */	beq lbl_806612C4
/* 8066093C  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80660940  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80660944  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80660948  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8066094C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80660950  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80660954  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80660958  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8066095C  4B C1 02 A8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80660960  7C 7B 1B 78 */	mr r27, r3
/* 80660964  A0 1A 0C 5C */	lhz r0, 0xc5c(r26)
/* 80660968  2C 00 00 02 */	cmpwi r0, 2
/* 8066096C  41 82 09 58 */	beq lbl_806612C4
/* 80660970  40 80 00 14 */	bge lbl_80660984
/* 80660974  2C 00 00 00 */	cmpwi r0, 0
/* 80660978  41 82 00 18 */	beq lbl_80660990
/* 8066097C  40 80 00 88 */	bge lbl_80660A04
/* 80660980  48 00 09 44 */	b lbl_806612C4
lbl_80660984:
/* 80660984  2C 00 00 04 */	cmpwi r0, 4
/* 80660988  40 80 09 3C */	bge lbl_806612C4
/* 8066098C  48 00 08 C8 */	b lbl_80661254
lbl_80660990:
/* 80660990  38 00 00 01 */	li r0, 1
/* 80660994  B0 1A 0C 5C */	sth r0, 0xc5c(r26)
/* 80660998  38 00 00 00 */	li r0, 0
/* 8066099C  98 1A 0C 9F */	stb r0, 0xc9f(r26)
/* 806609A0  7F 43 D3 78 */	mr r3, r26
/* 806609A4  38 80 00 01 */	li r4, 1
/* 806609A8  4B FF 7C 25 */	bl calcRunAnime__7daCow_cFi
/* 806609AC  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 806609B0  60 00 00 01 */	ori r0, r0, 1
/* 806609B4  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 806609B8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050078@ha */
/* 806609BC  38 03 00 78 */	addi r0, r3, 0x0078 /* 0x00050078@l */
/* 806609C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 806609C4  38 7A 05 7C */	addi r3, r26, 0x57c
/* 806609C8  38 81 00 18 */	addi r4, r1, 0x18
/* 806609CC  38 A0 FF FF */	li r5, -1
/* 806609D0  81 9A 05 7C */	lwz r12, 0x57c(r26)
/* 806609D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806609D8  7D 89 03 A6 */	mtctr r12
/* 806609DC  4E 80 04 21 */	bctrl 
/* 806609E0  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 806609E4  4B C0 6F 70 */	b cM_rndF__Ff
/* 806609E8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 806609EC  EC 00 08 2A */	fadds f0, f0, f1
/* 806609F0  FC 00 00 1E */	fctiwz f0, f0
/* 806609F4  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 806609F8  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 806609FC  90 1A 0C 98 */	stw r0, 0xc98(r26)
/* 80660A00  48 00 08 C4 */	b lbl_806612C4
lbl_80660A04:
/* 80660A04  80 7A 0C 90 */	lwz r3, 0xc90(r26)
/* 80660A08  2C 03 00 00 */	cmpwi r3, 0
/* 80660A0C  41 82 00 0C */	beq lbl_80660A18
/* 80660A10  38 03 FF FF */	addi r0, r3, -1
/* 80660A14  90 1A 0C 90 */	stw r0, 0xc90(r26)
lbl_80660A18:
/* 80660A18  80 7A 0C 98 */	lwz r3, 0xc98(r26)
/* 80660A1C  2C 03 00 00 */	cmpwi r3, 0
/* 80660A20  41 82 00 0C */	beq lbl_80660A2C
/* 80660A24  38 03 FF FF */	addi r0, r3, -1
/* 80660A28  90 1A 0C 98 */	stw r0, 0xc98(r26)
lbl_80660A2C:
/* 80660A2C  7F 43 D3 78 */	mr r3, r26
/* 80660A30  38 80 00 00 */	li r4, 0
/* 80660A34  4B FF 7B 99 */	bl calcRunAnime__7daCow_cFi
/* 80660A38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80660A3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80660A40  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80660A44  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80660A48  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80660A4C  41 82 00 34 */	beq lbl_80660A80
/* 80660A50  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80660A54  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80660A58  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80660A5C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80660A60  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80660A64  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80660A68  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80660A6C  7F 43 D3 78 */	mr r3, r26
/* 80660A70  38 81 00 BC */	addi r4, r1, 0xbc
/* 80660A74  4B FF AC ED */	bl checkOutOfGate__7daCow_cF4cXyz
/* 80660A78  2C 03 00 00 */	cmpwi r3, 0
/* 80660A7C  41 82 00 38 */	beq lbl_80660AB4
lbl_80660A80:
/* 80660A80  80 7D 03 B4 */	lwz r3, 0x3b4(r29)
/* 80660A84  80 1D 03 B8 */	lwz r0, 0x3b8(r29)
/* 80660A88  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 80660A8C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80660A90  80 1D 03 BC */	lwz r0, 0x3bc(r29)
/* 80660A94  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80660A98  7F 43 D3 78 */	mr r3, r26
/* 80660A9C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80660AA0  38 A0 00 00 */	li r5, 0
/* 80660AA4  4B FF 86 71 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80660AA8  38 00 00 01 */	li r0, 1
/* 80660AAC  98 1A 0C 9E */	stb r0, 0xc9e(r26)
/* 80660AB0  48 00 08 14 */	b lbl_806612C4
lbl_80660AB4:
/* 80660AB4  88 1A 0C 9F */	lbz r0, 0xc9f(r26)
/* 80660AB8  2C 00 00 01 */	cmpwi r0, 1
/* 80660ABC  41 82 01 90 */	beq lbl_80660C4C
/* 80660AC0  40 80 00 10 */	bge lbl_80660AD0
/* 80660AC4  2C 00 00 00 */	cmpwi r0, 0
/* 80660AC8  40 80 00 14 */	bge lbl_80660ADC
/* 80660ACC  48 00 07 74 */	b lbl_80661240
lbl_80660AD0:
/* 80660AD0  2C 00 00 03 */	cmpwi r0, 3
/* 80660AD4  40 80 07 6C */	bge lbl_80661240
/* 80660AD8  48 00 02 0C */	b lbl_80660CE4
lbl_80660ADC:
/* 80660ADC  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80660AE0  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 80660AE4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80660AE8  4B C0 FC 58 */	b cLib_chaseF__FPfff
/* 80660AEC  38 7A 04 DE */	addi r3, r26, 0x4de
/* 80660AF0  7F 64 DB 78 */	mr r4, r27
/* 80660AF4  38 A0 00 08 */	li r5, 8
/* 80660AF8  38 C0 04 00 */	li r6, 0x400
/* 80660AFC  4B C0 FB 0C */	b cLib_addCalcAngleS2__FPssss
/* 80660B00  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80660B04  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80660B08  B0 1A 0C 34 */	sth r0, 0xc34(r26)
/* 80660B0C  7F 43 D3 78 */	mr r3, r26
/* 80660B10  7F 64 DB 78 */	mr r4, r27
/* 80660B14  4B FF 84 81 */	bl setBodyAngle2__7daCow_cFs
/* 80660B18  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80660B1C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80660B20  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80660B24  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80660B28  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80660B2C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80660B30  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 80660B34  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80660B38  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80660B3C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80660B40  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80660B44  38 61 00 68 */	addi r3, r1, 0x68
/* 80660B48  38 81 00 74 */	addi r4, r1, 0x74
/* 80660B4C  4B CE 68 50 */	b PSVECSquareDistance
/* 80660B50  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80660B54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80660B58  40 81 00 58 */	ble lbl_80660BB0
/* 80660B5C  FC 00 08 34 */	frsqrte f0, f1
/* 80660B60  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80660B64  FC 44 00 32 */	fmul f2, f4, f0
/* 80660B68  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80660B6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80660B70  FC 01 00 32 */	fmul f0, f1, f0
/* 80660B74  FC 03 00 28 */	fsub f0, f3, f0
/* 80660B78  FC 02 00 32 */	fmul f0, f2, f0
/* 80660B7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80660B80  FC 00 00 32 */	fmul f0, f0, f0
/* 80660B84  FC 01 00 32 */	fmul f0, f1, f0
/* 80660B88  FC 03 00 28 */	fsub f0, f3, f0
/* 80660B8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80660B90  FC 44 00 32 */	fmul f2, f4, f0
/* 80660B94  FC 00 00 32 */	fmul f0, f0, f0
/* 80660B98  FC 01 00 32 */	fmul f0, f1, f0
/* 80660B9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80660BA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80660BA4  FC 21 00 32 */	fmul f1, f1, f0
/* 80660BA8  FC 20 08 18 */	frsp f1, f1
/* 80660BAC  48 00 00 88 */	b lbl_80660C34
lbl_80660BB0:
/* 80660BB0  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80660BB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80660BB8  40 80 00 10 */	bge lbl_80660BC8
/* 80660BBC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80660BC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80660BC4  48 00 00 70 */	b lbl_80660C34
lbl_80660BC8:
/* 80660BC8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80660BCC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80660BD0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80660BD4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80660BD8  7C 03 00 00 */	cmpw r3, r0
/* 80660BDC  41 82 00 14 */	beq lbl_80660BF0
/* 80660BE0  40 80 00 40 */	bge lbl_80660C20
/* 80660BE4  2C 03 00 00 */	cmpwi r3, 0
/* 80660BE8  41 82 00 20 */	beq lbl_80660C08
/* 80660BEC  48 00 00 34 */	b lbl_80660C20
lbl_80660BF0:
/* 80660BF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80660BF4  41 82 00 0C */	beq lbl_80660C00
/* 80660BF8  38 00 00 01 */	li r0, 1
/* 80660BFC  48 00 00 28 */	b lbl_80660C24
lbl_80660C00:
/* 80660C00  38 00 00 02 */	li r0, 2
/* 80660C04  48 00 00 20 */	b lbl_80660C24
lbl_80660C08:
/* 80660C08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80660C0C  41 82 00 0C */	beq lbl_80660C18
/* 80660C10  38 00 00 05 */	li r0, 5
/* 80660C14  48 00 00 10 */	b lbl_80660C24
lbl_80660C18:
/* 80660C18  38 00 00 03 */	li r0, 3
/* 80660C1C  48 00 00 08 */	b lbl_80660C24
lbl_80660C20:
/* 80660C20  38 00 00 04 */	li r0, 4
lbl_80660C24:
/* 80660C24  2C 00 00 01 */	cmpwi r0, 1
/* 80660C28  40 82 00 0C */	bne lbl_80660C34
/* 80660C2C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80660C30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80660C34:
/* 80660C34  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80660C38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80660C3C  40 80 06 04 */	bge lbl_80661240
/* 80660C40  38 00 00 01 */	li r0, 1
/* 80660C44  98 1A 0C 9F */	stb r0, 0xc9f(r26)
/* 80660C48  48 00 05 F8 */	b lbl_80661240
lbl_80660C4C:
/* 80660C4C  4B C0 6C 20 */	b cM_rnd__Fv
/* 80660C50  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80660C54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80660C58  40 80 00 10 */	bge lbl_80660C68
/* 80660C5C  38 1B 30 00 */	addi r0, r27, 0x3000
/* 80660C60  7C 00 07 34 */	extsh r0, r0
/* 80660C64  48 00 00 0C */	b lbl_80660C70
lbl_80660C68:
/* 80660C68  38 1B D0 00 */	addi r0, r27, -12288
/* 80660C6C  7C 00 07 34 */	extsh r0, r0
lbl_80660C70:
/* 80660C70  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80660C74  D0 1A 0C 20 */	stfs f0, 0xc20(r26)
/* 80660C78  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80660C7C  D0 1A 0C 24 */	stfs f0, 0xc24(r26)
/* 80660C80  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80660C84  D0 1A 0C 28 */	stfs f0, 0xc28(r26)
/* 80660C88  C0 3A 0C 20 */	lfs f1, 0xc20(r26)
/* 80660C8C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80660C90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80660C94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80660C98  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80660C9C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80660CA0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80660CA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80660CA8  D0 1A 0C 20 */	stfs f0, 0xc20(r26)
/* 80660CAC  C0 3A 0C 28 */	lfs f1, 0xc28(r26)
/* 80660CB0  7C 63 02 14 */	add r3, r3, r0
/* 80660CB4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80660CB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80660CBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80660CC0  D0 1A 0C 28 */	stfs f0, 0xc28(r26)
/* 80660CC4  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80660CC8  38 9A 0C 20 */	addi r4, r26, 0xc20
/* 80660CCC  4B C0 FF 38 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80660CD0  B0 7A 0C 72 */	sth r3, 0xc72(r26)
/* 80660CD4  38 00 00 02 */	li r0, 2
/* 80660CD8  98 1A 0C 9F */	stb r0, 0xc9f(r26)
/* 80660CDC  38 00 00 96 */	li r0, 0x96
/* 80660CE0  90 1A 0C 90 */	stw r0, 0xc90(r26)
lbl_80660CE4:
/* 80660CE4  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80660CE8  38 9A 0C 20 */	addi r4, r26, 0xc20
/* 80660CEC  4B C0 FF 18 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80660CF0  B0 7A 0C 72 */	sth r3, 0xc72(r26)
/* 80660CF4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80660CF8  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 80660CFC  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80660D00  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80660D04  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80660D08  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80660D0C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80660D10  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80660D14  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80660D18  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80660D1C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80660D20  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80660D24  38 61 00 50 */	addi r3, r1, 0x50
/* 80660D28  38 81 00 5C */	addi r4, r1, 0x5c
/* 80660D2C  4B CE 66 70 */	b PSVECSquareDistance
/* 80660D30  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80660D34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80660D38  40 81 00 58 */	ble lbl_80660D90
/* 80660D3C  FC 00 08 34 */	frsqrte f0, f1
/* 80660D40  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80660D44  FC 44 00 32 */	fmul f2, f4, f0
/* 80660D48  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80660D4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80660D50  FC 01 00 32 */	fmul f0, f1, f0
/* 80660D54  FC 03 00 28 */	fsub f0, f3, f0
/* 80660D58  FC 02 00 32 */	fmul f0, f2, f0
/* 80660D5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80660D60  FC 00 00 32 */	fmul f0, f0, f0
/* 80660D64  FC 01 00 32 */	fmul f0, f1, f0
/* 80660D68  FC 03 00 28 */	fsub f0, f3, f0
/* 80660D6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80660D70  FC 44 00 32 */	fmul f2, f4, f0
/* 80660D74  FC 00 00 32 */	fmul f0, f0, f0
/* 80660D78  FC 01 00 32 */	fmul f0, f1, f0
/* 80660D7C  FC 03 00 28 */	fsub f0, f3, f0
/* 80660D80  FC 02 00 32 */	fmul f0, f2, f0
/* 80660D84  FC 21 00 32 */	fmul f1, f1, f0
/* 80660D88  FC 20 08 18 */	frsp f1, f1
/* 80660D8C  48 00 00 88 */	b lbl_80660E14
lbl_80660D90:
/* 80660D90  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80660D94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80660D98  40 80 00 10 */	bge lbl_80660DA8
/* 80660D9C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80660DA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80660DA4  48 00 00 70 */	b lbl_80660E14
lbl_80660DA8:
/* 80660DA8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80660DAC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80660DB0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80660DB4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80660DB8  7C 03 00 00 */	cmpw r3, r0
/* 80660DBC  41 82 00 14 */	beq lbl_80660DD0
/* 80660DC0  40 80 00 40 */	bge lbl_80660E00
/* 80660DC4  2C 03 00 00 */	cmpwi r3, 0
/* 80660DC8  41 82 00 20 */	beq lbl_80660DE8
/* 80660DCC  48 00 00 34 */	b lbl_80660E00
lbl_80660DD0:
/* 80660DD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80660DD4  41 82 00 0C */	beq lbl_80660DE0
/* 80660DD8  38 00 00 01 */	li r0, 1
/* 80660DDC  48 00 00 28 */	b lbl_80660E04
lbl_80660DE0:
/* 80660DE0  38 00 00 02 */	li r0, 2
/* 80660DE4  48 00 00 20 */	b lbl_80660E04
lbl_80660DE8:
/* 80660DE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80660DEC  41 82 00 0C */	beq lbl_80660DF8
/* 80660DF0  38 00 00 05 */	li r0, 5
/* 80660DF4  48 00 00 10 */	b lbl_80660E04
lbl_80660DF8:
/* 80660DF8  38 00 00 03 */	li r0, 3
/* 80660DFC  48 00 00 08 */	b lbl_80660E04
lbl_80660E00:
/* 80660E00  38 00 00 04 */	li r0, 4
lbl_80660E04:
/* 80660E04  2C 00 00 01 */	cmpwi r0, 1
/* 80660E08  40 82 00 0C */	bne lbl_80660E14
/* 80660E0C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80660E10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80660E14:
/* 80660E14  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80660E18  EC 21 00 24 */	fdivs f1, f1, f0
/* 80660E1C  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 80660E20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80660E24  40 80 00 08 */	bge lbl_80660E2C
/* 80660E28  FC 20 00 90 */	fmr f1, f0
lbl_80660E2C:
/* 80660E2C  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80660E30  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80660E34  4B C0 F9 0C */	b cLib_chaseF__FPfff
/* 80660E38  38 7A 04 DE */	addi r3, r26, 0x4de
/* 80660E3C  A8 9A 0C 72 */	lha r4, 0xc72(r26)
/* 80660E40  38 A0 00 08 */	li r5, 8
/* 80660E44  38 C0 02 00 */	li r6, 0x200
/* 80660E48  4B C0 F7 C0 */	b cLib_addCalcAngleS2__FPssss
/* 80660E4C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80660E50  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80660E54  B0 1A 0C 34 */	sth r0, 0xc34(r26)
/* 80660E58  7F 43 D3 78 */	mr r3, r26
/* 80660E5C  A8 9A 0C 72 */	lha r4, 0xc72(r26)
/* 80660E60  4B FF 81 35 */	bl setBodyAngle2__7daCow_cFs
/* 80660E64  80 1A 0C 90 */	lwz r0, 0xc90(r26)
/* 80660E68  2C 00 00 00 */	cmpwi r0, 0
/* 80660E6C  41 82 01 38 */	beq lbl_80660FA4
/* 80660E70  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 80660E74  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80660E78  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80660E7C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80660E80  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80660E84  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80660E88  C0 5A 0C 28 */	lfs f2, 0xc28(r26)
/* 80660E8C  C0 1A 0C 20 */	lfs f0, 0xc20(r26)
/* 80660E90  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80660E94  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80660E98  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80660E9C  38 61 00 38 */	addi r3, r1, 0x38
/* 80660EA0  38 81 00 44 */	addi r4, r1, 0x44
/* 80660EA4  4B CE 64 F8 */	b PSVECSquareDistance
/* 80660EA8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80660EAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80660EB0  40 81 00 58 */	ble lbl_80660F08
/* 80660EB4  FC 00 08 34 */	frsqrte f0, f1
/* 80660EB8  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80660EBC  FC 44 00 32 */	fmul f2, f4, f0
/* 80660EC0  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80660EC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80660EC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80660ECC  FC 03 00 28 */	fsub f0, f3, f0
/* 80660ED0  FC 02 00 32 */	fmul f0, f2, f0
/* 80660ED4  FC 44 00 32 */	fmul f2, f4, f0
/* 80660ED8  FC 00 00 32 */	fmul f0, f0, f0
/* 80660EDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80660EE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80660EE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80660EE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80660EEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80660EF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80660EF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80660EF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80660EFC  FC 21 00 32 */	fmul f1, f1, f0
/* 80660F00  FC 20 08 18 */	frsp f1, f1
/* 80660F04  48 00 00 88 */	b lbl_80660F8C
lbl_80660F08:
/* 80660F08  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80660F0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80660F10  40 80 00 10 */	bge lbl_80660F20
/* 80660F14  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80660F18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80660F1C  48 00 00 70 */	b lbl_80660F8C
lbl_80660F20:
/* 80660F20  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80660F24  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80660F28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80660F2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80660F30  7C 03 00 00 */	cmpw r3, r0
/* 80660F34  41 82 00 14 */	beq lbl_80660F48
/* 80660F38  40 80 00 40 */	bge lbl_80660F78
/* 80660F3C  2C 03 00 00 */	cmpwi r3, 0
/* 80660F40  41 82 00 20 */	beq lbl_80660F60
/* 80660F44  48 00 00 34 */	b lbl_80660F78
lbl_80660F48:
/* 80660F48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80660F4C  41 82 00 0C */	beq lbl_80660F58
/* 80660F50  38 00 00 01 */	li r0, 1
/* 80660F54  48 00 00 28 */	b lbl_80660F7C
lbl_80660F58:
/* 80660F58  38 00 00 02 */	li r0, 2
/* 80660F5C  48 00 00 20 */	b lbl_80660F7C
lbl_80660F60:
/* 80660F60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80660F64  41 82 00 0C */	beq lbl_80660F70
/* 80660F68  38 00 00 05 */	li r0, 5
/* 80660F6C  48 00 00 10 */	b lbl_80660F7C
lbl_80660F70:
/* 80660F70  38 00 00 03 */	li r0, 3
/* 80660F74  48 00 00 08 */	b lbl_80660F7C
lbl_80660F78:
/* 80660F78  38 00 00 04 */	li r0, 4
lbl_80660F7C:
/* 80660F7C  2C 00 00 01 */	cmpwi r0, 1
/* 80660F80  40 82 00 0C */	bne lbl_80660F8C
/* 80660F84  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80660F88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80660F8C:
/* 80660F8C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80660F90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80660F94  41 80 00 10 */	blt lbl_80660FA4
/* 80660F98  80 1A 06 38 */	lwz r0, 0x638(r26)
/* 80660F9C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80660FA0  41 82 00 0C */	beq lbl_80660FAC
lbl_80660FA4:
/* 80660FA4  38 00 00 01 */	li r0, 1
/* 80660FA8  98 1A 0C 9F */	stb r0, 0xc9f(r26)
lbl_80660FAC:
/* 80660FAC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80660FB0  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 80660FB4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80660FB8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80660FBC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80660FC0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80660FC4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80660FC8  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80660FCC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80660FD0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80660FD4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80660FD8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80660FDC  38 61 00 20 */	addi r3, r1, 0x20
/* 80660FE0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80660FE4  4B CE 63 B8 */	b PSVECSquareDistance
/* 80660FE8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80660FEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80660FF0  40 81 00 58 */	ble lbl_80661048
/* 80660FF4  FC 00 08 34 */	frsqrte f0, f1
/* 80660FF8  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80660FFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80661000  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80661004  FC 00 00 32 */	fmul f0, f0, f0
/* 80661008  FC 01 00 32 */	fmul f0, f1, f0
/* 8066100C  FC 03 00 28 */	fsub f0, f3, f0
/* 80661010  FC 02 00 32 */	fmul f0, f2, f0
/* 80661014  FC 44 00 32 */	fmul f2, f4, f0
/* 80661018  FC 00 00 32 */	fmul f0, f0, f0
/* 8066101C  FC 01 00 32 */	fmul f0, f1, f0
/* 80661020  FC 03 00 28 */	fsub f0, f3, f0
/* 80661024  FC 02 00 32 */	fmul f0, f2, f0
/* 80661028  FC 44 00 32 */	fmul f2, f4, f0
/* 8066102C  FC 00 00 32 */	fmul f0, f0, f0
/* 80661030  FC 01 00 32 */	fmul f0, f1, f0
/* 80661034  FC 03 00 28 */	fsub f0, f3, f0
/* 80661038  FC 02 00 32 */	fmul f0, f2, f0
/* 8066103C  FC 21 00 32 */	fmul f1, f1, f0
/* 80661040  FC 20 08 18 */	frsp f1, f1
/* 80661044  48 00 00 88 */	b lbl_806610CC
lbl_80661048:
/* 80661048  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 8066104C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80661050  40 80 00 10 */	bge lbl_80661060
/* 80661054  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80661058  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8066105C  48 00 00 70 */	b lbl_806610CC
lbl_80661060:
/* 80661060  D0 21 00 08 */	stfs f1, 8(r1)
/* 80661064  80 81 00 08 */	lwz r4, 8(r1)
/* 80661068  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8066106C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80661070  7C 03 00 00 */	cmpw r3, r0
/* 80661074  41 82 00 14 */	beq lbl_80661088
/* 80661078  40 80 00 40 */	bge lbl_806610B8
/* 8066107C  2C 03 00 00 */	cmpwi r3, 0
/* 80661080  41 82 00 20 */	beq lbl_806610A0
/* 80661084  48 00 00 34 */	b lbl_806610B8
lbl_80661088:
/* 80661088  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066108C  41 82 00 0C */	beq lbl_80661098
/* 80661090  38 00 00 01 */	li r0, 1
/* 80661094  48 00 00 28 */	b lbl_806610BC
lbl_80661098:
/* 80661098  38 00 00 02 */	li r0, 2
/* 8066109C  48 00 00 20 */	b lbl_806610BC
lbl_806610A0:
/* 806610A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806610A4  41 82 00 0C */	beq lbl_806610B0
/* 806610A8  38 00 00 05 */	li r0, 5
/* 806610AC  48 00 00 10 */	b lbl_806610BC
lbl_806610B0:
/* 806610B0  38 00 00 03 */	li r0, 3
/* 806610B4  48 00 00 08 */	b lbl_806610BC
lbl_806610B8:
/* 806610B8  38 00 00 04 */	li r0, 4
lbl_806610BC:
/* 806610BC  2C 00 00 01 */	cmpwi r0, 1
/* 806610C0  40 82 00 0C */	bne lbl_806610CC
/* 806610C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806610C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806610CC:
/* 806610CC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 806610D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806610D4  40 80 00 90 */	bge lbl_80661164
/* 806610D8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806610DC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 806610E0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806610E4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 806610E8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806610EC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 806610F0  7F 43 D3 78 */	mr r3, r26
/* 806610F4  38 81 00 A4 */	addi r4, r1, 0xa4
/* 806610F8  4B FF A6 69 */	bl checkOutOfGate__7daCow_cF4cXyz
/* 806610FC  2C 03 00 00 */	cmpwi r3, 0
/* 80661100  40 82 00 64 */	bne lbl_80661164
/* 80661104  7F 43 D3 78 */	mr r3, r26
/* 80661108  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8066110C  4B 9B 96 04 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80661110  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80661114  7C 00 18 50 */	subf r0, r0, r3
/* 80661118  7C 03 07 34 */	extsh r3, r0
/* 8066111C  4B D0 3F B4 */	b abs
/* 80661120  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80661124  40 80 00 40 */	bge lbl_80661164
/* 80661128  38 00 00 00 */	li r0, 0
/* 8066112C  98 1A 0C A0 */	stb r0, 0xca0(r26)
/* 80661130  38 00 00 01 */	li r0, 1
/* 80661134  98 1A 0C A1 */	stb r0, 0xca1(r26)
/* 80661138  80 7D 03 C0 */	lwz r3, 0x3c0(r29)
/* 8066113C  80 1D 03 C4 */	lwz r0, 0x3c4(r29)
/* 80661140  90 61 00 98 */	stw r3, 0x98(r1)
/* 80661144  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80661148  80 1D 03 C8 */	lwz r0, 0x3c8(r29)
/* 8066114C  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80661150  7F 43 D3 78 */	mr r3, r26
/* 80661154  38 81 00 98 */	addi r4, r1, 0x98
/* 80661158  38 A0 00 00 */	li r5, 0
/* 8066115C  4B FF 7F B9 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80661160  48 00 01 64 */	b lbl_806612C4
lbl_80661164:
/* 80661164  80 1A 0C 98 */	lwz r0, 0xc98(r26)
/* 80661168  2C 00 00 00 */	cmpwi r0, 0
/* 8066116C  40 82 00 D4 */	bne lbl_80661240
/* 80661170  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80661174  4B C0 67 E0 */	b cM_rndF__Ff
/* 80661178  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 8066117C  EC 00 08 2A */	fadds f0, f0, f1
/* 80661180  FC 00 00 1E */	fctiwz f0, f0
/* 80661184  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80661188  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 8066118C  90 1A 0C 98 */	stw r0, 0xc98(r26)
/* 80661190  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80661194  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80661198  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8066119C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806611A0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806611A4  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 806611A8  7F 43 D3 78 */	mr r3, r26
/* 806611AC  38 81 00 8C */	addi r4, r1, 0x8c
/* 806611B0  4B FF A5 B1 */	bl checkOutOfGate__7daCow_cF4cXyz
/* 806611B4  2C 03 00 00 */	cmpwi r3, 0
/* 806611B8  40 82 00 88 */	bne lbl_80661240
/* 806611BC  38 00 00 00 */	li r0, 0
/* 806611C0  3C 60 80 66 */	lis r3, m_angry_cow@ha
/* 806611C4  B0 03 34 FC */	sth r0, m_angry_cow@l(r3)
/* 806611C8  3C 60 80 66 */	lis r3, s_angry_cow2__FPvPv@ha
/* 806611CC  38 63 98 D4 */	addi r3, r3, s_angry_cow2__FPvPv@l
/* 806611D0  7F 44 D3 78 */	mr r4, r26
/* 806611D4  4B 9C 01 64 */	b fpcEx_Search__FPFPvPv_PvPv
/* 806611D8  28 03 00 00 */	cmplwi r3, 0
/* 806611DC  40 82 00 64 */	bne lbl_80661240
/* 806611E0  7F 43 D3 78 */	mr r3, r26
/* 806611E4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806611E8  4B 9B 95 28 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806611EC  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 806611F0  7C 00 18 50 */	subf r0, r0, r3
/* 806611F4  7C 03 07 34 */	extsh r3, r0
/* 806611F8  4B D0 3E D8 */	b abs
/* 806611FC  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80661200  40 80 00 40 */	bge lbl_80661240
/* 80661204  38 00 00 00 */	li r0, 0
/* 80661208  98 1A 0C A0 */	stb r0, 0xca0(r26)
/* 8066120C  38 00 00 01 */	li r0, 1
/* 80661210  98 1A 0C A1 */	stb r0, 0xca1(r26)
/* 80661214  80 7D 03 CC */	lwz r3, 0x3cc(r29)
/* 80661218  80 1D 03 D0 */	lwz r0, 0x3d0(r29)
/* 8066121C  90 61 00 80 */	stw r3, 0x80(r1)
/* 80661220  90 01 00 84 */	stw r0, 0x84(r1)
/* 80661224  80 1D 03 D4 */	lwz r0, 0x3d4(r29)
/* 80661228  90 01 00 88 */	stw r0, 0x88(r1)
/* 8066122C  7F 43 D3 78 */	mr r3, r26
/* 80661230  38 81 00 80 */	addi r4, r1, 0x80
/* 80661234  38 A0 00 00 */	li r5, 0
/* 80661238  4B FF 7E DD */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8066123C  48 00 00 88 */	b lbl_806612C4
lbl_80661240:
/* 80661240  38 7A 0C 42 */	addi r3, r26, 0xc42
/* 80661244  38 80 00 00 */	li r4, 0
/* 80661248  38 A0 04 00 */	li r5, 0x400
/* 8066124C  4B C0 F4 84 */	b cLib_chaseS__FPsss
/* 80661250  48 00 00 74 */	b lbl_806612C4
lbl_80661254:
/* 80661254  38 60 00 00 */	li r3, 0
/* 80661258  90 7A 0C 98 */	stw r3, 0xc98(r26)
/* 8066125C  90 7A 0C 94 */	stw r3, 0xc94(r26)
/* 80661260  90 7A 0C 90 */	stw r3, 0xc90(r26)
/* 80661264  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80661268  D0 1A 0C B0 */	stfs f0, 0xcb0(r26)
/* 8066126C  B0 7A 0C 42 */	sth r3, 0xc42(r26)
/* 80661270  B0 7A 0C 3A */	sth r3, 0xc3a(r26)
/* 80661274  B0 7A 0C 40 */	sth r3, 0xc40(r26)
/* 80661278  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 8066127C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80661280  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 80661284  38 BD 00 C0 */	addi r5, r29, 0xc0
/* 80661288  38 00 00 03 */	li r0, 3
/* 8066128C  7C 09 03 A6 */	mtctr r0
lbl_80661290:
/* 80661290  28 1A 00 00 */	cmplwi r26, 0
/* 80661294  41 82 00 0C */	beq lbl_806612A0
/* 80661298  80 9A 00 04 */	lwz r4, 4(r26)
/* 8066129C  48 00 00 08 */	b lbl_806612A4
lbl_806612A0:
/* 806612A0  38 80 FF FF */	li r4, -1
lbl_806612A4:
/* 806612A4  7C 05 18 2E */	lwzx r0, r5, r3
/* 806612A8  7C 00 20 40 */	cmplw r0, r4
/* 806612AC  40 82 00 10 */	bne lbl_806612BC
/* 806612B0  38 00 FF FF */	li r0, -1
/* 806612B4  7C 05 19 2E */	stwx r0, r5, r3
/* 806612B8  48 00 00 0C */	b lbl_806612C4
lbl_806612BC:
/* 806612BC  38 63 00 04 */	addi r3, r3, 4
/* 806612C0  42 00 FF D0 */	bdnz lbl_80661290
lbl_806612C4:
/* 806612C4  39 61 01 00 */	addi r11, r1, 0x100
/* 806612C8  4B D0 0F 54 */	b _restgpr_26
/* 806612CC  80 01 01 04 */	lwz r0, 0x104(r1)
/* 806612D0  7C 08 03 A6 */	mtlr r0
/* 806612D4  38 21 01 00 */	addi r1, r1, 0x100
/* 806612D8  4E 80 00 20 */	blr 
