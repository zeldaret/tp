lbl_80B116E4:
/* 80B116E4  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 80B116E8  7C 08 02 A6 */	mflr r0
/* 80B116EC  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 80B116F0  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 80B116F4  4B 85 0A E8 */	b _savegpr_29
/* 80B116F8  7C 7E 1B 78 */	mr r30, r3
/* 80B116FC  7C 9D 23 78 */	mr r29, r4
/* 80B11700  3C 60 80 B1 */	lis r3, lit_3648@ha
/* 80B11704  3B E3 42 DC */	addi r31, r3, lit_3648@l
/* 80B11708  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80B1170C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80B11710  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80B11714  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80B11718  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80B1171C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B11720  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80B11724  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80B11728  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B1172C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80B11730  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80B11734  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B11738  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B1173C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B11740  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80B11744  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B11748  38 61 01 48 */	addi r3, r1, 0x148
/* 80B1174C  4B 56 65 1C */	b __ct__11dBgS_LinChkFv
/* 80B11750  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80B11754  4B 56 65 14 */	b __ct__11dBgS_LinChkFv
/* 80B11758  38 61 00 68 */	addi r3, r1, 0x68
/* 80B1175C  4B 56 65 0C */	b __ct__11dBgS_LinChkFv
/* 80B11760  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B11764  4B 4F B6 00 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B11768  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80B1176C  4B 4F B7 D8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B11770  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B11774  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B11778  7F A4 EB 78 */	mr r4, r29
/* 80B1177C  4B 4F AC B8 */	b mDoMtx_YrotM__FPA4_fs
/* 80B11780  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B11784  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B11788  38 81 00 48 */	addi r4, r1, 0x48
/* 80B1178C  7C 85 23 78 */	mr r5, r4
/* 80B11790  4B 83 55 DC */	b PSMTXMultVec
/* 80B11794  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B11798  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B1179C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B117A0  7C 85 23 78 */	mr r5, r4
/* 80B117A4  4B 83 55 C8 */	b PSMTXMultVec
/* 80B117A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B117AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B117B0  38 81 00 30 */	addi r4, r1, 0x30
/* 80B117B4  7C 85 23 78 */	mr r5, r4
/* 80B117B8  4B 83 55 B4 */	b PSMTXMultVec
/* 80B117BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B117C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B117C4  38 81 00 24 */	addi r4, r1, 0x24
/* 80B117C8  7C 85 23 78 */	mr r5, r4
/* 80B117CC  4B 83 55 A0 */	b PSMTXMultVec
/* 80B117D0  38 61 01 48 */	addi r3, r1, 0x148
/* 80B117D4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B117D8  38 A1 00 48 */	addi r5, r1, 0x48
/* 80B117DC  38 C0 00 00 */	li r6, 0
/* 80B117E0  4B 56 65 84 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80B117E4  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80B117E8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B117EC  38 A1 00 30 */	addi r5, r1, 0x30
/* 80B117F0  38 C0 00 00 */	li r6, 0
/* 80B117F4  4B 56 65 70 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80B117F8  38 61 00 68 */	addi r3, r1, 0x68
/* 80B117FC  38 81 00 30 */	addi r4, r1, 0x30
/* 80B11800  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B11804  38 C0 00 00 */	li r6, 0
/* 80B11808  4B 56 65 5C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80B1180C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B11810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B11814  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80B11818  7F A3 EB 78 */	mr r3, r29
/* 80B1181C  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B11820  4B 56 2B 94 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80B11824  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B11828  41 82 00 30 */	beq lbl_80B11858
/* 80B1182C  38 61 00 68 */	addi r3, r1, 0x68
/* 80B11830  38 80 FF FF */	li r4, -1
/* 80B11834  4B 56 64 A8 */	b __dt__11dBgS_LinChkFv
/* 80B11838  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80B1183C  38 80 FF FF */	li r4, -1
/* 80B11840  4B 56 64 9C */	b __dt__11dBgS_LinChkFv
/* 80B11844  38 61 01 48 */	addi r3, r1, 0x148
/* 80B11848  38 80 FF FF */	li r4, -1
/* 80B1184C  4B 56 64 90 */	b __dt__11dBgS_LinChkFv
/* 80B11850  38 60 00 00 */	li r3, 0
/* 80B11854  48 00 02 44 */	b lbl_80B11A98
lbl_80B11858:
/* 80B11858  7F A3 EB 78 */	mr r3, r29
/* 80B1185C  38 81 00 68 */	addi r4, r1, 0x68
/* 80B11860  4B 56 2B 54 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80B11864  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B11868  40 82 00 30 */	bne lbl_80B11898
/* 80B1186C  38 61 00 68 */	addi r3, r1, 0x68
/* 80B11870  38 80 FF FF */	li r4, -1
/* 80B11874  4B 56 64 68 */	b __dt__11dBgS_LinChkFv
/* 80B11878  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80B1187C  38 80 FF FF */	li r4, -1
/* 80B11880  4B 56 64 5C */	b __dt__11dBgS_LinChkFv
/* 80B11884  38 61 01 48 */	addi r3, r1, 0x148
/* 80B11888  38 80 FF FF */	li r4, -1
/* 80B1188C  4B 56 64 50 */	b __dt__11dBgS_LinChkFv
/* 80B11890  38 60 00 00 */	li r3, 0
/* 80B11894  48 00 02 04 */	b lbl_80B11A98
lbl_80B11898:
/* 80B11898  7F A3 EB 78 */	mr r3, r29
/* 80B1189C  38 81 01 48 */	addi r4, r1, 0x148
/* 80B118A0  4B 56 2B 14 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80B118A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B118A8  41 82 01 C8 */	beq lbl_80B11A70
/* 80B118AC  3C 60 80 B1 */	lis r3, __vt__8cM3dGPla@ha
/* 80B118B0  38 03 44 DC */	addi r0, r3, __vt__8cM3dGPla@l
/* 80B118B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B118B8  7F A3 EB 78 */	mr r3, r29
/* 80B118BC  38 81 01 5C */	addi r4, r1, 0x15c
/* 80B118C0  38 A1 00 54 */	addi r5, r1, 0x54
/* 80B118C4  4B 56 2E 80 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80B118C8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B118CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B118D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B118D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B118D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B118DC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B118E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B118E4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B118E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B118EC  38 61 00 18 */	addi r3, r1, 0x18
/* 80B118F0  38 81 00 0C */	addi r4, r1, 0xc
/* 80B118F4  4B 83 5A A8 */	b PSVECSquareDistance
/* 80B118F8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B118FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B11900  40 81 00 58 */	ble lbl_80B11958
/* 80B11904  FC 00 08 34 */	frsqrte f0, f1
/* 80B11908  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80B1190C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B11910  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80B11914  FC 00 00 32 */	fmul f0, f0, f0
/* 80B11918  FC 01 00 32 */	fmul f0, f1, f0
/* 80B1191C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B11920  FC 02 00 32 */	fmul f0, f2, f0
/* 80B11924  FC 44 00 32 */	fmul f2, f4, f0
/* 80B11928  FC 00 00 32 */	fmul f0, f0, f0
/* 80B1192C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B11930  FC 03 00 28 */	fsub f0, f3, f0
/* 80B11934  FC 02 00 32 */	fmul f0, f2, f0
/* 80B11938  FC 44 00 32 */	fmul f2, f4, f0
/* 80B1193C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B11940  FC 01 00 32 */	fmul f0, f1, f0
/* 80B11944  FC 03 00 28 */	fsub f0, f3, f0
/* 80B11948  FC 02 00 32 */	fmul f0, f2, f0
/* 80B1194C  FC 41 00 32 */	fmul f2, f1, f0
/* 80B11950  FC 40 10 18 */	frsp f2, f2
/* 80B11954  48 00 00 90 */	b lbl_80B119E4
lbl_80B11958:
/* 80B11958  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80B1195C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B11960  40 80 00 10 */	bge lbl_80B11970
/* 80B11964  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B11968  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B1196C  48 00 00 78 */	b lbl_80B119E4
lbl_80B11970:
/* 80B11970  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B11974  80 81 00 08 */	lwz r4, 8(r1)
/* 80B11978  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B1197C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B11980  7C 03 00 00 */	cmpw r3, r0
/* 80B11984  41 82 00 14 */	beq lbl_80B11998
/* 80B11988  40 80 00 40 */	bge lbl_80B119C8
/* 80B1198C  2C 03 00 00 */	cmpwi r3, 0
/* 80B11990  41 82 00 20 */	beq lbl_80B119B0
/* 80B11994  48 00 00 34 */	b lbl_80B119C8
lbl_80B11998:
/* 80B11998  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B1199C  41 82 00 0C */	beq lbl_80B119A8
/* 80B119A0  38 00 00 01 */	li r0, 1
/* 80B119A4  48 00 00 28 */	b lbl_80B119CC
lbl_80B119A8:
/* 80B119A8  38 00 00 02 */	li r0, 2
/* 80B119AC  48 00 00 20 */	b lbl_80B119CC
lbl_80B119B0:
/* 80B119B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B119B4  41 82 00 0C */	beq lbl_80B119C0
/* 80B119B8  38 00 00 05 */	li r0, 5
/* 80B119BC  48 00 00 10 */	b lbl_80B119CC
lbl_80B119C0:
/* 80B119C0  38 00 00 03 */	li r0, 3
/* 80B119C4  48 00 00 08 */	b lbl_80B119CC
lbl_80B119C8:
/* 80B119C8  38 00 00 04 */	li r0, 4
lbl_80B119CC:
/* 80B119CC  2C 00 00 01 */	cmpwi r0, 1
/* 80B119D0  40 82 00 10 */	bne lbl_80B119E0
/* 80B119D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B119D8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B119DC  48 00 00 08 */	b lbl_80B119E4
lbl_80B119E0:
/* 80B119E0  FC 40 08 90 */	fmr f2, f1
lbl_80B119E4:
/* 80B119E4  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 80B119E8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B119EC  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 80B119F0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B119F4  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 80B119F8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B119FC  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80B11A00  4B 75 5C 74 */	b cM_atan2s__Fff
/* 80B11A04  7C 03 00 D0 */	neg r0, r3
/* 80B11A08  7C 1D 07 34 */	extsh r29, r0
/* 80B11A0C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80B11A10  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 80B11A14  4B 75 5C 60 */	b cM_atan2s__Fff
/* 80B11A18  7C 64 1B 78 */	mr r4, r3
/* 80B11A1C  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80B11A20  38 A0 01 50 */	li r5, 0x150
/* 80B11A24  4B 75 F1 6C */	b cLib_chaseAngleS__FPsss
/* 80B11A28  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80B11A2C  7F A4 EB 78 */	mr r4, r29
/* 80B11A30  38 A0 01 50 */	li r5, 0x150
/* 80B11A34  4B 75 F1 5C */	b cLib_chaseAngleS__FPsss
/* 80B11A38  3C 60 80 B1 */	lis r3, __vt__8cM3dGPla@ha
/* 80B11A3C  38 03 44 DC */	addi r0, r3, __vt__8cM3dGPla@l
/* 80B11A40  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B11A44  38 61 00 68 */	addi r3, r1, 0x68
/* 80B11A48  38 80 FF FF */	li r4, -1
/* 80B11A4C  4B 56 62 90 */	b __dt__11dBgS_LinChkFv
/* 80B11A50  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80B11A54  38 80 FF FF */	li r4, -1
/* 80B11A58  4B 56 62 84 */	b __dt__11dBgS_LinChkFv
/* 80B11A5C  38 61 01 48 */	addi r3, r1, 0x148
/* 80B11A60  38 80 FF FF */	li r4, -1
/* 80B11A64  4B 56 62 78 */	b __dt__11dBgS_LinChkFv
/* 80B11A68  38 60 00 01 */	li r3, 1
/* 80B11A6C  48 00 00 2C */	b lbl_80B11A98
lbl_80B11A70:
/* 80B11A70  38 61 00 68 */	addi r3, r1, 0x68
/* 80B11A74  38 80 FF FF */	li r4, -1
/* 80B11A78  4B 56 62 64 */	b __dt__11dBgS_LinChkFv
/* 80B11A7C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80B11A80  38 80 FF FF */	li r4, -1
/* 80B11A84  4B 56 62 58 */	b __dt__11dBgS_LinChkFv
/* 80B11A88  38 61 01 48 */	addi r3, r1, 0x148
/* 80B11A8C  38 80 FF FF */	li r4, -1
/* 80B11A90  4B 56 62 4C */	b __dt__11dBgS_LinChkFv
/* 80B11A94  38 60 00 00 */	li r3, 0
lbl_80B11A98:
/* 80B11A98  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 80B11A9C  4B 85 07 8C */	b _restgpr_29
/* 80B11AA0  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 80B11AA4  7C 08 03 A6 */	mtlr r0
/* 80B11AA8  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 80B11AAC  4E 80 00 20 */	blr 
