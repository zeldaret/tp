lbl_80706260:
/* 80706260  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80706264  7C 08 02 A6 */	mflr r0
/* 80706268  90 01 00 24 */	stw r0, 0x24(r1)
/* 8070626C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80706270  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80706274  7C 7F 1B 78 */	mr r31, r3
/* 80706278  A8 03 06 9A */	lha r0, 0x69a(r3)
/* 8070627C  2C 00 00 05 */	cmpwi r0, 5
/* 80706280  41 82 00 C4 */	beq lbl_80706344
/* 80706284  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80706288  83 C3 00 04 */	lwz r30, 4(r3)
/* 8070628C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80706290  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80706294  38 80 00 00 */	li r4, 0
/* 80706298  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8070629C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 807062A0  4B A9 D5 24 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807062A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807062A8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807062AC  80 9E 00 04 */	lwz r4, 4(r30)
/* 807062B0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807062B4  4B A9 EA EC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807062B8  80 9E 00 04 */	lwz r4, 4(r30)
/* 807062BC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 807062C0  38 84 00 58 */	addi r4, r4, 0x58
/* 807062C4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 807062C8  FC 00 00 1E */	fctiwz f0, f0
/* 807062CC  D8 01 00 08 */	stfd f0, 8(r1)
/* 807062D0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 807062D4  4B 90 73 14 */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 807062D8  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 807062DC  4B 90 AE E4 */	b entryDL__16mDoExt_McaMorfSOFv
/* 807062E0  88 1F 06 8C */	lbz r0, 0x68c(r31)
/* 807062E4  7C 00 07 74 */	extsb r0, r0
/* 807062E8  2C 00 00 01 */	cmpwi r0, 1
/* 807062EC  40 82 00 2C */	bne lbl_80706318
/* 807062F0  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 807062F4  80 83 00 04 */	lwz r4, 4(r3)
/* 807062F8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807062FC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80706300  80 84 00 04 */	lwz r4, 4(r4)
/* 80706304  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80706308  4B A9 EA 98 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8070630C  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 80706310  4B 90 A3 70 */	b entryDL__14mDoExt_McaMorfFv
/* 80706314  48 00 00 30 */	b lbl_80706344
lbl_80706318:
/* 80706318  2C 00 00 02 */	cmpwi r0, 2
/* 8070631C  40 82 00 28 */	bne lbl_80706344
/* 80706320  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 80706324  80 83 00 04 */	lwz r4, 4(r3)
/* 80706328  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8070632C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80706330  80 84 00 04 */	lwz r4, 4(r4)
/* 80706334  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80706338  4B A9 EA 68 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8070633C  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 80706340  4B 90 A3 40 */	b entryDL__14mDoExt_McaMorfFv
lbl_80706344:
/* 80706344  38 7F 06 B4 */	addi r3, r31, 0x6b4
/* 80706348  38 80 00 10 */	li r4, 0x10
/* 8070634C  3C A0 80 71 */	lis r5, l_color@ha
/* 80706350  38 A5 8A F0 */	addi r5, r5, l_color@l
/* 80706354  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80706358  4B 90 DC 58 */	b update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 8070635C  38 7F 06 B4 */	addi r3, r31, 0x6b4
/* 80706360  81 9F 06 B4 */	lwz r12, 0x6b4(r31)
/* 80706364  81 8C 00 08 */	lwz r12, 8(r12)
/* 80706368  7D 89 03 A6 */	mtctr r12
/* 8070636C  4E 80 04 21 */	bctrl 
/* 80706370  1C 83 00 14 */	mulli r4, r3, 0x14
/* 80706374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80706378  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 8070637C  7C 60 22 14 */	add r3, r0, r4
/* 80706380  3C 63 00 01 */	addis r3, r3, 1
/* 80706384  38 63 61 54 */	addi r3, r3, 0x6154
/* 80706388  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8070638C  38 9F 06 B4 */	addi r4, r31, 0x6b4
/* 80706390  4B 90 E3 A8 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 80706394  38 60 00 01 */	li r3, 1
/* 80706398  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8070639C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807063A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807063A4  7C 08 03 A6 */	mtlr r0
/* 807063A8  38 21 00 20 */	addi r1, r1, 0x20
/* 807063AC  4E 80 00 20 */	blr 
