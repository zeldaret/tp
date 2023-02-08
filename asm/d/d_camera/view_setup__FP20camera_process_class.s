lbl_80181708:
/* 80181708  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018170C  7C 08 02 A6 */	mflr r0
/* 80181710  90 01 00 24 */	stw r0, 0x24(r1)
/* 80181714  39 61 00 20 */	addi r11, r1, 0x20
/* 80181718  48 1E 0A C5 */	bl _savegpr_29
/* 8018171C  7C 7D 1B 78 */	mr r29, r3
/* 80181720  4B E9 CB E9 */	bl fopCamM_GetParam__FP12camera_class
/* 80181724  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80181728  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8018172C  1C 03 00 38 */	mulli r0, r3, 0x38
/* 80181730  7C 64 02 14 */	add r3, r4, r0
/* 80181734  88 03 5D 78 */	lbz r0, 0x5d78(r3)
/* 80181738  7C 00 07 74 */	extsb r0, r0
/* 8018173C  3B C4 0F 38 */	addi r30, r4, 0xf38
/* 80181740  1C 60 00 2C */	mulli r3, r0, 0x2c
/* 80181744  3B E3 4E 10 */	addi r31, r3, 0x4e10
/* 80181748  7F FE FA 14 */	add r31, r30, r31
/* 8018174C  38 7D 01 40 */	addi r3, r29, 0x140
/* 80181750  38 9D 00 D8 */	addi r4, r29, 0xd8
/* 80181754  38 BD 00 E4 */	addi r5, r29, 0xe4
/* 80181758  38 DD 00 F0 */	addi r6, r29, 0xf0
/* 8018175C  A8 FD 00 FC */	lha r7, 0xfc(r29)
/* 80181760  4B E8 AF B1 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
/* 80181764  38 7D 01 40 */	addi r3, r29, 0x140
/* 80181768  38 9D 01 E0 */	addi r4, r29, 0x1e0
/* 8018176C  48 1C 4D 45 */	bl PSMTXCopy
/* 80181770  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80181774  D0 1D 01 EC */	stfs f0, 0x1ec(r29)
/* 80181778  D0 1D 01 FC */	stfs f0, 0x1fc(r29)
/* 8018177C  D0 1D 02 0C */	stfs f0, 0x20c(r29)
/* 80181780  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80181784  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80181788  93 E3 61 A8 */	stw r31, 0x61a8(r3)
/* 8018178C  93 E3 61 AC */	stw r31, 0x61ac(r3)
/* 80181790  93 A3 61 B0 */	stw r29, 0x61b0(r3)
/* 80181794  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 80181798  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8018179C  41 82 00 0C */	beq lbl_801817A8
/* 801817A0  C0 9D 00 CC */	lfs f4, 0xcc(r29)
/* 801817A4  48 00 00 38 */	b lbl_801817DC
lbl_801817A8:
/* 801817A8  38 7E 3E E8 */	addi r3, r30, 0x3ee8
/* 801817AC  81 9E 3E E8 */	lwz r12, 0x3ee8(r30)
/* 801817B0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801817B4  7D 89 03 A6 */	mtctr r12
/* 801817B8  4E 80 04 21 */	bctrl 
/* 801817BC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801817C0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 801817C4  C8 22 9D 60 */	lfd f1, lit_9410(r2)
/* 801817C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801817CC  3C 00 43 30 */	lis r0, 0x4330
/* 801817D0  90 01 00 08 */	stw r0, 8(r1)
/* 801817D4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801817D8  EC 80 08 28 */	fsubs f4, f0, f1
lbl_801817DC:
/* 801817DC  C0 3D 00 D0 */	lfs f1, 0xd0(r29)
/* 801817E0  C0 5D 00 D4 */	lfs f2, 0xd4(r29)
/* 801817E4  C0 7D 00 C8 */	lfs f3, 0xc8(r29)
/* 801817E8  4B E9 3A A5 */	bl setup__14mDoLib_clipperFffff
/* 801817EC  39 61 00 20 */	addi r11, r1, 0x20
/* 801817F0  48 1E 0A 39 */	bl _restgpr_29
/* 801817F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801817F8  7C 08 03 A6 */	mtlr r0
/* 801817FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80181800  4E 80 00 20 */	blr 
