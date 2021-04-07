lbl_80B0D678:
/* 80B0D678  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B0D67C  7C 08 02 A6 */	mflr r0
/* 80B0D680  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B0D684  39 61 00 60 */	addi r11, r1, 0x60
/* 80B0D688  4B 85 4B 4D */	bl _savegpr_27
/* 80B0D68C  7C 7D 1B 78 */	mr r29, r3
/* 80B0D690  3C 80 80 B1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B10A60@ha */
/* 80B0D694  3B C4 0A 60 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80B10A60@l */
/* 80B0D698  3C 80 80 B1 */	lis r4, m__16daNpcTkc_Param_c@ha /* 0x80B108B4@ha */
/* 80B0D69C  3B E4 08 B4 */	addi r31, r4, m__16daNpcTkc_Param_c@l /* 0x80B108B4@l */
/* 80B0D6A0  4B 64 52 29 */	bl initialize__8daNpcF_cFv
/* 80B0D6A4  80 7D 0B D8 */	lwz r3, 0xbd8(r29)
/* 80B0D6A8  4B 64 30 91 */	bl initialize__15daNpcF_MatAnm_cFv
/* 80B0D6AC  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80B0D6B0  4B 64 30 01 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B0D6B4  38 00 00 0A */	li r0, 0xa
/* 80B0D6B8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80B0D6BC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B0D6C0  54 00 84 3F */	rlwinm. r0, r0, 0x10, 0x10, 0x1f
/* 80B0D6C4  41 82 00 0C */	beq lbl_80B0D6D0
/* 80B0D6C8  28 00 00 FF */	cmplwi r0, 0xff
/* 80B0D6CC  40 82 00 0C */	bne lbl_80B0D6D8
lbl_80B0D6D0:
/* 80B0D6D0  38 00 00 00 */	li r0, 0
/* 80B0D6D4  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_80B0D6D8:
/* 80B0D6D8  7F A3 EB 78 */	mr r3, r29
/* 80B0D6DC  38 BF 00 00 */	addi r5, r31, 0
/* 80B0D6E0  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80B0D6E4  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80B0D6E8  4B 64 6B 91 */	bl getDistTableIdx__8daNpcF_cFii
/* 80B0D6EC  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80B0D6F0  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80B0D6F4  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80B0D6F8  7F A3 EB 78 */	mr r3, r29
/* 80B0D6FC  38 BF 00 00 */	addi r5, r31, 0
/* 80B0D700  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80B0D704  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80B0D708  4B 64 6B 71 */	bl getDistTableIdx__8daNpcF_cFii
/* 80B0D70C  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80B0D710  38 7F 00 00 */	addi r3, r31, 0
/* 80B0D714  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B0D718  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80B0D71C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B0D720  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B0D724  28 00 00 02 */	cmplwi r0, 2
/* 80B0D728  40 82 00 F8 */	bne lbl_80B0D820
/* 80B0D72C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0D730  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0D734  83 7C 5D AC */	lwz r27, 0x5dac(r28)
/* 80B0D738  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B0D73C  4B 4F F6 29 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B0D740  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B0D744  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B0D748  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80B0D74C  4B 4F EC E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B0D750  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80B0D754  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 80B0D758  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80B0D75C  38 7F 00 00 */	addi r3, r31, 0
/* 80B0D760  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80B0D764  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B0D768  EC 43 00 2A */	fadds f2, f3, f0
/* 80B0D76C  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 80B0D770  4B 4F F6 2D */	bl transM__14mDoMtx_stack_cFfff
/* 80B0D774  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B0D778  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B0D77C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B0D780  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80B0D784  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B0D788  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80B0D78C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B0D790  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 80B0D794  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80B0D798  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80B0D79C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80B0D7A0  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80B0D7A4  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80B0D7A8  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80B0D7AC  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80B0D7B0  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80B0D7B4  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80B0D7B8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80B0D7BC  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80B0D7C0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80B0D7C4  7F A3 EB 78 */	mr r3, r29
/* 80B0D7C8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B0D7CC  4B 50 CF 45 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B0D7D0  7C 64 1B 78 */	mr r4, r3
/* 80B0D7D4  7F A3 EB 78 */	mr r3, r29
/* 80B0D7D8  4B 64 6A 79 */	bl setAngle__8daNpcF_cFs
/* 80B0D7DC  28 1D 00 00 */	cmplwi r29, 0
/* 80B0D7E0  41 82 00 0C */	beq lbl_80B0D7EC
/* 80B0D7E4  83 7D 00 04 */	lwz r27, 4(r29)
/* 80B0D7E8  48 00 00 08 */	b lbl_80B0D7F0
lbl_80B0D7EC:
/* 80B0D7EC  3B 60 FF FF */	li r27, -1
lbl_80B0D7F0:
/* 80B0D7F0  4B 67 3E 51 */	bl dCam_getBody__Fv
/* 80B0D7F4  38 80 00 12 */	li r4, 0x12
/* 80B0D7F8  7F 65 DB 78 */	mr r5, r27
/* 80B0D7FC  3C C0 80 B1 */	lis r6, d_a_npc_tkc__stringBase0@ha /* 0x80B10A2C@ha */
/* 80B0D800  38 C6 0A 2C */	addi r6, r6, d_a_npc_tkc__stringBase0@l /* 0x80B10A2C@l */
/* 80B0D804  38 C6 00 29 */	addi r6, r6, 0x29
/* 80B0D808  38 E0 00 01 */	li r7, 1
/* 80B0D80C  39 1F 00 B4 */	addi r8, r31, 0xb4
/* 80B0D810  39 20 00 00 */	li r9, 0
/* 80B0D814  4C C6 31 82 */	crclr 6
/* 80B0D818  4B 57 B2 65 */	bl StartEventCamera__9dCamera_cFiie
/* 80B0D81C  48 00 00 60 */	b lbl_80B0D87C
lbl_80B0D820:
/* 80B0D820  80 9D 04 A4 */	lwz r4, 0x4a4(r29)
/* 80B0D824  3C 04 00 01 */	addis r0, r4, 1
/* 80B0D828  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B0D82C  40 82 00 18 */	bne lbl_80B0D844
/* 80B0D830  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80B0D834  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80B0D838  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0D83C  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80B0D840  48 00 00 3C */	b lbl_80B0D87C
lbl_80B0D844:
/* 80B0D844  90 81 00 08 */	stw r4, 8(r1)
/* 80B0D848  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80B0D84C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80B0D850  38 81 00 08 */	addi r4, r1, 8
/* 80B0D854  4B 50 BF A5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80B0D858  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80B0D85C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80B0D860  38 9F 00 00 */	addi r4, r31, 0
/* 80B0D864  C0 04 00 8C */	lfs f0, 0x8c(r4)
/* 80B0D868  EC 21 00 2A */	fadds f1, f1, f0
/* 80B0D86C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B0D870  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80B0D874  D0 3D 04 AC */	stfs f1, 0x4ac(r29)
/* 80B0D878  D0 5D 04 B0 */	stfs f2, 0x4b0(r29)
lbl_80B0D87C:
/* 80B0D87C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80B0D880  D0 1D 09 74 */	stfs f0, 0x974(r29)
/* 80B0D884  D0 1D 09 7C */	stfs f0, 0x97c(r29)
/* 80B0D888  38 A0 00 00 */	li r5, 0
/* 80B0D88C  90 BD 0D 5C */	stw r5, 0xd5c(r29)
/* 80B0D890  90 BD 0D 60 */	stw r5, 0xd60(r29)
/* 80B0D894  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B0D898  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B0D89C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B0D8A0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B0D8A4  90 7D 0D 20 */	stw r3, 0xd20(r29)
/* 80B0D8A8  90 1D 0D 24 */	stw r0, 0xd24(r29)
/* 80B0D8AC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B0D8B0  90 1D 0D 28 */	stw r0, 0xd28(r29)
/* 80B0D8B4  38 00 FF FF */	li r0, -1
/* 80B0D8B8  B0 1D 0D 74 */	sth r0, 0xd74(r29)
/* 80B0D8BC  B0 BD 0D 76 */	sth r5, 0xd76(r29)
/* 80B0D8C0  90 1D 0D 34 */	stw r0, 0xd34(r29)
/* 80B0D8C4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B0D8C8  54 00 84 3E */	srwi r0, r0, 0x10
/* 80B0D8CC  B0 1D 0D 72 */	sth r0, 0xd72(r29)
/* 80B0D8D0  A8 7D 0D 72 */	lha r3, 0xd72(r29)
/* 80B0D8D4  7C 60 07 35 */	extsh. r0, r3
/* 80B0D8D8  41 82 00 0C */	beq lbl_80B0D8E4
/* 80B0D8DC  2C 03 00 FF */	cmpwi r3, 0xff
/* 80B0D8E0  40 82 00 0C */	bne lbl_80B0D8EC
lbl_80B0D8E4:
/* 80B0D8E4  38 00 0B C6 */	li r0, 0xbc6
/* 80B0D8E8  B0 1D 0D 72 */	sth r0, 0xd72(r29)
lbl_80B0D8EC:
/* 80B0D8EC  7F A3 EB 78 */	mr r3, r29
/* 80B0D8F0  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80B0D8F4  4B 64 69 5D */	bl setAngle__8daNpcF_cFs
/* 80B0D8F8  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80B0D8FC  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 80B0D900  D0 3D 04 F8 */	stfs f1, 0x4f8(r29)
/* 80B0D904  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
/* 80B0D908  D0 3D 05 00 */	stfs f1, 0x500(r29)
/* 80B0D90C  7F A3 EB 78 */	mr r3, r29
/* 80B0D910  38 80 00 02 */	li r4, 2
/* 80B0D914  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B0D918  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B0D91C  7D 89 03 A6 */	mtctr r12
/* 80B0D920  4E 80 04 21 */	bctrl 
/* 80B0D924  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B0D928  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B0D92C  2C 00 00 03 */	cmpwi r0, 3
/* 80B0D930  41 82 00 E0 */	beq lbl_80B0DA10
/* 80B0D934  40 80 00 1C */	bge lbl_80B0D950
/* 80B0D938  2C 00 00 01 */	cmpwi r0, 1
/* 80B0D93C  41 82 00 64 */	beq lbl_80B0D9A0
/* 80B0D940  40 80 00 98 */	bge lbl_80B0D9D8
/* 80B0D944  2C 00 00 00 */	cmpwi r0, 0
/* 80B0D948  40 80 00 20 */	bge lbl_80B0D968
/* 80B0D94C  48 00 01 30 */	b lbl_80B0DA7C
lbl_80B0D950:
/* 80B0D950  2C 00 00 FF */	cmpwi r0, 0xff
/* 80B0D954  41 82 00 14 */	beq lbl_80B0D968
/* 80B0D958  40 80 01 24 */	bge lbl_80B0DA7C
/* 80B0D95C  2C 00 00 05 */	cmpwi r0, 5
/* 80B0D960  40 80 01 1C */	bge lbl_80B0DA7C
/* 80B0D964  48 00 00 E4 */	b lbl_80B0DA48
lbl_80B0D968:
/* 80B0D968  80 7E 00 E4 */	lwz r3, 0xe4(r30)
/* 80B0D96C  80 1E 00 E8 */	lwz r0, 0xe8(r30)
/* 80B0D970  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80B0D974  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B0D978  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 80B0D97C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B0D980  7F A3 EB 78 */	mr r3, r29
/* 80B0D984  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B0D988  48 00 02 41 */	bl setAction__10daNpcTkc_cFM10daNpcTkc_cFPCvPv_v
/* 80B0D98C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B0D990  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80B0D994  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80B0D998  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80B0D99C  48 00 00 E0 */	b lbl_80B0DA7C
lbl_80B0D9A0:
/* 80B0D9A0  80 7E 00 F0 */	lwz r3, 0xf0(r30)
/* 80B0D9A4  80 1E 00 F4 */	lwz r0, 0xf4(r30)
/* 80B0D9A8  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B0D9AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0D9B0  80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 80B0D9B4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B0D9B8  7F A3 EB 78 */	mr r3, r29
/* 80B0D9BC  38 81 00 30 */	addi r4, r1, 0x30
/* 80B0D9C0  48 00 02 09 */	bl setAction__10daNpcTkc_cFM10daNpcTkc_cFPCvPv_v
/* 80B0D9C4  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B0D9C8  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80B0D9CC  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80B0D9D0  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80B0D9D4  48 00 00 A8 */	b lbl_80B0DA7C
lbl_80B0D9D8:
/* 80B0D9D8  80 7E 00 FC */	lwz r3, 0xfc(r30)
/* 80B0D9DC  80 1E 01 00 */	lwz r0, 0x100(r30)
/* 80B0D9E0  90 61 00 24 */	stw r3, 0x24(r1)
/* 80B0D9E4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B0D9E8  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 80B0D9EC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B0D9F0  7F A3 EB 78 */	mr r3, r29
/* 80B0D9F4  38 81 00 24 */	addi r4, r1, 0x24
/* 80B0D9F8  48 00 01 D1 */	bl setAction__10daNpcTkc_cFM10daNpcTkc_cFPCvPv_v
/* 80B0D9FC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B0DA00  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80B0DA04  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80B0DA08  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80B0DA0C  48 00 00 70 */	b lbl_80B0DA7C
lbl_80B0DA10:
/* 80B0DA10  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 80B0DA14  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 80B0DA18  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B0DA1C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B0DA20  80 1E 01 10 */	lwz r0, 0x110(r30)
/* 80B0DA24  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B0DA28  7F A3 EB 78 */	mr r3, r29
/* 80B0DA2C  38 81 00 18 */	addi r4, r1, 0x18
/* 80B0DA30  48 00 01 99 */	bl setAction__10daNpcTkc_cFM10daNpcTkc_cFPCvPv_v
/* 80B0DA34  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B0DA38  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80B0DA3C  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80B0DA40  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80B0DA44  48 00 00 38 */	b lbl_80B0DA7C
lbl_80B0DA48:
/* 80B0DA48  80 7E 01 14 */	lwz r3, 0x114(r30)
/* 80B0DA4C  80 1E 01 18 */	lwz r0, 0x118(r30)
/* 80B0DA50  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B0DA54  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B0DA58  80 1E 01 1C */	lwz r0, 0x11c(r30)
/* 80B0DA5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0DA60  7F A3 EB 78 */	mr r3, r29
/* 80B0DA64  38 81 00 0C */	addi r4, r1, 0xc
/* 80B0DA68  48 00 01 61 */	bl setAction__10daNpcTkc_cFM10daNpcTkc_cFPCvPv_v
/* 80B0DA6C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B0DA70  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80B0DA74  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80B0DA78  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
lbl_80B0DA7C:
/* 80B0DA7C  39 61 00 60 */	addi r11, r1, 0x60
/* 80B0DA80  4B 85 47 A1 */	bl _restgpr_27
/* 80B0DA84  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B0DA88  7C 08 03 A6 */	mtlr r0
/* 80B0DA8C  38 21 00 60 */	addi r1, r1, 0x60
/* 80B0DA90  4E 80 00 20 */	blr 
