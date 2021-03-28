lbl_8075030C:
/* 8075030C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80750310  7C 08 02 A6 */	mflr r0
/* 80750314  90 01 00 94 */	stw r0, 0x94(r1)
/* 80750318  39 61 00 90 */	addi r11, r1, 0x90
/* 8075031C  4B C1 1E AC */	b _savegpr_24
/* 80750320  7C 7F 1B 78 */	mr r31, r3
/* 80750324  3C 80 80 75 */	lis r4, lit_1109@ha
/* 80750328  3B 84 7E 10 */	addi r28, r4, lit_1109@l
/* 8075032C  3C 80 80 75 */	lis r4, lit_3917@ha
/* 80750330  3B A4 76 FC */	addi r29, r4, lit_3917@l
/* 80750334  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80750338  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 8075033C  83 5E 5D AC */	lwz r26, 0x5dac(r30)
/* 80750340  88 1E 5D B0 */	lbz r0, 0x5db0(r30)
/* 80750344  7C 00 07 74 */	extsb r0, r0
/* 80750348  38 9E 5D 74 */	addi r4, r30, 0x5d74
/* 8075034C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80750350  7F 64 00 2E */	lwzx r27, r4, r0
/* 80750354  83 3E 5D 74 */	lwz r25, 0x5d74(r30)
/* 80750358  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 8075035C  28 00 00 0F */	cmplwi r0, 0xf
/* 80750360  41 81 09 68 */	bgt lbl_80750CC8
/* 80750364  3C 80 80 75 */	lis r4, lit_5903@ha
/* 80750368  38 84 7B D8 */	addi r4, r4, lit_5903@l
/* 8075036C  54 00 10 3A */	slwi r0, r0, 2
/* 80750370  7C 04 00 2E */	lwzx r0, r4, r0
/* 80750374  7C 09 03 A6 */	mtctr r0
/* 80750378  4E 80 04 20 */	bctr 
lbl_8075037C:
/* 8075037C  7F 44 D3 78 */	mr r4, r26
/* 80750380  4B 8C A3 90 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80750384  3C 63 00 01 */	addis r3, r3, 1
/* 80750388  38 03 80 00 */	addi r0, r3, -32768
/* 8075038C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80750390  88 1F 05 C0 */	lbz r0, 0x5c0(r31)
/* 80750394  28 00 00 00 */	cmplwi r0, 0
/* 80750398  40 82 00 58 */	bne lbl_807503F0
/* 8075039C  4B A0 F0 88 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 807503A0  2C 03 00 00 */	cmpwi r3, 0
/* 807503A4  41 82 09 24 */	beq lbl_80750CC8
/* 807503A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807503AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807503B0  3B 03 56 B8 */	addi r24, r3, 0x56b8
/* 807503B4  7F 03 C3 78 */	mr r3, r24
/* 807503B8  38 80 00 00 */	li r4, 0
/* 807503BC  4B 92 04 88 */	b GetLockonList__12dAttention_cFl
/* 807503C0  28 03 00 00 */	cmplwi r3, 0
/* 807503C4  41 82 09 04 */	beq lbl_80750CC8
/* 807503C8  7F 03 C3 78 */	mr r3, r24
/* 807503CC  4B 92 34 18 */	b LockonTruth__12dAttention_cFv
/* 807503D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807503D4  41 82 08 F4 */	beq lbl_80750CC8
/* 807503D8  7F 03 C3 78 */	mr r3, r24
/* 807503DC  38 80 00 00 */	li r4, 0
/* 807503E0  4B 92 04 64 */	b GetLockonList__12dAttention_cFl
/* 807503E4  4B 92 34 80 */	b getActor__10dAttList_cFv
/* 807503E8  7C 03 F8 40 */	cmplw r3, r31
/* 807503EC  40 82 08 DC */	bne lbl_80750CC8
lbl_807503F0:
/* 807503F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700CC@ha */
/* 807503F4  38 03 00 CC */	addi r0, r3, 0x00CC /* 0x000700CC@l */
/* 807503F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807503FC  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80750400  38 81 00 10 */	addi r4, r1, 0x10
/* 80750404  38 A0 FF FF */	li r5, -1
/* 80750408  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 8075040C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80750410  7D 89 03 A6 */	mtctr r12
/* 80750414  4E 80 04 21 */	bctrl 
/* 80750418  38 00 00 01 */	li r0, 1
/* 8075041C  98 1F 05 C0 */	stb r0, 0x5c0(r31)
/* 80750420  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80750424  28 00 00 02 */	cmplwi r0, 2
/* 80750428  41 82 00 5C */	beq lbl_80750484
/* 8075042C  7F E3 FB 78 */	mr r3, r31
/* 80750430  38 80 00 02 */	li r4, 2
/* 80750434  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80750438  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8075043C  38 C0 00 00 */	li r6, 0
/* 80750440  4B 8C B4 C8 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80750444  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80750448  60 00 00 02 */	ori r0, r0, 2
/* 8075044C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80750450  C0 19 00 D8 */	lfs f0, 0xd8(r25)
/* 80750454  D0 1F 08 38 */	stfs f0, 0x838(r31)
/* 80750458  C0 19 00 DC */	lfs f0, 0xdc(r25)
/* 8075045C  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 80750460  C0 19 00 E0 */	lfs f0, 0xe0(r25)
/* 80750464  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 80750468  C0 19 00 E4 */	lfs f0, 0xe4(r25)
/* 8075046C  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 80750470  C0 19 00 E8 */	lfs f0, 0xe8(r25)
/* 80750474  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 80750478  C0 19 00 EC */	lfs f0, 0xec(r25)
/* 8075047C  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 80750480  48 00 09 F0 */	b lbl_80750E70
lbl_80750484:
/* 80750484  38 7B 02 48 */	addi r3, r27, 0x248
/* 80750488  4B A1 10 48 */	b Stop__9dCamera_cFv
/* 8075048C  38 7B 02 48 */	addi r3, r27, 0x248
/* 80750490  38 80 00 03 */	li r4, 3
/* 80750494  4B A1 2B 78 */	b SetTrimSize__9dCamera_cFl
/* 80750498  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 8075049C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807504A0  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 807504A4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807504A8  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 807504AC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807504B0  7F E3 FB 78 */	mr r3, r31
/* 807504B4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807504B8  4B 8C A2 58 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807504BC  7C 65 1B 78 */	mr r5, r3
/* 807504C0  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 807504C4  38 81 00 5C */	addi r4, r1, 0x5c
/* 807504C8  3C A5 00 01 */	addis r5, r5, 1
/* 807504CC  38 05 80 00 */	addi r0, r5, -32768
/* 807504D0  7C 05 07 34 */	extsh r5, r0
/* 807504D4  38 C0 00 00 */	li r6, 0
/* 807504D8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807504DC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807504E0  7D 89 03 A6 */	mtctr r12
/* 807504E4  4E 80 04 21 */	bctrl 
/* 807504E8  7F E3 FB 78 */	mr r3, r31
/* 807504EC  38 80 00 13 */	li r4, 0x13
/* 807504F0  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 807504F4  38 A0 00 02 */	li r5, 2
/* 807504F8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807504FC  4B FF C1 65 */	bl anm_init__FP10e_po_classifUcf
/* 80750500  7F E3 FB 78 */	mr r3, r31
/* 80750504  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80750508  4B 8C A2 08 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8075050C  7C 64 1B 78 */	mr r4, r3
/* 80750510  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80750514  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80750518  80 63 00 00 */	lwz r3, 0(r3)
/* 8075051C  3C 84 00 01 */	addis r4, r4, 1
/* 80750520  38 04 80 00 */	addi r0, r4, -32768
/* 80750524  7C 04 07 34 */	extsh r4, r0
/* 80750528  4B 8B BE B4 */	b mDoMtx_YrotS__FPA4_fs
/* 8075052C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80750530  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80750534  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80750538  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 8075053C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80750540  38 61 00 5C */	addi r3, r1, 0x5c
/* 80750544  38 81 00 50 */	addi r4, r1, 0x50
/* 80750548  4B B2 09 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8075054C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80750550  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80750554  EC 01 00 2A */	fadds f0, f1, f0
/* 80750558  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8075055C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80750560  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80750564  EC 01 00 2A */	fadds f0, f1, f0
/* 80750568  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8075056C  7F E3 FB 78 */	mr r3, r31
/* 80750570  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80750574  4B 8C A1 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80750578  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8075057C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80750580  3C 63 00 01 */	addis r3, r3, 1
/* 80750584  38 03 80 00 */	addi r0, r3, -32768
/* 80750588  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8075058C  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80750590  D0 1F 08 20 */	stfs f0, 0x820(r31)
/* 80750594  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80750598  D0 1F 08 24 */	stfs f0, 0x824(r31)
/* 8075059C  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 807505A0  D0 1F 08 28 */	stfs f0, 0x828(r31)
/* 807505A4  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 807505A8  C0 3F 09 28 */	lfs f1, 0x928(r31)
/* 807505AC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807505B0  41 82 00 08 */	beq lbl_807505B8
/* 807505B4  D0 3F 08 24 */	stfs f1, 0x824(r31)
lbl_807505B8:
/* 807505B8  38 00 00 19 */	li r0, 0x19
/* 807505BC  98 1F 05 46 */	stb r0, 0x546(r31)
/* 807505C0  38 00 00 0B */	li r0, 0xb
/* 807505C4  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 807505C8  38 00 00 00 */	li r0, 0
/* 807505CC  98 1F 05 C1 */	stb r0, 0x5c1(r31)
/* 807505D0  48 00 06 F8 */	b lbl_80750CC8
lbl_807505D4:
/* 807505D4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807505D8  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 807505DC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807505E0  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 807505E4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807505E8  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 807505EC  C0 3F 08 48 */	lfs f1, 0x848(r31)
/* 807505F0  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 807505F4  EC 01 00 2A */	fadds f0, f1, f0
/* 807505F8  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 807505FC  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80750600  4B 8C A1 10 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80750604  7C 64 1B 78 */	mr r4, r3
/* 80750608  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8075060C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80750610  80 63 00 00 */	lwz r3, 0(r3)
/* 80750614  4B 8B BD C8 */	b mDoMtx_YrotS__FPA4_fs
/* 80750618  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8075061C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80750620  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80750624  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80750628  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8075062C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80750630  38 81 00 50 */	addi r4, r1, 0x50
/* 80750634  4B B2 08 B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80750638  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8075063C  D0 1F 08 38 */	stfs f0, 0x838(r31)
/* 80750640  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80750644  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 80750648  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8075064C  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 80750650  38 7F 08 38 */	addi r3, r31, 0x838
/* 80750654  38 81 00 50 */	addi r4, r1, 0x50
/* 80750658  7C 65 1B 78 */	mr r5, r3
/* 8075065C  4B BF 6A 34 */	b PSVECAdd
/* 80750660  C0 1F 08 44 */	lfs f0, 0x844(r31)
/* 80750664  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80750668  C0 1F 08 48 */	lfs f0, 0x848(r31)
/* 8075066C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80750670  C0 1F 08 4C */	lfs f0, 0x84c(r31)
/* 80750674  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80750678  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 8075067C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80750680  C0 1F 08 3C */	lfs f0, 0x83c(r31)
/* 80750684  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80750688  C0 1F 08 40 */	lfs f0, 0x840(r31)
/* 8075068C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80750690  38 7B 02 48 */	addi r3, r27, 0x248
/* 80750694  38 81 00 44 */	addi r4, r1, 0x44
/* 80750698  38 A1 00 38 */	addi r5, r1, 0x38
/* 8075069C  4B A3 04 0C */	b Set__9dCamera_cF4cXyz4cXyz
/* 807506A0  7F E3 FB 78 */	mr r3, r31
/* 807506A4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807506A8  4B 8C A0 68 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807506AC  7C 64 1B 78 */	mr r4, r3
/* 807506B0  38 7F 04 DE */	addi r3, r31, 0x4de
/* 807506B4  38 A0 00 08 */	li r5, 8
/* 807506B8  38 C0 08 00 */	li r6, 0x800
/* 807506BC  4B B1 FF 4C */	b cLib_addCalcAngleS2__FPssss
/* 807506C0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 807506C4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 807506C8  7F E3 FB 78 */	mr r3, r31
/* 807506CC  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807506D0  4B 8C A0 40 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807506D4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807506D8  7C 03 00 50 */	subf r0, r3, r0
/* 807506DC  7C 03 07 34 */	extsh r3, r0
/* 807506E0  4B C1 49 F0 */	b abs
/* 807506E4  2C 03 01 00 */	cmpwi r3, 0x100
/* 807506E8  41 81 05 E0 */	bgt lbl_80750CC8
/* 807506EC  7F E3 FB 78 */	mr r3, r31
/* 807506F0  38 80 00 16 */	li r4, 0x16
/* 807506F4  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 807506F8  38 A0 00 02 */	li r5, 2
/* 807506FC  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80750700  4B FF BF 61 */	bl anm_init__FP10e_po_classifUcf
/* 80750704  80 1F 0D 48 */	lwz r0, 0xd48(r31)
/* 80750708  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8075070C  90 1F 0D 48 */	stw r0, 0xd48(r31)
/* 80750710  38 00 00 28 */	li r0, 0x28
/* 80750714  B0 1F 07 4A */	sth r0, 0x74a(r31)
/* 80750718  38 00 00 0C */	li r0, 0xc
/* 8075071C  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80750720  48 00 05 A8 */	b lbl_80750CC8
lbl_80750724:
/* 80750724  A8 1F 07 4A */	lha r0, 0x74a(r31)
/* 80750728  2C 00 00 00 */	cmpwi r0, 0
/* 8075072C  41 82 00 40 */	beq lbl_8075076C
/* 80750730  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80750734  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80750738  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 8075073C  C0 7D 00 7C */	lfs f3, 0x7c(r29)
/* 80750740  4B B1 F2 FC */	b cLib_addCalc2__FPffff
/* 80750744  A8 1F 07 4A */	lha r0, 0x74a(r31)
/* 80750748  2C 00 00 01 */	cmpwi r0, 1
/* 8075074C  40 82 05 7C */	bne lbl_80750CC8
/* 80750750  7F E3 FB 78 */	mr r3, r31
/* 80750754  38 80 00 13 */	li r4, 0x13
/* 80750758  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8075075C  38 A0 00 02 */	li r5, 2
/* 80750760  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80750764  4B FF BE FD */	bl anm_init__FP10e_po_classifUcf
/* 80750768  48 00 05 60 */	b lbl_80750CC8
lbl_8075076C:
/* 8075076C  7F 44 D3 78 */	mr r4, r26
/* 80750770  4B 8C 9F A0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80750774  7C 63 07 34 */	extsh r3, r3
/* 80750778  3C 63 00 01 */	addis r3, r3, 1
/* 8075077C  38 03 80 00 */	addi r0, r3, -32768
/* 80750780  7C 00 46 70 */	srawi r0, r0, 8
/* 80750784  7C 00 01 94 */	addze r0, r0
/* 80750788  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8075078C  B0 1C 00 88 */	sth r0, 0x88(r28)
/* 80750790  B0 1F 07 E0 */	sth r0, 0x7e0(r31)
/* 80750794  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80750798  D0 1F 07 D4 */	stfs f0, 0x7d4(r31)
/* 8075079C  38 00 00 00 */	li r0, 0
/* 807507A0  B0 1F 07 E2 */	sth r0, 0x7e2(r31)
/* 807507A4  B0 1F 07 DE */	sth r0, 0x7de(r31)
/* 807507A8  38 00 00 0A */	li r0, 0xa
/* 807507AC  B0 1F 07 4A */	sth r0, 0x74a(r31)
/* 807507B0  3C 60 80 75 */	lis r3, mHaba@ha
/* 807507B4  C0 03 7A DC */	lfs f0, mHaba@l(r3)
/* 807507B8  D0 1F 08 04 */	stfs f0, 0x804(r31)
/* 807507BC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807507C0  38 03 00 01 */	addi r0, r3, 1
/* 807507C4  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 807507C8  48 00 05 00 */	b lbl_80750CC8
lbl_807507CC:
/* 807507CC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807507D0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807507D4  38 80 00 13 */	li r4, 0x13
/* 807507D8  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 807507DC  38 A0 00 02 */	li r5, 2
/* 807507E0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807507E4  4B FF BE 7D */	bl anm_init__FP10e_po_classifUcf
/* 807507E8  3C 60 80 75 */	lis r3, mHaba@ha
/* 807507EC  C0 03 7A DC */	lfs f0, mHaba@l(r3)
/* 807507F0  D0 1F 08 04 */	stfs f0, 0x804(r31)
/* 807507F4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807507F8  38 03 00 01 */	addi r0, r3, 1
/* 807507FC  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80750800  48 00 04 C8 */	b lbl_80750CC8
lbl_80750804:
/* 80750804  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80750808  D0 1F 08 20 */	stfs f0, 0x820(r31)
/* 8075080C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80750810  D0 1F 08 24 */	stfs f0, 0x824(r31)
/* 80750814  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80750818  D0 1F 08 28 */	stfs f0, 0x828(r31)
/* 8075081C  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 80750820  C0 3F 09 28 */	lfs f1, 0x928(r31)
/* 80750824  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80750828  41 82 00 08 */	beq lbl_80750830
/* 8075082C  D0 3F 08 24 */	stfs f1, 0x824(r31)
lbl_80750830:
/* 80750830  38 61 00 2C */	addi r3, r1, 0x2c
/* 80750834  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80750838  38 BF 08 2C */	addi r5, r31, 0x82c
/* 8075083C  4B B1 62 F8 */	b __mi__4cXyzCFRC3Vec
/* 80750840  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80750844  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80750848  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8075084C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80750850  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80750854  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80750858  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 8075085C  D0 1F 07 D4 */	stfs f0, 0x7d4(r31)
/* 80750860  38 61 00 5C */	addi r3, r1, 0x5c
/* 80750864  4B BF 68 D4 */	b PSVECSquareMag
/* 80750868  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8075086C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80750870  40 81 00 58 */	ble lbl_807508C8
/* 80750874  FC 00 08 34 */	frsqrte f0, f1
/* 80750878  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 8075087C  FC 44 00 32 */	fmul f2, f4, f0
/* 80750880  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 80750884  FC 00 00 32 */	fmul f0, f0, f0
/* 80750888  FC 01 00 32 */	fmul f0, f1, f0
/* 8075088C  FC 03 00 28 */	fsub f0, f3, f0
/* 80750890  FC 02 00 32 */	fmul f0, f2, f0
/* 80750894  FC 44 00 32 */	fmul f2, f4, f0
/* 80750898  FC 00 00 32 */	fmul f0, f0, f0
/* 8075089C  FC 01 00 32 */	fmul f0, f1, f0
/* 807508A0  FC 03 00 28 */	fsub f0, f3, f0
/* 807508A4  FC 02 00 32 */	fmul f0, f2, f0
/* 807508A8  FC 44 00 32 */	fmul f2, f4, f0
/* 807508AC  FC 00 00 32 */	fmul f0, f0, f0
/* 807508B0  FC 01 00 32 */	fmul f0, f1, f0
/* 807508B4  FC 03 00 28 */	fsub f0, f3, f0
/* 807508B8  FC 02 00 32 */	fmul f0, f2, f0
/* 807508BC  FC 21 00 32 */	fmul f1, f1, f0
/* 807508C0  FC 20 08 18 */	frsp f1, f1
/* 807508C4  48 00 00 88 */	b lbl_8075094C
lbl_807508C8:
/* 807508C8  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 807508CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807508D0  40 80 00 10 */	bge lbl_807508E0
/* 807508D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807508D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807508DC  48 00 00 70 */	b lbl_8075094C
lbl_807508E0:
/* 807508E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 807508E4  80 81 00 08 */	lwz r4, 8(r1)
/* 807508E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807508EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807508F0  7C 03 00 00 */	cmpw r3, r0
/* 807508F4  41 82 00 14 */	beq lbl_80750908
/* 807508F8  40 80 00 40 */	bge lbl_80750938
/* 807508FC  2C 03 00 00 */	cmpwi r3, 0
/* 80750900  41 82 00 20 */	beq lbl_80750920
/* 80750904  48 00 00 34 */	b lbl_80750938
lbl_80750908:
/* 80750908  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075090C  41 82 00 0C */	beq lbl_80750918
/* 80750910  38 00 00 01 */	li r0, 1
/* 80750914  48 00 00 28 */	b lbl_8075093C
lbl_80750918:
/* 80750918  38 00 00 02 */	li r0, 2
/* 8075091C  48 00 00 20 */	b lbl_8075093C
lbl_80750920:
/* 80750920  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80750924  41 82 00 0C */	beq lbl_80750930
/* 80750928  38 00 00 05 */	li r0, 5
/* 8075092C  48 00 00 10 */	b lbl_8075093C
lbl_80750930:
/* 80750930  38 00 00 03 */	li r0, 3
/* 80750934  48 00 00 08 */	b lbl_8075093C
lbl_80750938:
/* 80750938  38 00 00 04 */	li r0, 4
lbl_8075093C:
/* 8075093C  2C 00 00 01 */	cmpwi r0, 1
/* 80750940  40 82 00 0C */	bne lbl_8075094C
/* 80750944  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80750948  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8075094C:
/* 8075094C  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80750950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80750954  40 80 00 30 */	bge lbl_80750984
/* 80750958  A8 1C 00 88 */	lha r0, 0x88(r28)
/* 8075095C  B0 1F 07 E0 */	sth r0, 0x7e0(r31)
/* 80750960  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80750964  D0 1F 07 D4 */	stfs f0, 0x7d4(r31)
/* 80750968  38 00 00 00 */	li r0, 0
/* 8075096C  B0 1F 07 E2 */	sth r0, 0x7e2(r31)
/* 80750970  B0 1F 07 DE */	sth r0, 0x7de(r31)
/* 80750974  38 00 00 03 */	li r0, 3
/* 80750978  98 1F 05 BC */	stb r0, 0x5bc(r31)
/* 8075097C  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80750980  48 00 04 F0 */	b lbl_80750E70
lbl_80750984:
/* 80750984  7F E3 FB 78 */	mr r3, r31
/* 80750988  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8075098C  4B 8C 9D 84 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80750990  7C 63 07 34 */	extsh r3, r3
/* 80750994  3C 63 00 01 */	addis r3, r3, 1
/* 80750998  38 03 80 00 */	addi r0, r3, -32768
/* 8075099C  7C 00 46 70 */	srawi r0, r0, 8
/* 807509A0  7C 00 01 94 */	addze r0, r0
/* 807509A4  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 807509A8  B0 1C 00 88 */	sth r0, 0x88(r28)
/* 807509AC  48 00 03 1C */	b lbl_80750CC8
lbl_807509B0:
/* 807509B0  A8 1F 07 4A */	lha r0, 0x74a(r31)
/* 807509B4  2C 00 00 00 */	cmpwi r0, 0
/* 807509B8  41 82 00 1C */	beq lbl_807509D4
/* 807509BC  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 807509C0  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 807509C4  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 807509C8  C0 7D 00 7C */	lfs f3, 0x7c(r29)
/* 807509CC  4B B1 F0 70 */	b cLib_addCalc2__FPffff
/* 807509D0  48 00 02 F8 */	b lbl_80750CC8
lbl_807509D4:
/* 807509D4  A8 7C 00 88 */	lha r3, 0x88(r28)
/* 807509D8  38 03 00 02 */	addi r0, r3, 2
/* 807509DC  B0 1C 00 88 */	sth r0, 0x88(r28)
/* 807509E0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 807509E4  B0 1C 00 88 */	sth r0, 0x88(r28)
/* 807509E8  A8 7F 07 DE */	lha r3, 0x7de(r31)
/* 807509EC  38 03 00 02 */	addi r0, r3, 2
/* 807509F0  B0 1F 07 DE */	sth r0, 0x7de(r31)
/* 807509F4  A8 7C 00 88 */	lha r3, 0x88(r28)
/* 807509F8  A8 1F 07 E0 */	lha r0, 0x7e0(r31)
/* 807509FC  7C 03 00 00 */	cmpw r3, r0
/* 80750A00  40 82 00 94 */	bne lbl_80750A94
/* 80750A04  B0 7F 07 E2 */	sth r3, 0x7e2(r31)
/* 80750A08  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 80750A0C  4B B1 6F 48 */	b cM_rndF__Ff
/* 80750A10  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 80750A14  EC 00 08 2A */	fadds f0, f0, f1
/* 80750A18  FC 00 00 1E */	fctiwz f0, f0
/* 80750A1C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80750A20  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80750A24  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80750A28  3C 60 80 75 */	lis r3, struct_80757AD4+0x6@ha
/* 80750A2C  B4 03 7A DA */	sthu r0, struct_80757AD4+0x6@l(r3)
/* 80750A30  2C 00 00 06 */	cmpwi r0, 6
/* 80750A34  40 81 00 0C */	ble lbl_80750A40
/* 80750A38  38 00 00 03 */	li r0, 3
/* 80750A3C  B0 03 00 00 */	sth r0, 0(r3)
lbl_80750A40:
/* 80750A40  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80750A44  2C 00 00 0D */	cmpwi r0, 0xd
/* 80750A48  40 82 00 34 */	bne lbl_80750A7C
/* 80750A4C  38 00 00 1E */	li r0, 0x1e
/* 80750A50  B0 1F 07 4A */	sth r0, 0x74a(r31)
/* 80750A54  7F E3 FB 78 */	mr r3, r31
/* 80750A58  38 80 00 16 */	li r4, 0x16
/* 80750A5C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80750A60  38 A0 00 02 */	li r5, 2
/* 80750A64  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80750A68  4B FF BB F9 */	bl anm_init__FP10e_po_classifUcf
/* 80750A6C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80750A70  38 03 00 01 */	addi r0, r3, 1
/* 80750A74  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80750A78  48 00 02 50 */	b lbl_80750CC8
lbl_80750A7C:
/* 80750A7C  38 00 00 06 */	li r0, 6
/* 80750A80  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 80750A84  38 00 00 00 */	li r0, 0
/* 80750A88  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80750A8C  B0 1F 07 4E */	sth r0, 0x74e(r31)
/* 80750A90  48 00 02 38 */	b lbl_80750CC8
lbl_80750A94:
/* 80750A94  A8 1F 07 DE */	lha r0, 0x7de(r31)
/* 80750A98  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 80750A9C  40 82 02 2C */	bne lbl_80750CC8
/* 80750AA0  A8 1F 07 E2 */	lha r0, 0x7e2(r31)
/* 80750AA4  2C 00 00 03 */	cmpwi r0, 3
/* 80750AA8  40 80 02 20 */	bge lbl_80750CC8
/* 80750AAC  38 00 00 00 */	li r0, 0
/* 80750AB0  B0 1F 07 DE */	sth r0, 0x7de(r31)
/* 80750AB4  A8 7F 07 E2 */	lha r3, 0x7e2(r31)
/* 80750AB8  38 83 00 04 */	addi r4, r3, 4
/* 80750ABC  88 1F 05 BD */	lbz r0, 0x5bd(r31)
/* 80750AC0  54 00 40 2E */	slwi r0, r0, 8
/* 80750AC4  7C 84 03 78 */	or r4, r4, r0
/* 80750AC8  A8 1C 00 88 */	lha r0, 0x88(r28)
/* 80750ACC  54 00 80 1E */	slwi r0, r0, 0x10
/* 80750AD0  7C 84 03 78 */	or r4, r4, r0
/* 80750AD4  88 1F 05 BF */	lbz r0, 0x5bf(r31)
/* 80750AD8  54 00 C0 0E */	slwi r0, r0, 0x18
/* 80750ADC  7C 84 03 78 */	or r4, r4, r0
/* 80750AE0  38 60 01 DA */	li r3, 0x1da
/* 80750AE4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80750AE8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80750AEC  7C 06 07 74 */	extsb r6, r0
/* 80750AF0  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 80750AF4  39 00 00 00 */	li r8, 0
/* 80750AF8  39 20 FF FF */	li r9, -1
/* 80750AFC  4B 8C 92 9C */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80750B00  A8 7F 07 E2 */	lha r3, 0x7e2(r31)
/* 80750B04  38 03 00 01 */	addi r0, r3, 1
/* 80750B08  B0 1F 07 E2 */	sth r0, 0x7e2(r31)
/* 80750B0C  48 00 01 BC */	b lbl_80750CC8
lbl_80750B10:
/* 80750B10  3B 20 00 00 */	li r25, 0
lbl_80750B14:
/* 80750B14  38 99 00 04 */	addi r4, r25, 4
/* 80750B18  88 1F 05 BD */	lbz r0, 0x5bd(r31)
/* 80750B1C  54 00 40 2E */	slwi r0, r0, 8
/* 80750B20  7C 84 03 78 */	or r4, r4, r0
/* 80750B24  A8 7C 00 88 */	lha r3, 0x88(r28)
/* 80750B28  38 19 00 01 */	addi r0, r25, 1
/* 80750B2C  1C 00 00 3F */	mulli r0, r0, 0x3f
/* 80750B30  7C 03 02 14 */	add r0, r3, r0
/* 80750B34  54 00 80 1E */	slwi r0, r0, 0x10
/* 80750B38  7C 84 03 78 */	or r4, r4, r0
/* 80750B3C  88 1F 05 BF */	lbz r0, 0x5bf(r31)
/* 80750B40  54 00 C0 0E */	slwi r0, r0, 0x18
/* 80750B44  7C 84 03 78 */	or r4, r4, r0
/* 80750B48  38 60 01 DA */	li r3, 0x1da
/* 80750B4C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80750B50  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80750B54  7C 06 07 74 */	extsb r6, r0
/* 80750B58  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 80750B5C  39 00 00 00 */	li r8, 0
/* 80750B60  39 20 FF FF */	li r9, -1
/* 80750B64  4B 8C 92 34 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80750B68  3B 39 00 01 */	addi r25, r25, 1
/* 80750B6C  2C 19 00 03 */	cmpwi r25, 3
/* 80750B70  41 80 FF A4 */	blt lbl_80750B14
/* 80750B74  38 60 00 00 */	li r3, 0
/* 80750B78  B0 7C 00 8A */	sth r3, 0x8a(r28)
/* 80750B7C  B0 7F 07 4E */	sth r3, 0x74e(r31)
/* 80750B80  A8 1C 00 88 */	lha r0, 0x88(r28)
/* 80750B84  B0 1F 07 E2 */	sth r0, 0x7e2(r31)
/* 80750B88  38 00 00 06 */	li r0, 6
/* 80750B8C  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 80750B90  90 7F 05 B4 */	stw r3, 0x5b4(r31)
/* 80750B94  48 00 01 34 */	b lbl_80750CC8
lbl_80750B98:
/* 80750B98  7F 44 D3 78 */	mr r4, r26
/* 80750B9C  4B 8C 9B 74 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80750BA0  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80750BA4  A8 1F 07 4A */	lha r0, 0x74a(r31)
/* 80750BA8  2C 00 00 00 */	cmpwi r0, 0
/* 80750BAC  40 82 01 1C */	bne lbl_80750CC8
/* 80750BB0  7F E3 FB 78 */	mr r3, r31
/* 80750BB4  38 80 00 06 */	li r4, 6
/* 80750BB8  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80750BBC  38 A0 00 00 */	li r5, 0
/* 80750BC0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80750BC4  4B FF BA 9D */	bl anm_init__FP10e_po_classifUcf
/* 80750BC8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070521@ha */
/* 80750BCC  38 03 05 21 */	addi r0, r3, 0x0521 /* 0x00070521@l */
/* 80750BD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80750BD4  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80750BD8  38 81 00 0C */	addi r4, r1, 0xc
/* 80750BDC  38 A0 FF FF */	li r5, -1
/* 80750BE0  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 80750BE4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80750BE8  7D 89 03 A6 */	mtctr r12
/* 80750BEC  4E 80 04 21 */	bctrl 
/* 80750BF0  38 00 00 01 */	li r0, 1
/* 80750BF4  B0 1C 00 8C */	sth r0, 0x8c(r28)
/* 80750BF8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80750BFC  38 03 00 01 */	addi r0, r3, 1
/* 80750C00  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80750C04  48 00 00 C4 */	b lbl_80750CC8
lbl_80750C08:
/* 80750C08  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80750C0C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80750C10  FC 00 00 1E */	fctiwz f0, f0
/* 80750C14  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80750C18  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80750C1C  2C 00 00 41 */	cmpwi r0, 0x41
/* 80750C20  40 82 00 1C */	bne lbl_80750C3C
/* 80750C24  4B A3 0A 1C */	b dCam_getBody__Fv
/* 80750C28  38 80 00 32 */	li r4, 0x32
/* 80750C2C  7F E5 FB 78 */	mr r5, r31
/* 80750C30  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 80750C34  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 80750C38  4B A3 05 38 */	b StartBlure__9dCamera_cFiP10fopAc_ac_cff
lbl_80750C3C:
/* 80750C3C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80750C40  38 80 00 01 */	li r4, 1
/* 80750C44  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80750C48  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80750C4C  40 82 00 18 */	bne lbl_80750C64
/* 80750C50  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80750C54  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80750C58  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80750C5C  41 82 00 08 */	beq lbl_80750C64
/* 80750C60  38 80 00 00 */	li r4, 0
lbl_80750C64:
/* 80750C64  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80750C68  41 82 00 60 */	beq lbl_80750CC8
/* 80750C6C  38 7B 02 48 */	addi r3, r27, 0x248
/* 80750C70  4B A1 08 3C */	b Start__9dCamera_cFv
/* 80750C74  38 7B 02 48 */	addi r3, r27, 0x248
/* 80750C78  38 80 00 00 */	li r4, 0
/* 80750C7C  4B A1 23 90 */	b SetTrimSize__9dCamera_cFl
/* 80750C80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80750C84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80750C88  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80750C8C  4B 8F 17 DC */	b reset__14dEvt_control_cFv
/* 80750C90  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80750C94  38 60 00 02 */	li r3, 2
/* 80750C98  B0 64 06 04 */	sth r3, 0x604(r4)
/* 80750C9C  38 00 00 01 */	li r0, 1
/* 80750CA0  90 04 06 14 */	stw r0, 0x614(r4)
/* 80750CA4  B0 7C 00 8C */	sth r3, 0x8c(r28)
/* 80750CA8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80750CAC  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80750CB0  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80750CB4  38 60 00 00 */	li r3, 0
/* 80750CB8  B0 7F 07 4E */	sth r3, 0x74e(r31)
/* 80750CBC  38 00 00 06 */	li r0, 6
/* 80750CC0  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 80750CC4  90 7F 05 B4 */	stw r3, 0x5b4(r31)
lbl_80750CC8:
/* 80750CC8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80750CCC  2C 03 00 0A */	cmpwi r3, 0xa
/* 80750CD0  41 80 00 18 */	blt lbl_80750CE8
/* 80750CD4  2C 03 00 0D */	cmpwi r3, 0xd
/* 80750CD8  40 82 00 38 */	bne lbl_80750D10
/* 80750CDC  A8 1F 07 4A */	lha r0, 0x74a(r31)
/* 80750CE0  2C 00 00 00 */	cmpwi r0, 0
/* 80750CE4  40 82 00 2C */	bne lbl_80750D10
lbl_80750CE8:
/* 80750CE8  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80750CEC  2C 03 00 0A */	cmpwi r3, 0xa
/* 80750CF0  40 80 00 08 */	bge lbl_80750CF8
/* 80750CF4  C0 3D 00 C0 */	lfs f1, 0xc0(r29)
lbl_80750CF8:
/* 80750CF8  7F E3 FB 78 */	mr r3, r31
/* 80750CFC  A8 1C 00 88 */	lha r0, 0x88(r28)
/* 80750D00  54 00 40 2E */	slwi r0, r0, 8
/* 80750D04  7C 04 07 34 */	extsh r4, r0
/* 80750D08  C0 5D 00 68 */	lfs f2, 0x68(r29)
/* 80750D0C  4B FF F4 A5 */	bl e_rollingMove__FP10e_po_classsff
lbl_80750D10:
/* 80750D10  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80750D14  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80750D18  38 A0 00 04 */	li r5, 4
/* 80750D1C  38 C0 08 00 */	li r6, 0x800
/* 80750D20  4B B1 F8 E8 */	b cLib_addCalcAngleS2__FPssss
/* 80750D24  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80750D28  2C 00 00 0C */	cmpwi r0, 0xc
/* 80750D2C  41 80 01 44 */	blt lbl_80750E70
/* 80750D30  2C 00 00 0E */	cmpwi r0, 0xe
/* 80750D34  41 81 01 3C */	bgt lbl_80750E70
/* 80750D38  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80750D3C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80750D40  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80750D44  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80750D48  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80750D4C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80750D50  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80750D54  EC 01 00 2A */	fadds f0, f1, f0
/* 80750D58  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80750D5C  38 7F 08 44 */	addi r3, r31, 0x844
/* 80750D60  38 81 00 50 */	addi r4, r1, 0x50
/* 80750D64  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80750D68  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 80750D6C  FC 60 08 90 */	fmr f3, f1
/* 80750D70  4B B1 ED 48 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80750D74  7F E3 FB 78 */	mr r3, r31
/* 80750D78  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80750D7C  4B 8C 99 94 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80750D80  7C 64 1B 78 */	mr r4, r3
/* 80750D84  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80750D88  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80750D8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80750D90  4B 8B B6 4C */	b mDoMtx_YrotS__FPA4_fs
/* 80750D94  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80750D98  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80750D9C  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80750DA0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80750DA4  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80750DA8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80750DAC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80750DB0  38 81 00 50 */	addi r4, r1, 0x50
/* 80750DB4  4B B2 01 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 80750DB8  38 61 00 50 */	addi r3, r1, 0x50
/* 80750DBC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80750DC0  7C 65 1B 78 */	mr r5, r3
/* 80750DC4  4B BF 62 CC */	b PSVECAdd
/* 80750DC8  38 7F 08 38 */	addi r3, r31, 0x838
/* 80750DCC  38 81 00 50 */	addi r4, r1, 0x50
/* 80750DD0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80750DD4  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 80750DD8  FC 60 08 90 */	fmr f3, f1
/* 80750DDC  4B B1 EC DC */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80750DE0  C0 1F 08 44 */	lfs f0, 0x844(r31)
/* 80750DE4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80750DE8  C0 1F 08 48 */	lfs f0, 0x848(r31)
/* 80750DEC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80750DF0  C0 1F 08 4C */	lfs f0, 0x84c(r31)
/* 80750DF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80750DF8  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 80750DFC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80750E00  C0 1F 08 3C */	lfs f0, 0x83c(r31)
/* 80750E04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80750E08  C0 1F 08 40 */	lfs f0, 0x840(r31)
/* 80750E0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80750E10  38 7B 02 48 */	addi r3, r27, 0x248
/* 80750E14  38 81 00 20 */	addi r4, r1, 0x20
/* 80750E18  38 A1 00 14 */	addi r5, r1, 0x14
/* 80750E1C  4B A2 FC 8C */	b Set__9dCamera_cF4cXyz4cXyz
/* 80750E20  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 80750E24  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80750E28  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80750E2C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80750E30  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 80750E34  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80750E38  7F E3 FB 78 */	mr r3, r31
/* 80750E3C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80750E40  4B 8C 98 D0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80750E44  7C 65 1B 78 */	mr r5, r3
/* 80750E48  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80750E4C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80750E50  3C A5 00 01 */	addis r5, r5, 1
/* 80750E54  38 05 80 00 */	addi r0, r5, -32768
/* 80750E58  7C 05 07 34 */	extsh r5, r0
/* 80750E5C  38 C0 00 00 */	li r6, 0
/* 80750E60  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80750E64  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80750E68  7D 89 03 A6 */	mtctr r12
/* 80750E6C  4E 80 04 21 */	bctrl 
lbl_80750E70:
/* 80750E70  39 61 00 90 */	addi r11, r1, 0x90
/* 80750E74  4B C1 13 A0 */	b _restgpr_24
/* 80750E78  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80750E7C  7C 08 03 A6 */	mtlr r0
/* 80750E80  38 21 00 90 */	addi r1, r1, 0x90
/* 80750E84  4E 80 00 20 */	blr 
