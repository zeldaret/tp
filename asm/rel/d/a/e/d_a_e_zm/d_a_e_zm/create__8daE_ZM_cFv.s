lbl_80832064:
/* 80832064  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80832068  7C 08 02 A6 */	mflr r0
/* 8083206C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80832070  39 61 00 20 */	addi r11, r1, 0x20
/* 80832074  4B B3 01 64 */	b _savegpr_28
/* 80832078  7C 7D 1B 78 */	mr r29, r3
/* 8083207C  3C 80 80 83 */	lis r4, lit_3789@ha
/* 80832080  3B E4 2C F8 */	addi r31, r4, lit_3789@l
/* 80832084  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80832088  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8083208C  40 82 01 68 */	bne lbl_808321F4
/* 80832090  7F A0 EB 79 */	or. r0, r29, r29
/* 80832094  41 82 01 54 */	beq lbl_808321E8
/* 80832098  7C 1E 03 78 */	mr r30, r0
/* 8083209C  4B 7E 6A C8 */	b __ct__10fopAc_ac_cFv
/* 808320A0  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 808320A4  4B A8 EE C0 */	b __ct__15Z2CreatureEnemyFv
/* 808320A8  38 7E 06 6C */	addi r3, r30, 0x66c
/* 808320AC  3C 80 80 83 */	lis r4, __ct__4cXyzFv@ha
/* 808320B0  38 84 27 94 */	addi r4, r4, __ct__4cXyzFv@l
/* 808320B4  3C A0 80 83 */	lis r5, __dt__4cXyzFv@ha
/* 808320B8  38 A5 2C A8 */	addi r5, r5, __dt__4cXyzFv@l
/* 808320BC  38 C0 00 0C */	li r6, 0xc
/* 808320C0  38 E0 00 0A */	li r7, 0xa
/* 808320C4  4B B2 FC 9C */	b __construct_array
/* 808320C8  38 7E 07 3C */	addi r3, r30, 0x73c
/* 808320CC  4B 84 3D E0 */	b __ct__12dBgS_AcchCirFv
/* 808320D0  3B 9E 07 7C */	addi r28, r30, 0x77c
/* 808320D4  7F 83 E3 78 */	mr r3, r28
/* 808320D8  4B 84 3F C8 */	b __ct__9dBgS_AcchFv
/* 808320DC  3C 60 80 83 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 808320E0  38 63 2F 48 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 808320E4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 808320E8  38 03 00 0C */	addi r0, r3, 0xc
/* 808320EC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 808320F0  38 03 00 18 */	addi r0, r3, 0x18
/* 808320F4  90 1C 00 24 */	stw r0, 0x24(r28)
/* 808320F8  38 7C 00 14 */	addi r3, r28, 0x14
/* 808320FC  4B 84 6D 6C */	b SetObj__16dBgS_PolyPassChkFv
/* 80832100  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80832104  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80832108  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 8083210C  38 7E 09 70 */	addi r3, r30, 0x970
/* 80832110  4B 85 16 50 */	b __ct__10dCcD_GSttsFv
/* 80832114  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80832118  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8083211C  90 7E 09 6C */	stw r3, 0x96c(r30)
/* 80832120  38 03 00 20 */	addi r0, r3, 0x20
/* 80832124  90 1E 09 70 */	stw r0, 0x970(r30)
/* 80832128  3B 9E 09 90 */	addi r28, r30, 0x990
/* 8083212C  7F 83 E3 78 */	mr r3, r28
/* 80832130  4B 85 18 F8 */	b __ct__12dCcD_GObjInfFv
/* 80832134  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80832138  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8083213C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80832140  3C 60 80 83 */	lis r3, __vt__8cM3dGAab@ha
/* 80832144  38 03 2F 3C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80832148  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8083214C  3C 60 80 83 */	lis r3, __vt__8cM3dGCyl@ha
/* 80832150  38 03 2F 30 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80832154  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80832158  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8083215C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80832160  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80832164  38 03 00 58 */	addi r0, r3, 0x58
/* 80832168  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8083216C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80832170  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80832174  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80832178  38 03 00 2C */	addi r0, r3, 0x2c
/* 8083217C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80832180  38 03 00 84 */	addi r0, r3, 0x84
/* 80832184  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80832188  3B 9E 0A CC */	addi r28, r30, 0xacc
/* 8083218C  7F 83 E3 78 */	mr r3, r28
/* 80832190  4B 85 18 98 */	b __ct__12dCcD_GObjInfFv
/* 80832194  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80832198  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8083219C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 808321A0  3C 60 80 83 */	lis r3, __vt__8cM3dGAab@ha
/* 808321A4  38 03 2F 3C */	addi r0, r3, __vt__8cM3dGAab@l
/* 808321A8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 808321AC  3C 60 80 83 */	lis r3, __vt__8cM3dGSph@ha
/* 808321B0  38 03 2F 24 */	addi r0, r3, __vt__8cM3dGSph@l
/* 808321B4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 808321B8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 808321BC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 808321C0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 808321C4  38 03 00 58 */	addi r0, r3, 0x58
/* 808321C8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 808321CC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 808321D0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 808321D4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 808321D8  38 03 00 2C */	addi r0, r3, 0x2c
/* 808321DC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 808321E0  38 03 00 84 */	addi r0, r3, 0x84
/* 808321E4  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_808321E8:
/* 808321E8  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 808321EC  60 00 00 08 */	ori r0, r0, 8
/* 808321F0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_808321F4:
/* 808321F4  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 808321F8  3C 80 80 83 */	lis r4, stringBase0@ha
/* 808321FC  38 84 2D B8 */	addi r4, r4, stringBase0@l
/* 80832200  4B 7F AC BC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80832204  7C 7E 1B 78 */	mr r30, r3
/* 80832208  2C 1E 00 04 */	cmpwi r30, 4
/* 8083220C  40 82 03 58 */	bne lbl_80832564
/* 80832210  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80832214  98 1D 07 26 */	stb r0, 0x726(r29)
/* 80832218  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8083221C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80832220  98 1D 07 27 */	stb r0, 0x727(r29)
/* 80832224  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80832228  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8083222C  98 1D 07 28 */	stb r0, 0x728(r29)
/* 80832230  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80832234  54 00 46 3E */	srwi r0, r0, 0x18
/* 80832238  98 1D 07 29 */	stb r0, 0x729(r29)
/* 8083223C  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80832240  98 1D 07 2A */	stb r0, 0x72a(r29)
/* 80832244  38 60 00 00 */	li r3, 0
/* 80832248  B0 7D 04 E8 */	sth r3, 0x4e8(r29)
/* 8083224C  B0 7D 04 E0 */	sth r3, 0x4e0(r29)
/* 80832250  88 1D 07 26 */	lbz r0, 0x726(r29)
/* 80832254  28 00 00 FF */	cmplwi r0, 0xff
/* 80832258  40 82 00 08 */	bne lbl_80832260
/* 8083225C  98 7D 07 26 */	stb r3, 0x726(r29)
lbl_80832260:
/* 80832260  88 1D 07 28 */	lbz r0, 0x728(r29)
/* 80832264  28 00 00 FF */	cmplwi r0, 0xff
/* 80832268  40 82 00 0C */	bne lbl_80832274
/* 8083226C  38 00 00 00 */	li r0, 0
/* 80832270  98 1D 07 28 */	stb r0, 0x728(r29)
lbl_80832274:
/* 80832274  88 1D 07 26 */	lbz r0, 0x726(r29)
/* 80832278  28 00 00 00 */	cmplwi r0, 0
/* 8083227C  41 82 00 14 */	beq lbl_80832290
/* 80832280  28 00 00 01 */	cmplwi r0, 1
/* 80832284  41 82 00 0C */	beq lbl_80832290
/* 80832288  28 00 00 02 */	cmplwi r0, 2
/* 8083228C  40 82 00 34 */	bne lbl_808322C0
lbl_80832290:
/* 80832290  88 9D 07 29 */	lbz r4, 0x729(r29)
/* 80832294  28 04 00 FF */	cmplwi r4, 0xff
/* 80832298  41 82 00 34 */	beq lbl_808322CC
/* 8083229C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808322A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808322A4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 808322A8  7C 05 07 74 */	extsb r5, r0
/* 808322AC  4B 80 30 B4 */	b isSwitch__10dSv_info_cCFii
/* 808322B0  2C 03 00 00 */	cmpwi r3, 0
/* 808322B4  41 82 00 18 */	beq lbl_808322CC
/* 808322B8  38 60 00 05 */	li r3, 5
/* 808322BC  48 00 02 AC */	b lbl_80832568
lbl_808322C0:
/* 808322C0  38 00 00 FF */	li r0, 0xff
/* 808322C4  98 1D 07 29 */	stb r0, 0x729(r29)
/* 808322C8  98 1D 07 2A */	stb r0, 0x72a(r29)
lbl_808322CC:
/* 808322CC  88 1D 07 26 */	lbz r0, 0x726(r29)
/* 808322D0  28 00 00 0A */	cmplwi r0, 0xa
/* 808322D4  40 82 00 38 */	bne lbl_8083230C
/* 808322D8  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 808322DC  54 00 00 3E */	slwi r0, r0, 0
/* 808322E0  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 808322E4  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 808322E8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 808322EC  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 808322F0  38 00 00 00 */	li r0, 0
/* 808322F4  98 1D 05 46 */	stb r0, 0x546(r29)
/* 808322F8  98 1D 04 96 */	stb r0, 0x496(r29)
/* 808322FC  38 00 00 FF */	li r0, 0xff
/* 80832300  98 1D 07 29 */	stb r0, 0x729(r29)
/* 80832304  98 1D 07 2A */	stb r0, 0x72a(r29)
/* 80832308  48 00 02 5C */	b lbl_80832564
lbl_8083230C:
/* 8083230C  28 00 00 14 */	cmplwi r0, 0x14
/* 80832310  41 82 00 28 */	beq lbl_80832338
/* 80832314  7F A3 EB 78 */	mr r3, r29
/* 80832318  3C 80 80 83 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8083231C  38 84 20 44 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80832320  38 A0 0A 90 */	li r5, 0xa90
/* 80832324  4B 7E 81 8C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80832328  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083232C  40 82 00 0C */	bne lbl_80832338
/* 80832330  38 60 00 05 */	li r3, 5
/* 80832334  48 00 02 34 */	b lbl_80832568
lbl_80832338:
/* 80832338  88 1D 07 26 */	lbz r0, 0x726(r29)
/* 8083233C  28 00 00 14 */	cmplwi r0, 0x14
/* 80832340  41 82 00 30 */	beq lbl_80832370
/* 80832344  3C 60 80 83 */	lis r3, data_80832F80@ha
/* 80832348  8C 03 2F 80 */	lbzu r0, data_80832F80@l(r3)
/* 8083234C  28 00 00 00 */	cmplwi r0, 0
/* 80832350  40 82 00 20 */	bne lbl_80832370
/* 80832354  38 00 00 01 */	li r0, 1
/* 80832358  98 03 00 00 */	stb r0, 0(r3)
/* 8083235C  98 1D 0C 28 */	stb r0, 0xc28(r29)
/* 80832360  38 00 FF FF */	li r0, -1
/* 80832364  3C 60 80 83 */	lis r3, l_HIO@ha
/* 80832368  38 63 2F 90 */	addi r3, r3, l_HIO@l
/* 8083236C  98 03 00 04 */	stb r0, 4(r3)
lbl_80832370:
/* 80832370  38 7D 09 54 */	addi r3, r29, 0x954
/* 80832374  38 80 00 FE */	li r4, 0xfe
/* 80832378  38 A0 00 00 */	li r5, 0
/* 8083237C  7F A6 EB 78 */	mr r6, r29
/* 80832380  4B 85 14 E0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80832384  7F A3 EB 78 */	mr r3, r29
/* 80832388  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8083238C  FC 40 08 90 */	fmr f2, f1
/* 80832390  FC 60 08 90 */	fmr f3, f1
/* 80832394  4B 7E 81 94 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80832398  7F A3 EB 78 */	mr r3, r29
/* 8083239C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 808323A0  FC 40 08 90 */	fmr f2, f1
/* 808323A4  FC 60 08 90 */	fmr f3, f1
/* 808323A8  4B 7E 81 90 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 808323AC  38 00 00 00 */	li r0, 0
/* 808323B0  90 01 00 08 */	stw r0, 8(r1)
/* 808323B4  38 7D 07 7C */	addi r3, r29, 0x77c
/* 808323B8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 808323BC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 808323C0  7F A6 EB 78 */	mr r6, r29
/* 808323C4  38 E0 00 01 */	li r7, 1
/* 808323C8  39 1D 07 3C */	addi r8, r29, 0x73c
/* 808323CC  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 808323D0  39 40 00 00 */	li r10, 0
/* 808323D4  4B 84 3E 74 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 808323D8  38 7D 07 3C */	addi r3, r29, 0x73c
/* 808323DC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 808323E0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 808323E4  4B 84 3B 74 */	b SetWall__12dBgS_AcchCirFff
/* 808323E8  38 00 00 78 */	li r0, 0x78
/* 808323EC  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 808323F0  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 808323F4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 808323F8  3C 60 80 83 */	lis r3, l_HIO@ha
/* 808323FC  38 63 2F 90 */	addi r3, r3, l_HIO@l
/* 80832400  C0 03 00 08 */	lfs f0, 8(r3)
/* 80832404  EC 21 00 32 */	fmuls f1, f1, f0
/* 80832408  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8083240C  D0 1D 06 F4 */	stfs f0, 0x6f4(r29)
/* 80832410  D0 3D 06 F8 */	stfs f1, 0x6f8(r29)
/* 80832414  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 80832418  38 60 00 00 */	li r3, 0
/* 8083241C  38 00 00 03 */	li r0, 3
/* 80832420  7C 09 03 A6 */	mtctr r0
lbl_80832424:
/* 80832424  38 03 07 08 */	addi r0, r3, 0x708
/* 80832428  7C 1D 05 2E */	stfsx f0, r29, r0
/* 8083242C  38 63 00 04 */	addi r3, r3, 4
/* 80832430  42 00 FF F4 */	bdnz lbl_80832424
/* 80832434  38 60 00 00 */	li r3, 0
/* 80832438  98 7D 05 46 */	stb r3, 0x546(r29)
/* 8083243C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80832440  54 00 00 3E */	slwi r0, r0, 0
/* 80832444  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80832448  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 8083244C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80832450  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80832454  88 1D 07 26 */	lbz r0, 0x726(r29)
/* 80832458  2C 00 00 14 */	cmpwi r0, 0x14
/* 8083245C  41 82 00 1C */	beq lbl_80832478
/* 80832460  40 80 00 6C */	bge lbl_808324CC
/* 80832464  2C 00 00 03 */	cmpwi r0, 3
/* 80832468  40 80 00 64 */	bge lbl_808324CC
/* 8083246C  2C 00 00 01 */	cmpwi r0, 1
/* 80832470  40 80 00 44 */	bge lbl_808324B4
/* 80832474  48 00 00 58 */	b lbl_808324CC
lbl_80832478:
/* 80832478  98 7D 04 96 */	stb r3, 0x496(r29)
/* 8083247C  38 00 00 FF */	li r0, 0xff
/* 80832480  98 1D 07 29 */	stb r0, 0x729(r29)
/* 80832484  98 1D 07 2A */	stb r0, 0x72a(r29)
/* 80832488  38 7D 0A CC */	addi r3, r29, 0xacc
/* 8083248C  3C 80 80 83 */	lis r4, data_80832E40@ha
/* 80832490  38 84 2E 40 */	addi r4, r4, data_80832E40@l
/* 80832494  4B 85 25 A0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80832498  38 1D 09 54 */	addi r0, r29, 0x954
/* 8083249C  90 1D 0B 10 */	stw r0, 0xb10(r29)
/* 808324A0  7F A3 EB 78 */	mr r3, r29
/* 808324A4  38 80 00 06 */	li r4, 6
/* 808324A8  38 A0 00 00 */	li r5, 0
/* 808324AC  4B FF D7 D5 */	bl setActionMode__8daE_ZM_cFii
/* 808324B0  48 00 00 B4 */	b lbl_80832564
lbl_808324B4:
/* 808324B4  38 00 00 02 */	li r0, 2
/* 808324B8  98 1D 07 25 */	stb r0, 0x725(r29)
/* 808324BC  7F A3 EB 78 */	mr r3, r29
/* 808324C0  38 80 00 00 */	li r4, 0
/* 808324C4  38 A0 00 00 */	li r5, 0
/* 808324C8  4B FF D7 B9 */	bl setActionMode__8daE_ZM_cFii
lbl_808324CC:
/* 808324CC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 808324D0  80 63 00 04 */	lwz r3, 4(r3)
/* 808324D4  38 03 00 24 */	addi r0, r3, 0x24
/* 808324D8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 808324DC  38 7D 09 90 */	addi r3, r29, 0x990
/* 808324E0  3C 80 80 83 */	lis r4, data_80832DFC@ha
/* 808324E4  38 84 2D FC */	addi r4, r4, data_80832DFC@l
/* 808324E8  4B 85 23 CC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 808324EC  38 1D 09 54 */	addi r0, r29, 0x954
/* 808324F0  90 1D 09 D4 */	stw r0, 0x9d4(r29)
/* 808324F4  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 808324F8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 808324FC  38 BD 05 38 */	addi r5, r29, 0x538
/* 80832500  38 C0 00 03 */	li r6, 3
/* 80832504  38 E0 00 01 */	li r7, 1
/* 80832508  4B A8 EB 8C */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8083250C  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 80832510  3C 80 80 83 */	lis r4, stringBase0@ha
/* 80832514  38 84 2D B8 */	addi r4, r4, stringBase0@l
/* 80832518  38 84 00 05 */	addi r4, r4, 5
/* 8083251C  4B A8 F6 74 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 80832520  38 1D 05 B8 */	addi r0, r29, 0x5b8
/* 80832524  90 1D 0C 0C */	stw r0, 0xc0c(r29)
/* 80832528  38 00 00 02 */	li r0, 2
/* 8083252C  98 1D 0C 22 */	stb r0, 0xc22(r29)
/* 80832530  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80832534  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80832538  7F A3 EB 78 */	mr r3, r29
/* 8083253C  4B FF F5 CD */	bl mtx_set__8daE_ZM_cFv
/* 80832540  88 1D 07 26 */	lbz r0, 0x726(r29)
/* 80832544  28 00 00 01 */	cmplwi r0, 1
/* 80832548  41 82 00 1C */	beq lbl_80832564
/* 8083254C  28 00 00 02 */	cmplwi r0, 2
/* 80832550  41 82 00 14 */	beq lbl_80832564
/* 80832554  7F A3 EB 78 */	mr r3, r29
/* 80832558  38 80 00 01 */	li r4, 1
/* 8083255C  38 A0 00 00 */	li r5, 0
/* 80832560  4B FF D7 21 */	bl setActionMode__8daE_ZM_cFii
lbl_80832564:
/* 80832564  7F C3 F3 78 */	mr r3, r30
lbl_80832568:
/* 80832568  39 61 00 20 */	addi r11, r1, 0x20
/* 8083256C  4B B2 FC B8 */	b _restgpr_28
/* 80832570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80832574  7C 08 03 A6 */	mtlr r0
/* 80832578  38 21 00 20 */	addi r1, r1, 0x20
/* 8083257C  4E 80 00 20 */	blr 
