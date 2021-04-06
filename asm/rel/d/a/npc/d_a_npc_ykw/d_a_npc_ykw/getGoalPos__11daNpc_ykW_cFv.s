lbl_80B618FC:
/* 80B618FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B61900  7C 08 02 A6 */	mflr r0
/* 80B61904  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B61908  39 61 00 30 */	addi r11, r1, 0x30
/* 80B6190C  4B 80 08 D1 */	bl _savegpr_29
/* 80B61910  7C 7D 1B 78 */	mr r29, r3
/* 80B61914  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B61918  3B C3 7C 38 */	addi r30, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B6191C  38 64 0F 94 */	addi r3, r4, 0xf94
/* 80B61920  4B 5E 3D E9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B61924  7C 7F 1B 78 */	mr r31, r3
/* 80B61928  38 61 00 08 */	addi r3, r1, 8
/* 80B6192C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B61930  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B61934  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B61938  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B6193C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B61940  4B 70 51 F5 */	bl __mi__4cXyzCFRC3Vec
/* 80B61944  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B61948  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B6194C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B61950  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B61954  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B61958  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B6195C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B61960  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B61964  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B61968  7C 00 00 D0 */	neg r0, r0
/* 80B6196C  7C 04 07 34 */	extsh r4, r0
/* 80B61970  4B 4A AA 6D */	bl mDoMtx_YrotS__FPA4_fs
/* 80B61974  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B61978  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B6197C  38 81 00 14 */	addi r4, r1, 0x14
/* 80B61980  7C 85 23 78 */	mr r5, r4
/* 80B61984  4B 7E 53 E9 */	bl PSMTXMultVec
/* 80B61988  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 80B6198C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B61990  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B61994  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B61998  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B6199C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B619A0  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 80B619A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B619A8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B619AC  4B 4A B3 B9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B619B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B619B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B619B8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80B619BC  4B 4A AA 79 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B619C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B619C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B619C8  38 81 00 14 */	addi r4, r1, 0x14
/* 80B619CC  7C 85 23 78 */	mr r5, r4
/* 80B619D0  4B 7E 53 9D */	bl PSMTXMultVec
/* 80B619D4  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B619D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B619DC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B619E0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80B619E4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B619E8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80B619EC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B619F0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80B619F4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B619F8  4B 80 08 31 */	bl _restgpr_29
/* 80B619FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B61A00  7C 08 03 A6 */	mtlr r0
/* 80B61A04  38 21 00 30 */	addi r1, r1, 0x30
/* 80B61A08  4E 80 00 20 */	blr 
