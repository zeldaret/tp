lbl_80A43C64:
/* 80A43C64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A43C68  7C 08 02 A6 */	mflr r0
/* 80A43C6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A43C70  39 61 00 20 */	addi r11, r1, 0x20
/* 80A43C74  4B 91 E5 69 */	bl _savegpr_29
/* 80A43C78  7C 7D 1B 78 */	mr r29, r3
/* 80A43C7C  48 00 06 55 */	bl selectAction__11daNpc_Knj_cFv
/* 80A43C80  7F A3 EB 78 */	mr r3, r29
/* 80A43C84  48 00 00 D5 */	bl srchActors__11daNpc_Knj_cFv
/* 80A43C88  3C 60 80 A4 */	lis r3, m__17daNpc_Knj_Param_c@ha /* 0x80A45510@ha */
/* 80A43C8C  38 83 55 10 */	addi r4, r3, m__17daNpc_Knj_Param_c@l /* 0x80A45510@l */
/* 80A43C90  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80A43C94  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80A43C98  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80A43C9C  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80A43CA0  4B 70 8D 79 */	bl daNpcT_getDistTableIdx__Fii
/* 80A43CA4  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80A43CA8  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80A43CAC  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80A43CB0  7F C3 07 34 */	extsh r3, r30
/* 80A43CB4  7F E4 07 34 */	extsh r4, r31
/* 80A43CB8  4B 70 8D 61 */	bl daNpcT_getDistTableIdx__Fii
/* 80A43CBC  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80A43CC0  38 00 00 0A */	li r0, 0xa
/* 80A43CC4  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80A43CC8  3C 60 80 A4 */	lis r3, m__17daNpc_Knj_Param_c@ha /* 0x80A45510@ha */
/* 80A43CCC  38 63 55 10 */	addi r3, r3, m__17daNpc_Knj_Param_c@l /* 0x80A45510@l */
/* 80A43CD0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A43CD4  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80A43CD8  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80A43CDC  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80A43CE0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A43CE4  FC 00 00 1E */	fctiwz f0, f0
/* 80A43CE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A43CEC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A43CF0  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80A43CF4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A43CF8  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80A43CFC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A43D00  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80A43D04  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80A43D08  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 80A43D0C  4B 63 22 35 */	bl SetWallR__12dBgS_AcchCirFf
/* 80A43D10  3C 60 80 A4 */	lis r3, m__17daNpc_Knj_Param_c@ha /* 0x80A45510@ha */
/* 80A43D14  38 63 55 10 */	addi r3, r3, m__17daNpc_Knj_Param_c@l /* 0x80A45510@l */
/* 80A43D18  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A43D1C  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 80A43D20  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A43D24  D0 1D 0D E8 */	stfs f0, 0xde8(r29)
/* 80A43D28  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A43D2C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80A43D30  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A43D34  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80A43D38  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80A43D3C  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 80A43D40  39 61 00 20 */	addi r11, r1, 0x20
/* 80A43D44  4B 91 E4 E5 */	bl _restgpr_29
/* 80A43D48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A43D4C  7C 08 03 A6 */	mtlr r0
/* 80A43D50  38 21 00 20 */	addi r1, r1, 0x20
/* 80A43D54  4E 80 00 20 */	blr 
