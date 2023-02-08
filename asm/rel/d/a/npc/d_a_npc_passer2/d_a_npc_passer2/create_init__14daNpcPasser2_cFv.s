lbl_80AA7F78:
/* 80AA7F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA7F7C  7C 08 02 A6 */	mflr r0
/* 80AA7F80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA7F84  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA7F88  4B 8B A2 55 */	bl _savegpr_29
/* 80AA7F8C  7C 7D 1B 78 */	mr r29, r3
/* 80AA7F90  3C 80 80 AB */	lis r4, lit_3963@ha /* 0x80AA8A18@ha */
/* 80AA7F94  3B E4 8A 18 */	addi r31, r4, lit_3963@l /* 0x80AA8A18@l */
/* 80AA7F98  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80AA7F9C  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80AA7FA0  80 83 05 8C */	lwz r4, 0x58c(r3)
/* 80AA7FA4  80 84 00 04 */	lwz r4, 4(r4)
/* 80AA7FA8  38 04 00 24 */	addi r0, r4, 0x24
/* 80AA7FAC  90 03 05 04 */	stw r0, 0x504(r3)
/* 80AA7FB0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80AA7FB4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80AA7FB8  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80AA7FBC  C0 9F 00 30 */	lfs f4, 0x30(r31)
/* 80AA7FC0  C0 BF 00 34 */	lfs f5, 0x34(r31)
/* 80AA7FC4  C0 DF 00 38 */	lfs f6, 0x38(r31)
/* 80AA7FC8  4B 57 25 81 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AA7FCC  80 BD 09 C4 */	lwz r5, 0x9c4(r29)
/* 80AA7FD0  2C 05 00 10 */	cmpwi r5, 0x10
/* 80AA7FD4  40 80 00 1C */	bge lbl_80AA7FF0
/* 80AA7FD8  3C 60 80 42 */	lis r3, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA7FDC  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA7FE0  1C 05 01 64 */	mulli r0, r5, 0x164
/* 80AA7FE4  7C 63 02 14 */	add r3, r3, r0
/* 80AA7FE8  C0 43 01 64 */	lfs f2, 0x164(r3)
/* 80AA7FEC  48 00 00 18 */	b lbl_80AA8004
lbl_80AA7FF0:
/* 80AA7FF0  3C 60 80 42 */	lis r3, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA7FF4  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA7FF8  1C 05 01 64 */	mulli r0, r5, 0x164
/* 80AA7FFC  7C 63 02 14 */	add r3, r3, r0
/* 80AA8000  C0 43 01 64 */	lfs f2, 0x164(r3)
lbl_80AA8004:
/* 80AA8004  38 7D 08 0C */	addi r3, r29, 0x80c
/* 80AA8008  2C 05 00 10 */	cmpwi r5, 0x10
/* 80AA800C  40 80 00 1C */	bge lbl_80AA8028
/* 80AA8010  3C 80 80 42 */	lis r4, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA8014  38 84 59 84 */	addi r4, r4, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA8018  1C 05 01 64 */	mulli r0, r5, 0x164
/* 80AA801C  7C 84 02 14 */	add r4, r4, r0
/* 80AA8020  C0 24 01 60 */	lfs f1, 0x160(r4)
/* 80AA8024  48 00 00 18 */	b lbl_80AA803C
lbl_80AA8028:
/* 80AA8028  3C 80 80 42 */	lis r4, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA802C  38 84 59 84 */	addi r4, r4, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA8030  1C 05 01 64 */	mulli r0, r5, 0x164
/* 80AA8034  7C 84 02 14 */	add r4, r4, r0
/* 80AA8038  C0 24 01 60 */	lfs f1, 0x160(r4)
lbl_80AA803C:
/* 80AA803C  4B 5C DF 1D */	bl SetWall__12dBgS_AcchCirFff
/* 80AA8040  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80AA8044  90 01 00 08 */	stw r0, 8(r1)
/* 80AA8048  38 7D 06 34 */	addi r3, r29, 0x634
/* 80AA804C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AA8050  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80AA8054  7F A6 EB 78 */	mr r6, r29
/* 80AA8058  38 E0 00 01 */	li r7, 1
/* 80AA805C  39 1D 08 0C */	addi r8, r29, 0x80c
/* 80AA8060  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80AA8064  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80AA8068  4B 5C E1 E1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AA806C  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 80AA8070  60 00 00 08 */	ori r0, r0, 8
/* 80AA8074  90 1D 06 60 */	stw r0, 0x660(r29)
/* 80AA8078  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 80AA807C  60 00 04 00 */	ori r0, r0, 0x400
/* 80AA8080  90 1D 06 60 */	stw r0, 0x660(r29)
/* 80AA8084  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 80AA8088  60 00 00 04 */	ori r0, r0, 4
/* 80AA808C  90 1D 06 60 */	stw r0, 0x660(r29)
/* 80AA8090  38 7D 06 34 */	addi r3, r29, 0x634
/* 80AA8094  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA8098  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA809C  3B C4 0F 38 */	addi r30, r4, 0xf38
/* 80AA80A0  7F C4 F3 78 */	mr r4, r30
/* 80AA80A4  4B 5C EA 09 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AA80A8  7F A3 EB 78 */	mr r3, r29
/* 80AA80AC  4B 6A EC 71 */	bl setEnvTevCol__9daNpcCd_cFv
/* 80AA80B0  7F A3 EB 78 */	mr r3, r29
/* 80AA80B4  4B 6A EC C5 */	bl setRoomNo__9daNpcCd_cFv
/* 80AA80B8  38 7D 08 4C */	addi r3, r29, 0x84c
/* 80AA80BC  38 80 00 D9 */	li r4, 0xd9
/* 80AA80C0  38 A0 00 FF */	li r5, 0xff
/* 80AA80C4  7F A6 EB 78 */	mr r6, r29
/* 80AA80C8  4B 5D B7 99 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AA80CC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80AA80D0  98 1D 08 6E */	stb r0, 0x86e(r29)
/* 80AA80D4  38 1D 08 4C */	addi r0, r29, 0x84c
/* 80AA80D8  90 1D 08 CC */	stw r0, 0x8cc(r29)
/* 80AA80DC  38 7D 08 88 */	addi r3, r29, 0x888
/* 80AA80E0  3C 80 80 39 */	lis r4, m_cylDat__9daNpcCd_c@ha /* 0x80392E18@ha */
/* 80AA80E4  38 84 2E 18 */	addi r4, r4, m_cylDat__9daNpcCd_c@l /* 0x80392E18@l */
/* 80AA80E8  4B 5D C7 CD */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AA80EC  80 1D 09 C4 */	lwz r0, 0x9c4(r29)
/* 80AA80F0  38 7D 09 AC */	addi r3, r29, 0x9ac
/* 80AA80F4  2C 00 00 10 */	cmpwi r0, 0x10
/* 80AA80F8  40 80 00 1C */	bge lbl_80AA8114
/* 80AA80FC  3C 80 80 42 */	lis r4, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA8100  38 84 59 84 */	addi r4, r4, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA8104  1C 00 01 64 */	mulli r0, r0, 0x164
/* 80AA8108  7C 84 02 14 */	add r4, r4, r0
/* 80AA810C  C0 24 01 5C */	lfs f1, 0x15c(r4)
/* 80AA8110  48 00 00 18 */	b lbl_80AA8128
lbl_80AA8114:
/* 80AA8114  3C 80 80 42 */	lis r4, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA8118  38 84 59 84 */	addi r4, r4, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA811C  1C 00 01 64 */	mulli r0, r0, 0x164
/* 80AA8120  7C 84 02 14 */	add r4, r4, r0
/* 80AA8124  C0 24 01 5C */	lfs f1, 0x15c(r4)
lbl_80AA8128:
/* 80AA8128  4B 7C 70 D9 */	bl SetR__8cM3dGCylFf
/* 80AA812C  80 1D 09 C4 */	lwz r0, 0x9c4(r29)
/* 80AA8130  38 7D 09 AC */	addi r3, r29, 0x9ac
/* 80AA8134  2C 00 00 10 */	cmpwi r0, 0x10
/* 80AA8138  40 80 00 1C */	bge lbl_80AA8154
/* 80AA813C  3C 80 80 42 */	lis r4, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA8140  38 84 59 84 */	addi r4, r4, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA8144  1C 00 01 64 */	mulli r0, r0, 0x164
/* 80AA8148  7C 84 02 14 */	add r4, r4, r0
/* 80AA814C  C0 24 01 58 */	lfs f1, 0x158(r4)
/* 80AA8150  48 00 00 18 */	b lbl_80AA8168
lbl_80AA8154:
/* 80AA8154  3C 80 80 42 */	lis r4, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA8158  38 84 59 84 */	addi r4, r4, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA815C  1C 00 01 64 */	mulli r0, r0, 0x164
/* 80AA8160  7C 84 02 14 */	add r4, r4, r0
/* 80AA8164  C0 24 01 58 */	lfs f1, 0x158(r4)
lbl_80AA8168:
/* 80AA8168  4B 7C 70 91 */	bl SetH__8cM3dGCylFf
/* 80AA816C  38 00 00 00 */	li r0, 0
/* 80AA8170  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80AA8174  38 7D 09 F0 */	addi r3, r29, 0x9f0
/* 80AA8178  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80AA817C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80AA8180  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80AA8184  7C 05 07 74 */	extsb r5, r0
/* 80AA8188  38 C0 00 01 */	li r6, 1
/* 80AA818C  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80AA8190  39 00 00 01 */	li r8, 1
/* 80AA8194  4B 6B 18 A5 */	bl setPath__11PathTrace_cFiiiP4cXyzb
/* 80AA8198  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA819C  41 82 00 10 */	beq lbl_80AA81AC
/* 80AA81A0  7F A3 EB 78 */	mr r3, r29
/* 80AA81A4  38 80 00 00 */	li r4, 0
/* 80AA81A8  4B FF F3 B5 */	bl setAction__14daNpcPasser2_cFQ214daNpcPasser2_c6Mode_e
lbl_80AA81AC:
/* 80AA81AC  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80AA81B0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80AA81B4  4B 56 79 C9 */	bl setMorf__13mDoExt_morf_cFf
/* 80AA81B8  38 7D 06 34 */	addi r3, r29, 0x634
/* 80AA81BC  7F C4 F3 78 */	mr r4, r30
/* 80AA81C0  4B 5C E8 ED */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AA81C4  C0 1D 06 CC */	lfs f0, 0x6cc(r29)
/* 80AA81C8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80AA81CC  D0 1D 0A 38 */	stfs f0, 0xa38(r29)
/* 80AA81D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AA81D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AA81D8  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80AA81DC  C0 5D 0A 38 */	lfs f2, 0xa38(r29)
/* 80AA81E0  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80AA81E4  4B 89 E7 05 */	bl PSMTXTrans
/* 80AA81E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AA81EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AA81F0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80AA81F4  4B 56 42 41 */	bl mDoMtx_YrotM__FPA4_fs
/* 80AA81F8  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80AA81FC  80 83 00 04 */	lwz r4, 4(r3)
/* 80AA8200  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AA8204  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AA8208  38 84 00 24 */	addi r4, r4, 0x24
/* 80AA820C  4B 89 E2 A5 */	bl PSMTXCopy
/* 80AA8210  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80AA8214  4B 56 8F D9 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80AA8218  7F A3 EB 78 */	mr r3, r29
/* 80AA821C  80 9D 09 C4 */	lwz r4, 0x9c4(r29)
/* 80AA8220  4B 6A E1 A9 */	bl setAttention__9daNpcCd_cFi
/* 80AA8224  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA8228  4B 8B A0 01 */	bl _restgpr_29
/* 80AA822C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA8230  7C 08 03 A6 */	mtlr r0
/* 80AA8234  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA8238  4E 80 00 20 */	blr 
