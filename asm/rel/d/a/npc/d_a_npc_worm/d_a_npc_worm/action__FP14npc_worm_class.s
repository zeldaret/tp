lbl_80B2E6C4:
/* 80B2E6C4  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80B2E6C8  7C 08 02 A6 */	mflr r0
/* 80B2E6CC  90 01 01 24 */	stw r0, 0x124(r1)
/* 80B2E6D0  39 61 01 20 */	addi r11, r1, 0x120
/* 80B2E6D4  4B 83 3A F4 */	b _savegpr_24
/* 80B2E6D8  7C 7E 1B 78 */	mr r30, r3
/* 80B2E6DC  3C 80 80 B3 */	lis r4, lit_3717@ha
/* 80B2E6E0  3B E4 F0 80 */	addi r31, r4, lit_3717@l
/* 80B2E6E4  3B 00 00 00 */	li r24, 0
/* 80B2E6E8  3B A0 00 00 */	li r29, 0
/* 80B2E6EC  3B 80 00 00 */	li r28, 0
/* 80B2E6F0  3B 60 00 01 */	li r27, 1
/* 80B2E6F4  A8 03 05 A6 */	lha r0, 0x5a6(r3)
/* 80B2E6F8  2C 00 00 02 */	cmpwi r0, 2
/* 80B2E6FC  41 82 00 44 */	beq lbl_80B2E740
/* 80B2E700  40 80 00 14 */	bge lbl_80B2E714
/* 80B2E704  2C 00 00 00 */	cmpwi r0, 0
/* 80B2E708  41 82 00 18 */	beq lbl_80B2E720
/* 80B2E70C  40 80 00 20 */	bge lbl_80B2E72C
/* 80B2E710  48 00 00 44 */	b lbl_80B2E754
lbl_80B2E714:
/* 80B2E714  2C 00 00 04 */	cmpwi r0, 4
/* 80B2E718  40 80 00 3C */	bge lbl_80B2E754
/* 80B2E71C  48 00 00 30 */	b lbl_80B2E74C
lbl_80B2E720:
/* 80B2E720  4B FF F9 25 */	bl npc_worm_ground__FP14npc_worm_class
/* 80B2E724  3B 60 00 00 */	li r27, 0
/* 80B2E728  48 00 00 2C */	b lbl_80B2E754
lbl_80B2E72C:
/* 80B2E72C  4B FF FB 99 */	bl npc_worm_normal__FP14npc_worm_class
/* 80B2E730  3B 00 00 01 */	li r24, 1
/* 80B2E734  3B A0 00 01 */	li r29, 1
/* 80B2E738  3B 80 00 01 */	li r28, 1
/* 80B2E73C  48 00 00 18 */	b lbl_80B2E754
lbl_80B2E740:
/* 80B2E740  4B FF FE 05 */	bl npc_worm_dive__FP14npc_worm_class
/* 80B2E744  3B 00 00 02 */	li r24, 2
/* 80B2E748  48 00 00 0C */	b lbl_80B2E754
lbl_80B2E74C:
/* 80B2E74C  4B FF FF 2D */	bl npc_worm_binwait__FP14npc_worm_class
/* 80B2E750  3B 60 00 00 */	li r27, 0
lbl_80B2E754:
/* 80B2E754  2C 18 00 01 */	cmpwi r24, 1
/* 80B2E758  40 82 00 DC */	bne lbl_80B2E834
/* 80B2E75C  38 00 07 D0 */	li r0, 0x7d0
/* 80B2E760  B0 1E 05 AC */	sth r0, 0x5ac(r30)
/* 80B2E764  A8 7E 05 AA */	lha r3, 0x5aa(r30)
/* 80B2E768  A8 1E 05 AC */	lha r0, 0x5ac(r30)
/* 80B2E76C  7C 03 02 14 */	add r0, r3, r0
/* 80B2E770  B0 1E 05 AA */	sth r0, 0x5aa(r30)
/* 80B2E774  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80B2E778  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80B2E77C  A8 1E 05 A4 */	lha r0, 0x5a4(r30)
/* 80B2E780  1C 00 02 58 */	mulli r0, r0, 0x258
/* 80B2E784  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B2E788  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B2E78C  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l
/* 80B2E790  7C 45 04 2E */	lfsx f2, r5, r0
/* 80B2E794  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80B2E798  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80B2E79C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B2E7A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B2E7A4  FC 00 00 1E */	fctiwz f0, f0
/* 80B2E7A8  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 80B2E7AC  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80B2E7B0  B0 1E 05 AE */	sth r0, 0x5ae(r30)
/* 80B2E7B4  38 C0 00 00 */	li r6, 0
/* 80B2E7B8  38 60 00 00 */	li r3, 0
/* 80B2E7BC  38 00 00 09 */	li r0, 9
/* 80B2E7C0  7C 09 03 A6 */	mtctr r0
lbl_80B2E7C4:
/* 80B2E7C4  A8 1E 05 AE */	lha r0, 0x5ae(r30)
/* 80B2E7C8  7C 86 01 D6 */	mullw r4, r6, r0
/* 80B2E7CC  A8 1E 05 AA */	lha r0, 0x5aa(r30)
/* 80B2E7D0  7C 04 00 50 */	subf r0, r4, r0
/* 80B2E7D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B2E7D8  7C 25 04 2E */	lfsx f1, r5, r0
/* 80B2E7DC  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80B2E7E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B2E7E4  FC 00 00 1E */	fctiwz f0, f0
/* 80B2E7E8  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 80B2E7EC  80 81 00 F4 */	lwz r4, 0xf4(r1)
/* 80B2E7F0  38 03 05 B4 */	addi r0, r3, 0x5b4
/* 80B2E7F4  7C 9E 03 2E */	sthx r4, r30, r0
/* 80B2E7F8  38 C6 00 01 */	addi r6, r6, 1
/* 80B2E7FC  38 63 00 02 */	addi r3, r3, 2
/* 80B2E800  42 00 FF C4 */	bdnz lbl_80B2E7C4
/* 80B2E804  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80B2E808  A8 1E 05 BA */	lha r0, 0x5ba(r30)
/* 80B2E80C  54 00 08 3C */	slwi r0, r0, 1
/* 80B2E810  7C 00 00 D0 */	neg r0, r0
/* 80B2E814  7C 03 02 14 */	add r0, r3, r0
/* 80B2E818  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B2E81C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B2E820  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80B2E824  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 80B2E828  FC 60 10 90 */	fmr f3, f2
/* 80B2E82C  4B 74 12 10 */	b cLib_addCalc2__FPffff
/* 80B2E830  48 00 00 EC */	b lbl_80B2E91C
lbl_80B2E834:
/* 80B2E834  2C 18 00 02 */	cmpwi r24, 2
/* 80B2E838  40 82 00 E4 */	bne lbl_80B2E91C
/* 80B2E83C  A8 7E 05 AA */	lha r3, 0x5aa(r30)
/* 80B2E840  A8 1E 05 AC */	lha r0, 0x5ac(r30)
/* 80B2E844  7C 03 02 14 */	add r0, r3, r0
/* 80B2E848  B0 1E 05 AA */	sth r0, 0x5aa(r30)
/* 80B2E84C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80B2E850  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80B2E854  38 00 0B B8 */	li r0, 0xbb8
/* 80B2E858  B0 1E 05 AE */	sth r0, 0x5ae(r30)
/* 80B2E85C  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 80B2E860  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 80B2E864  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B2E868  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B2E86C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B2E870  FC 00 00 1E */	fctiwz f0, f0
/* 80B2E874  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 80B2E878  83 41 00 F4 */	lwz r26, 0xf4(r1)
/* 80B2E87C  2C 1A 00 08 */	cmpwi r26, 8
/* 80B2E880  40 81 00 08 */	ble lbl_80B2E888
/* 80B2E884  3B 40 00 08 */	li r26, 8
lbl_80B2E888:
/* 80B2E888  1C 7A 00 C8 */	mulli r3, r26, 0xc8
/* 80B2E88C  38 03 0D AC */	addi r0, r3, 0xdac
/* 80B2E890  B0 1E 05 AC */	sth r0, 0x5ac(r30)
/* 80B2E894  3B 20 00 00 */	li r25, 0
/* 80B2E898  3B 00 00 00 */	li r24, 0
lbl_80B2E89C:
/* 80B2E89C  7C 19 D0 00 */	cmpw r25, r26
/* 80B2E8A0  41 80 00 44 */	blt lbl_80B2E8E4
/* 80B2E8A4  A8 1E 05 AE */	lha r0, 0x5ae(r30)
/* 80B2E8A8  7C 79 01 D6 */	mullw r3, r25, r0
/* 80B2E8AC  A8 1E 05 AA */	lha r0, 0x5aa(r30)
/* 80B2E8B0  7C 03 00 50 */	subf r0, r3, r0
/* 80B2E8B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B2E8B8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B2E8BC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B2E8C0  7C 23 04 2E */	lfsx f1, r3, r0
/* 80B2E8C4  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80B2E8C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B2E8CC  FC 00 00 1E */	fctiwz f0, f0
/* 80B2E8D0  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 80B2E8D4  80 61 00 F4 */	lwz r3, 0xf4(r1)
/* 80B2E8D8  38 18 05 B4 */	addi r0, r24, 0x5b4
/* 80B2E8DC  7C 7E 03 2E */	sthx r3, r30, r0
/* 80B2E8E0  48 00 00 1C */	b lbl_80B2E8FC
lbl_80B2E8E4:
/* 80B2E8E4  38 78 05 B4 */	addi r3, r24, 0x5b4
/* 80B2E8E8  7C 7E 1A 14 */	add r3, r30, r3
/* 80B2E8EC  38 80 00 00 */	li r4, 0
/* 80B2E8F0  38 A0 00 01 */	li r5, 1
/* 80B2E8F4  38 C0 03 E8 */	li r6, 0x3e8
/* 80B2E8F8  4B 74 1D 10 */	b cLib_addCalcAngleS2__FPssss
lbl_80B2E8FC:
/* 80B2E8FC  3B 39 00 01 */	addi r25, r25, 1
/* 80B2E900  2C 19 00 09 */	cmpwi r25, 9
/* 80B2E904  3B 18 00 02 */	addi r24, r24, 2
/* 80B2E908  41 80 FF 94 */	blt lbl_80B2E89C
/* 80B2E90C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B2E910  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B2E914  FC 40 08 90 */	fmr f2, f1
/* 80B2E918  4B 74 11 68 */	b cLib_addCalc0__FPfff
lbl_80B2E91C:
/* 80B2E91C  2C 1C 00 00 */	cmpwi r28, 0
/* 80B2E920  41 82 00 E0 */	beq lbl_80B2EA00
/* 80B2E924  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80B2E928  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80B2E92C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B2E930  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80B2E934  4B 4D DA A8 */	b mDoMtx_YrotS__FPA4_fs
/* 80B2E938  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80B2E93C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B2E940  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B2E944  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80B2E948  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B2E94C  38 61 00 20 */	addi r3, r1, 0x20
/* 80B2E950  38 81 00 14 */	addi r4, r1, 0x14
/* 80B2E954  4B 74 25 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 80B2E958  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80B2E95C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B2E960  EC 01 00 2A */	fadds f0, f1, f0
/* 80B2E964  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B2E968  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B2E96C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80B2E970  EC 01 00 2A */	fadds f0, f1, f0
/* 80B2E974  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B2E978  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80B2E97C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B2E980  EC 01 00 2A */	fadds f0, f1, f0
/* 80B2E984  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B2E988  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80B2E98C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80B2E990  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B2E994  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B2E998  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80B2E99C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80B2E9A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2E9A4  40 80 00 08 */	bge lbl_80B2E9AC
/* 80B2E9A8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80B2E9AC:
/* 80B2E9AC  38 61 00 80 */	addi r3, r1, 0x80
/* 80B2E9B0  4B 54 92 B8 */	b __ct__11dBgS_LinChkFv
/* 80B2E9B4  38 61 00 80 */	addi r3, r1, 0x80
/* 80B2E9B8  38 9E 04 BC */	addi r4, r30, 0x4bc
/* 80B2E9BC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B2E9C0  7F C6 F3 78 */	mr r6, r30
/* 80B2E9C4  4B 54 93 A0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80B2E9C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B2E9CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B2E9D0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B2E9D4  38 81 00 80 */	addi r4, r1, 0x80
/* 80B2E9D8  4B 54 59 DC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80B2E9DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B2E9E0  41 82 00 14 */	beq lbl_80B2E9F4
/* 80B2E9E4  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80B2E9E8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B2E9EC  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80B2E9F0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_80B2E9F4:
/* 80B2E9F4  38 61 00 80 */	addi r3, r1, 0x80
/* 80B2E9F8  38 80 FF FF */	li r4, -1
/* 80B2E9FC  4B 54 92 E0 */	b __dt__11dBgS_LinChkFv
lbl_80B2EA00:
/* 80B2EA00  2C 1D 00 00 */	cmpwi r29, 0
/* 80B2EA04  41 82 01 A8 */	beq lbl_80B2EBAC
/* 80B2EA08  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B2EA0C  4B 54 8B 70 */	b __ct__11dBgS_GndChkFv
/* 80B2EA10  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B2EA14  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B2EA18  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B2EA1C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B2EA20  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B2EA24  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B2EA28  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80B2EA2C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B2EA30  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B2EA34  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B2EA38  38 81 00 08 */	addi r4, r1, 8
/* 80B2EA3C  4B 73 92 EC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80B2EA40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B2EA44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B2EA48  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 80B2EA4C  7F 03 C3 78 */	mr r3, r24
/* 80B2EA50  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B2EA54  4B 54 5A 4C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80B2EA58  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80B2EA5C  EC 00 08 2A */	fadds f0, f0, f1
/* 80B2EA60  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80B2EA64  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B2EA68  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 80B2EA6C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B2EA70  4C 40 13 82 */	cror 2, 0, 2
/* 80B2EA74  40 82 01 2C */	bne lbl_80B2EBA0
/* 80B2EA78  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 80B2EA7C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80B2EA80  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B2EA84  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B2EA88  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B2EA8C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80B2EA90  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B2EA94  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80B2EA98  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B2EA9C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80B2EAA0  EC 02 00 2A */	fadds f0, f2, f0
/* 80B2EAA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B2EAA8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80B2EAAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80B2EAB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B2EAB4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B2EAB8  38 81 00 08 */	addi r4, r1, 8
/* 80B2EABC  4B 73 92 6C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80B2EAC0  7F 03 C3 78 */	mr r3, r24
/* 80B2EAC4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B2EAC8  4B 54 59 D8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80B2EACC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80B2EAD0  EC 20 08 2A */	fadds f1, f0, f1
/* 80B2EAD4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B2EAD8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B2EADC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B2EAE0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B2EAE4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B2EAE8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80B2EAEC  4B 73 8B 88 */	b cM_atan2s__Fff
/* 80B2EAF0  7C 03 00 D0 */	neg r0, r3
/* 80B2EAF4  B0 1E 05 C6 */	sth r0, 0x5c6(r30)
/* 80B2EAF8  A8 1E 05 C6 */	lha r0, 0x5c6(r30)
/* 80B2EAFC  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80B2EB00  41 81 00 0C */	bgt lbl_80B2EB0C
/* 80B2EB04  2C 00 D0 00 */	cmpwi r0, -12288
/* 80B2EB08  40 80 00 0C */	bge lbl_80B2EB14
lbl_80B2EB0C:
/* 80B2EB0C  38 00 00 00 */	li r0, 0
/* 80B2EB10  B0 1E 05 C6 */	sth r0, 0x5c6(r30)
lbl_80B2EB14:
/* 80B2EB14  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 80B2EB18  D0 41 00 08 */	stfs f2, 8(r1)
/* 80B2EB1C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B2EB20  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B2EB24  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B2EB28  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B2EB2C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80B2EB30  EC 01 00 2A */	fadds f0, f1, f0
/* 80B2EB34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B2EB38  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80B2EB3C  EC 02 00 2A */	fadds f0, f2, f0
/* 80B2EB40  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B2EB44  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B2EB48  38 81 00 08 */	addi r4, r1, 8
/* 80B2EB4C  4B 73 91 DC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80B2EB50  7F 03 C3 78 */	mr r3, r24
/* 80B2EB54  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B2EB58  4B 54 59 48 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80B2EB5C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80B2EB60  EC 20 08 2A */	fadds f1, f0, f1
/* 80B2EB64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B2EB68  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B2EB6C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B2EB70  C0 41 00 08 */	lfs f2, 8(r1)
/* 80B2EB74  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B2EB78  EC 42 00 28 */	fsubs f2, f2, f0
/* 80B2EB7C  4B 73 8A F8 */	b cM_atan2s__Fff
/* 80B2EB80  B0 7E 05 C8 */	sth r3, 0x5c8(r30)
/* 80B2EB84  A8 1E 05 C8 */	lha r0, 0x5c8(r30)
/* 80B2EB88  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80B2EB8C  41 81 00 0C */	bgt lbl_80B2EB98
/* 80B2EB90  2C 00 D0 00 */	cmpwi r0, -12288
/* 80B2EB94  40 80 00 0C */	bge lbl_80B2EBA0
lbl_80B2EB98:
/* 80B2EB98  38 00 00 00 */	li r0, 0
/* 80B2EB9C  B0 1E 05 C8 */	sth r0, 0x5c8(r30)
lbl_80B2EBA0:
/* 80B2EBA0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B2EBA4  38 80 FF FF */	li r4, -1
/* 80B2EBA8  4B 54 8A 48 */	b __dt__11dBgS_GndChkFv
lbl_80B2EBAC:
/* 80B2EBAC  2C 1B 00 00 */	cmpwi r27, 0
/* 80B2EBB0  41 82 00 2C */	beq lbl_80B2EBDC
/* 80B2EBB4  7F C3 F3 78 */	mr r3, r30
/* 80B2EBB8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B2EBBC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B2EBC0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B2EBC4  4B 4E BC 1C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B2EBC8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80B2EBCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2EBD0  40 80 00 0C */	bge lbl_80B2EBDC
/* 80B2EBD4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B2EBD8  4B 63 09 18 */	b setLookPos__9daPy_py_cFP4cXyz
lbl_80B2EBDC:
/* 80B2EBDC  39 61 01 20 */	addi r11, r1, 0x120
/* 80B2EBE0  4B 83 36 34 */	b _restgpr_24
/* 80B2EBE4  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80B2EBE8  7C 08 03 A6 */	mtlr r0
/* 80B2EBEC  38 21 01 20 */	addi r1, r1, 0x120
/* 80B2EBF0  4E 80 00 20 */	blr 
