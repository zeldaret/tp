lbl_809BA730:
/* 809BA730  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809BA734  7C 08 02 A6 */	mflr r0
/* 809BA738  90 01 00 34 */	stw r0, 0x34(r1)
/* 809BA73C  39 61 00 30 */	addi r11, r1, 0x30
/* 809BA740  4B 9A 7A 9D */	bl _savegpr_29
/* 809BA744  7C 7E 1B 78 */	mr r30, r3
/* 809BA748  3C 80 80 9C */	lis r4, lit_3979@ha /* 0x809BB404@ha */
/* 809BA74C  3B E4 B4 04 */	addi r31, r4, lit_3979@l /* 0x809BB404@l */
/* 809BA750  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809BA754  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 809BA758  C0 1F 00 04 */	lfs f0, 4(r31)
/* 809BA75C  D0 03 05 34 */	stfs f0, 0x534(r3)
/* 809BA760  80 83 05 8C */	lwz r4, 0x58c(r3)
/* 809BA764  80 84 00 04 */	lwz r4, 4(r4)
/* 809BA768  38 04 00 24 */	addi r0, r4, 0x24
/* 809BA76C  90 03 05 04 */	stw r0, 0x504(r3)
/* 809BA770  C0 3F 00 08 */	lfs f1, 8(r31)
/* 809BA774  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 809BA778  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 809BA77C  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 809BA780  C0 BF 00 18 */	lfs f5, 0x18(r31)
/* 809BA784  C0 DF 00 1C */	lfs f6, 0x1c(r31)
/* 809BA788  4B 65 FD C1 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809BA78C  80 BE 0A 98 */	lwz r5, 0xa98(r30)
/* 809BA790  2C 05 00 10 */	cmpwi r5, 0x10
/* 809BA794  40 80 00 1C */	bge lbl_809BA7B0
/* 809BA798  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BA79C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BA7A0  1C 05 02 0C */	mulli r0, r5, 0x20c
/* 809BA7A4  7C 63 02 14 */	add r3, r3, r0
/* 809BA7A8  C0 43 02 0C */	lfs f2, 0x20c(r3)
/* 809BA7AC  48 00 00 18 */	b lbl_809BA7C4
lbl_809BA7B0:
/* 809BA7B0  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BA7B4  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BA7B8  1C 05 02 3C */	mulli r0, r5, 0x23c
/* 809BA7BC  7C 63 02 14 */	add r3, r3, r0
/* 809BA7C0  C0 43 FF 3C */	lfs f2, -0xc4(r3)
lbl_809BA7C4:
/* 809BA7C4  38 7E 08 10 */	addi r3, r30, 0x810
/* 809BA7C8  2C 05 00 10 */	cmpwi r5, 0x10
/* 809BA7CC  40 80 00 1C */	bge lbl_809BA7E8
/* 809BA7D0  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BA7D4  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BA7D8  1C 05 02 0C */	mulli r0, r5, 0x20c
/* 809BA7DC  7C 84 02 14 */	add r4, r4, r0
/* 809BA7E0  C0 24 02 08 */	lfs f1, 0x208(r4)
/* 809BA7E4  48 00 00 18 */	b lbl_809BA7FC
lbl_809BA7E8:
/* 809BA7E8  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BA7EC  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BA7F0  1C 05 02 3C */	mulli r0, r5, 0x23c
/* 809BA7F4  7C 84 02 14 */	add r4, r4, r0
/* 809BA7F8  C0 24 FF 38 */	lfs f1, -0xc8(r4)
lbl_809BA7FC:
/* 809BA7FC  4B 6B B7 5D */	bl SetWall__12dBgS_AcchCirFff
/* 809BA800  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 809BA804  90 01 00 08 */	stw r0, 8(r1)
/* 809BA808  38 7E 06 38 */	addi r3, r30, 0x638
/* 809BA80C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809BA810  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 809BA814  7F C6 F3 78 */	mr r6, r30
/* 809BA818  38 E0 00 01 */	li r7, 1
/* 809BA81C  39 1E 08 10 */	addi r8, r30, 0x810
/* 809BA820  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 809BA824  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 809BA828  4B 6B BA 21 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809BA82C  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 809BA830  60 00 00 08 */	ori r0, r0, 8
/* 809BA834  90 1E 06 64 */	stw r0, 0x664(r30)
/* 809BA838  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 809BA83C  60 00 04 00 */	ori r0, r0, 0x400
/* 809BA840  90 1E 06 64 */	stw r0, 0x664(r30)
/* 809BA844  38 7E 06 38 */	addi r3, r30, 0x638
/* 809BA848  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809BA84C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809BA850  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809BA854  4B 6B C2 59 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809BA858  7F C3 F3 78 */	mr r3, r30
/* 809BA85C  4B 79 E5 2D */	bl setEnvTevCol__10daNpcCd2_cFv
/* 809BA860  7F C3 F3 78 */	mr r3, r30
/* 809BA864  4B 79 E5 81 */	bl setRoomNo__10daNpcCd2_cFv
/* 809BA868  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 809BA86C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 809BA870  D0 1E 0A D4 */	stfs f0, 0xad4(r30)
/* 809BA874  38 7E 08 50 */	addi r3, r30, 0x850
/* 809BA878  38 80 00 FF */	li r4, 0xff
/* 809BA87C  38 A0 00 FF */	li r5, 0xff
/* 809BA880  7F C6 F3 78 */	mr r6, r30
/* 809BA884  4B 6C 8F DD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809BA888  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809BA88C  98 1E 08 72 */	stb r0, 0x872(r30)
/* 809BA890  38 1E 08 50 */	addi r0, r30, 0x850
/* 809BA894  90 1E 08 D0 */	stw r0, 0x8d0(r30)
/* 809BA898  38 7E 08 8C */	addi r3, r30, 0x88c
/* 809BA89C  3C 80 80 39 */	lis r4, m_cylDat__10daNpcCd2_c@ha /* 0x80393950@ha */
/* 809BA8A0  38 84 39 50 */	addi r4, r4, m_cylDat__10daNpcCd2_c@l /* 0x80393950@l */
/* 809BA8A4  4B 6C A0 11 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809BA8A8  80 1E 0A 98 */	lwz r0, 0xa98(r30)
/* 809BA8AC  38 7E 09 B0 */	addi r3, r30, 0x9b0
/* 809BA8B0  2C 00 00 10 */	cmpwi r0, 0x10
/* 809BA8B4  40 80 00 1C */	bge lbl_809BA8D0
/* 809BA8B8  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BA8BC  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BA8C0  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 809BA8C4  7C 84 02 14 */	add r4, r4, r0
/* 809BA8C8  C0 24 02 04 */	lfs f1, 0x204(r4)
/* 809BA8CC  48 00 00 18 */	b lbl_809BA8E4
lbl_809BA8D0:
/* 809BA8D0  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BA8D4  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BA8D8  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 809BA8DC  7C 84 02 14 */	add r4, r4, r0
/* 809BA8E0  C0 24 FF 34 */	lfs f1, -0xcc(r4)
lbl_809BA8E4:
/* 809BA8E4  4B 8B 49 1D */	bl SetR__8cM3dGCylFf
/* 809BA8E8  80 1E 0A 98 */	lwz r0, 0xa98(r30)
/* 809BA8EC  38 7E 09 B0 */	addi r3, r30, 0x9b0
/* 809BA8F0  2C 00 00 10 */	cmpwi r0, 0x10
/* 809BA8F4  40 80 00 1C */	bge lbl_809BA910
/* 809BA8F8  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BA8FC  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BA900  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 809BA904  7C 84 02 14 */	add r4, r4, r0
/* 809BA908  C0 24 02 00 */	lfs f1, 0x200(r4)
/* 809BA90C  48 00 00 18 */	b lbl_809BA924
lbl_809BA910:
/* 809BA910  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BA914  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BA918  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 809BA91C  7C 84 02 14 */	add r4, r4, r0
/* 809BA920  C0 24 FF 30 */	lfs f1, -0xd0(r4)
lbl_809BA924:
/* 809BA924  4B 8B 48 D5 */	bl SetH__8cM3dGCylFf
/* 809BA928  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809BA92C  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 809BA930  30 03 FF FF */	addic r0, r3, -1
/* 809BA934  7C 00 19 10 */	subfe r0, r0, r3
/* 809BA938  98 1E 0A D8 */	stb r0, 0xad8(r30)
/* 809BA93C  88 1E 0A D8 */	lbz r0, 0xad8(r30)
/* 809BA940  28 00 00 00 */	cmplwi r0, 0
/* 809BA944  41 82 00 4C */	beq lbl_809BA990
/* 809BA948  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 809BA94C  4B 8A D0 09 */	bl cM_rndF__Ff
/* 809BA950  FC 00 08 1E */	fctiwz f0, f1
/* 809BA954  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809BA958  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 809BA95C  7F C3 F3 78 */	mr r3, r30
/* 809BA960  38 80 00 02 */	li r4, 2
/* 809BA964  80 BE 0A CC */	lwz r5, 0xacc(r30)
/* 809BA968  4B 79 D7 89 */	bl getAnmP__10daNpcCd2_cFii
/* 809BA96C  7C 64 1B 78 */	mr r4, r3
/* 809BA970  7F C3 F3 78 */	mr r3, r30
/* 809BA974  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809BA978  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 809BA97C  38 A0 00 02 */	li r5, 2
/* 809BA980  7F A6 EB 78 */	mr r6, r29
/* 809BA984  38 E0 FF FF */	li r7, -1
/* 809BA988  4B 79 E5 79 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 809BA98C  48 00 00 48 */	b lbl_809BA9D4
lbl_809BA990:
/* 809BA990  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 809BA994  4B 8A CF C1 */	bl cM_rndF__Ff
/* 809BA998  FC 00 08 1E */	fctiwz f0, f1
/* 809BA99C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809BA9A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 809BA9A4  7F C3 F3 78 */	mr r3, r30
/* 809BA9A8  38 80 00 00 */	li r4, 0
/* 809BA9AC  80 BE 0A CC */	lwz r5, 0xacc(r30)
/* 809BA9B0  4B 79 D7 41 */	bl getAnmP__10daNpcCd2_cFii
/* 809BA9B4  7C 64 1B 78 */	mr r4, r3
/* 809BA9B8  7F C3 F3 78 */	mr r3, r30
/* 809BA9BC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809BA9C0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 809BA9C4  38 A0 00 02 */	li r5, 2
/* 809BA9C8  7F A6 EB 78 */	mr r6, r29
/* 809BA9CC  38 E0 FF FF */	li r7, -1
/* 809BA9D0  4B 79 E5 31 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_809BA9D4:
/* 809BA9D4  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 809BA9D8  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 809BA9DC  4B 65 51 A1 */	bl setMorf__13mDoExt_morf_cFf
/* 809BA9E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BA9E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BA9E8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 809BA9EC  C0 5E 0A D4 */	lfs f2, 0xad4(r30)
/* 809BA9F0  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 809BA9F4  4B 98 BE F5 */	bl PSMTXTrans
/* 809BA9F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BA9FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BAA00  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 809BAA04  4B 65 1A 31 */	bl mDoMtx_YrotM__FPA4_fs
/* 809BAA08  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 809BAA0C  80 83 00 04 */	lwz r4, 4(r3)
/* 809BAA10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BAA14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BAA18  38 84 00 24 */	addi r4, r4, 0x24
/* 809BAA1C  4B 98 BA 95 */	bl PSMTXCopy
/* 809BAA20  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 809BAA24  4B 65 67 C9 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 809BAA28  7F C3 F3 78 */	mr r3, r30
/* 809BAA2C  80 9E 0A 98 */	lwz r4, 0xa98(r30)
/* 809BAA30  4B 79 D9 F1 */	bl setAttention__10daNpcCd2_cFi
/* 809BAA34  39 61 00 30 */	addi r11, r1, 0x30
/* 809BAA38  4B 9A 77 F1 */	bl _restgpr_29
/* 809BAA3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809BAA40  7C 08 03 A6 */	mtlr r0
/* 809BAA44  38 21 00 30 */	addi r1, r1, 0x30
/* 809BAA48  4E 80 00 20 */	blr 
