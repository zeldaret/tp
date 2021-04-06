lbl_8094C6C4:
/* 8094C6C4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8094C6C8  7C 08 02 A6 */	mflr r0
/* 8094C6CC  90 01 00 94 */	stw r0, 0x94(r1)
/* 8094C6D0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8094C6D4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8094C6D8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8094C6DC  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8094C6E0  7C 7E 1B 78 */	mr r30, r3
/* 8094C6E4  FF E0 08 90 */	fmr f31, f1
/* 8094C6E8  3C 60 80 95 */	lis r3, lit_3958@ha /* 0x809511C0@ha */
/* 8094C6EC  3B E3 11 C0 */	addi r31, r3, lit_3958@l /* 0x809511C0@l */
/* 8094C6F0  38 61 00 20 */	addi r3, r1, 0x20
/* 8094C6F4  4B 72 AE 89 */	bl __ct__11dBgS_GndChkFv
/* 8094C6F8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8094C6FC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8094C700  80 63 00 00 */	lwz r3, 0(r3)
/* 8094C704  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8094C708  4B 6B FC D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8094C70C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094C710  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8094C714  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8094C718  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8094C71C  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 8094C720  38 61 00 14 */	addi r3, r1, 0x14
/* 8094C724  38 81 00 08 */	addi r4, r1, 8
/* 8094C728  4B 92 47 C5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8094C72C  38 61 00 08 */	addi r3, r1, 8
/* 8094C730  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8094C734  7C 65 1B 78 */	mr r5, r3
/* 8094C738  4B 9F A9 59 */	bl PSVECAdd
/* 8094C73C  38 61 00 20 */	addi r3, r1, 0x20
/* 8094C740  38 81 00 08 */	addi r4, r1, 8
/* 8094C744  4B 91 B5 E5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8094C748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094C74C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094C750  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8094C754  38 81 00 20 */	addi r4, r1, 0x20
/* 8094C758  4B 72 7D 49 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8094C75C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8094C760  EC 20 08 28 */	fsubs f1, f0, f1
/* 8094C764  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8094C768  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094C76C  40 81 00 18 */	ble lbl_8094C784
/* 8094C770  38 61 00 20 */	addi r3, r1, 0x20
/* 8094C774  38 80 FF FF */	li r4, -1
/* 8094C778  4B 72 AE 79 */	bl __dt__11dBgS_GndChkFv
/* 8094C77C  38 60 00 01 */	li r3, 1
/* 8094C780  48 00 00 14 */	b lbl_8094C794
lbl_8094C784:
/* 8094C784  38 61 00 20 */	addi r3, r1, 0x20
/* 8094C788  38 80 FF FF */	li r4, -1
/* 8094C78C  4B 72 AE 65 */	bl __dt__11dBgS_GndChkFv
/* 8094C790  38 60 00 00 */	li r3, 0
lbl_8094C794:
/* 8094C794  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8094C798  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8094C79C  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8094C7A0  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8094C7A4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8094C7A8  7C 08 03 A6 */	mtlr r0
/* 8094C7AC  38 21 00 90 */	addi r1, r1, 0x90
/* 8094C7B0  4E 80 00 20 */	blr 
