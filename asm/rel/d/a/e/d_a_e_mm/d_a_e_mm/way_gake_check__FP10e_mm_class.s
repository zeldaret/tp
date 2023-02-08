lbl_80720590:
/* 80720590  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80720594  7C 08 02 A6 */	mflr r0
/* 80720598  90 01 00 84 */	stw r0, 0x84(r1)
/* 8072059C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 807205A0  93 C1 00 78 */	stw r30, 0x78(r1)
/* 807205A4  7C 7E 1B 78 */	mr r30, r3
/* 807205A8  3C 60 80 72 */	lis r3, lit_3789@ha /* 0x80722C3C@ha */
/* 807205AC  3B E3 2C 3C */	addi r31, r3, lit_3789@l /* 0x80722C3C@l */
/* 807205B0  38 61 00 20 */	addi r3, r1, 0x20
/* 807205B4  4B 95 6F C9 */	bl __ct__11dBgS_GndChkFv
/* 807205B8  7F C3 F3 78 */	mr r3, r30
/* 807205BC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807205C0  4B FF FB E1 */	bl wall_check__FP10e_mm_classf
/* 807205C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807205C8  40 82 00 10 */	bne lbl_807205D8
/* 807205CC  80 1E 07 1C */	lwz r0, 0x71c(r30)
/* 807205D0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807205D4  41 82 00 18 */	beq lbl_807205EC
lbl_807205D8:
/* 807205D8  38 61 00 20 */	addi r3, r1, 0x20
/* 807205DC  38 80 FF FF */	li r4, -1
/* 807205E0  4B 95 70 11 */	bl __dt__11dBgS_GndChkFv
/* 807205E4  38 60 00 00 */	li r3, 0
/* 807205E8  48 00 00 FC */	b lbl_807206E4
lbl_807205EC:
/* 807205EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807205F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807205F4  80 63 00 00 */	lwz r3, 0(r3)
/* 807205F8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807205FC  4B 8E BD E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80720600  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80720604  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80720608  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8072060C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80720610  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80720614  38 61 00 14 */	addi r3, r1, 0x14
/* 80720618  38 81 00 08 */	addi r4, r1, 8
/* 8072061C  4B B5 08 D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80720620  38 61 00 08 */	addi r3, r1, 8
/* 80720624  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80720628  7C 65 1B 78 */	mr r5, r3
/* 8072062C  4B C2 6A 65 */	bl PSVECAdd
/* 80720630  C0 01 00 08 */	lfs f0, 8(r1)
/* 80720634  D0 1E 0B DC */	stfs f0, 0xbdc(r30)
/* 80720638  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8072063C  D0 1E 0B E0 */	stfs f0, 0xbe0(r30)
/* 80720640  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80720644  D0 1E 0B E4 */	stfs f0, 0xbe4(r30)
/* 80720648  38 61 00 20 */	addi r3, r1, 0x20
/* 8072064C  38 81 00 08 */	addi r4, r1, 8
/* 80720650  4B B4 76 D9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80720654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80720658  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072065C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80720660  38 81 00 20 */	addi r4, r1, 0x20
/* 80720664  4B 95 3E 3D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80720668  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8072066C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80720670  FC 00 08 18 */	frsp f0, f1
/* 80720674  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80720678  40 82 00 18 */	bne lbl_80720690
/* 8072067C  38 61 00 20 */	addi r3, r1, 0x20
/* 80720680  38 80 FF FF */	li r4, -1
/* 80720684  4B 95 6F 6D */	bl __dt__11dBgS_GndChkFv
/* 80720688  38 60 00 01 */	li r3, 1
/* 8072068C  48 00 00 58 */	b lbl_807206E4
lbl_80720690:
/* 80720690  C0 01 00 08 */	lfs f0, 8(r1)
/* 80720694  D0 1E 0B E8 */	stfs f0, 0xbe8(r30)
/* 80720698  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8072069C  D0 1E 0B EC */	stfs f0, 0xbec(r30)
/* 807206A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807206A4  D0 1E 0B F0 */	stfs f0, 0xbf0(r30)
/* 807206A8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807206AC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807206B0  EC 21 00 28 */	fsubs f1, f1, f0
/* 807206B4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807206B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807206BC  40 81 00 18 */	ble lbl_807206D4
/* 807206C0  38 61 00 20 */	addi r3, r1, 0x20
/* 807206C4  38 80 FF FF */	li r4, -1
/* 807206C8  4B 95 6F 29 */	bl __dt__11dBgS_GndChkFv
/* 807206CC  38 60 00 01 */	li r3, 1
/* 807206D0  48 00 00 14 */	b lbl_807206E4
lbl_807206D4:
/* 807206D4  38 61 00 20 */	addi r3, r1, 0x20
/* 807206D8  38 80 FF FF */	li r4, -1
/* 807206DC  4B 95 6F 15 */	bl __dt__11dBgS_GndChkFv
/* 807206E0  38 60 00 00 */	li r3, 0
lbl_807206E4:
/* 807206E4  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 807206E8  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 807206EC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807206F0  7C 08 03 A6 */	mtlr r0
/* 807206F4  38 21 00 80 */	addi r1, r1, 0x80
/* 807206F8  4E 80 00 20 */	blr 
