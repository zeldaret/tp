lbl_8019EC98:
/* 8019EC98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8019EC9C  7C 08 02 A6 */	mflr r0
/* 8019ECA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8019ECA4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8019ECA8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8019ECAC  39 61 00 30 */	addi r11, r1, 0x30
/* 8019ECB0  48 1C 35 1D */	bl _savegpr_25
/* 8019ECB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8019ECB8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8019ECBC  3B 3F 4E 20 */	addi r25, r31, 0x4e20
/* 8019ECC0  7F 23 CB 78 */	mr r3, r25
/* 8019ECC4  81 99 00 00 */	lwz r12, 0(r25)
/* 8019ECC8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8019ECCC  7D 89 03 A6 */	mtctr r12
/* 8019ECD0  4E 80 04 21 */	bctrl 
/* 8019ECD4  7C 7A 1B 78 */	mr r26, r3
/* 8019ECD8  7F 23 CB 78 */	mr r3, r25
/* 8019ECDC  81 99 00 00 */	lwz r12, 0(r25)
/* 8019ECE0  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8019ECE4  7D 89 03 A6 */	mtctr r12
/* 8019ECE8  4E 80 04 21 */	bctrl 
/* 8019ECEC  7C 7B 1B 78 */	mr r27, r3
/* 8019ECF0  7F 23 CB 78 */	mr r3, r25
/* 8019ECF4  81 99 00 00 */	lwz r12, 0(r25)
/* 8019ECF8  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8019ECFC  7D 89 03 A6 */	mtctr r12
/* 8019ED00  4E 80 04 21 */	bctrl 
/* 8019ED04  7C 7C 1B 78 */	mr r28, r3
/* 8019ED08  7F 23 CB 78 */	mr r3, r25
/* 8019ED0C  81 99 00 00 */	lwz r12, 0(r25)
/* 8019ED10  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8019ED14  7D 89 03 A6 */	mtctr r12
/* 8019ED18  4E 80 04 21 */	bctrl 
/* 8019ED1C  7C 7D 1B 78 */	mr r29, r3
/* 8019ED20  38 60 00 00 */	li r3, 0
/* 8019ED24  38 80 00 00 */	li r4, 0
/* 8019ED28  38 A0 00 00 */	li r5, 0
/* 8019ED2C  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 8019ED30  48 00 91 59 */	bl dKy_actor_addcol_set__Fsssf
/* 8019ED34  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 8019ED38  FC 40 08 90 */	fmr f2, f1
/* 8019ED3C  FC 60 08 90 */	fmr f3, f1
/* 8019ED40  48 00 93 91 */	bl dKy_fog_startendz_set__Ffff
/* 8019ED44  38 60 00 00 */	li r3, 0
/* 8019ED48  38 80 00 00 */	li r4, 0
/* 8019ED4C  38 A0 00 00 */	li r5, 0
/* 8019ED50  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 8019ED54  48 00 93 0D */	bl dKy_vrbox_addcol_set__Fsssf
/* 8019ED58  38 80 00 00 */	li r4, 0
/* 8019ED5C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019ED60  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019ED64  90 83 12 80 */	stw r4, 0x1280(r3)
/* 8019ED68  38 00 00 01 */	li r0, 1
/* 8019ED6C  98 03 12 D2 */	stb r0, 0x12d2(r3)
/* 8019ED70  98 83 12 D3 */	stb r4, 0x12d3(r3)
/* 8019ED74  90 83 12 B4 */	stw r4, 0x12b4(r3)
/* 8019ED78  98 83 12 D4 */	stb r4, 0x12d4(r3)
/* 8019ED7C  98 83 12 D5 */	stb r4, 0x12d5(r3)
/* 8019ED80  98 03 12 CF */	stb r0, 0x12cf(r3)
/* 8019ED84  98 83 12 D0 */	stb r4, 0x12d0(r3)
/* 8019ED88  38 00 01 40 */	li r0, 0x140
/* 8019ED8C  B0 03 12 BC */	sth r0, 0x12bc(r3)
/* 8019ED90  38 60 00 00 */	li r3, 0
/* 8019ED94  4B EB 7C 91 */	bl dKyd_xfog_table_set__FUc
/* 8019ED98  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 8019ED9C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019EDA0  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019EDA4  D0 1E 11 F8 */	stfs f0, 0x11f8(r30)
/* 8019EDA8  D0 1E 11 FC */	stfs f0, 0x11fc(r30)
/* 8019EDAC  D0 1E 12 00 */	stfs f0, 0x1200(r30)
/* 8019EDB0  D0 1E 12 04 */	stfs f0, 0x1204(r30)
/* 8019EDB4  D0 1E 12 08 */	stfs f0, 0x1208(r30)
/* 8019EDB8  D0 1E 12 0C */	stfs f0, 0x120c(r30)
/* 8019EDBC  D0 1E 12 10 */	stfs f0, 0x1210(r30)
/* 8019EDC0  D0 1E 12 14 */	stfs f0, 0x1214(r30)
/* 8019EDC4  D0 1E 12 18 */	stfs f0, 0x1218(r30)
/* 8019EDC8  D0 1E 12 1C */	stfs f0, 0x121c(r30)
/* 8019EDCC  D0 1E 12 20 */	stfs f0, 0x1220(r30)
/* 8019EDD0  D0 1E 12 24 */	stfs f0, 0x1224(r30)
/* 8019EDD4  D0 1E 12 28 */	stfs f0, 0x1228(r30)
/* 8019EDD8  D0 1E 12 2C */	stfs f0, 0x122c(r30)
/* 8019EDDC  38 00 00 00 */	li r0, 0
/* 8019EDE0  98 1E 12 D1 */	stb r0, 0x12d1(r30)
/* 8019EDE4  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 8019EDE8  D0 3E 12 40 */	stfs f1, 0x1240(r30)
/* 8019EDEC  D0 3E 12 30 */	stfs f1, 0x1230(r30)
/* 8019EDF0  D0 3E 12 34 */	stfs f1, 0x1234(r30)
/* 8019EDF4  98 1E 0E D5 */	stb r0, 0xed5(r30)
/* 8019EDF8  D0 3E 12 38 */	stfs f1, 0x1238(r30)
/* 8019EDFC  D0 3E 12 3C */	stfs f1, 0x123c(r30)
/* 8019EE00  98 1E 12 D6 */	stb r0, 0x12d6(r30)
/* 8019EE04  98 1E 12 D7 */	stb r0, 0x12d7(r30)
/* 8019EE08  98 1E 12 D8 */	stb r0, 0x12d8(r30)
/* 8019EE0C  D0 3E 12 58 */	stfs f1, 0x1258(r30)
/* 8019EE10  38 00 00 64 */	li r0, 0x64
/* 8019EE14  B0 1E 12 C0 */	sth r0, 0x12c0(r30)
/* 8019EE18  D0 1E 12 5C */	stfs f0, 0x125c(r30)
/* 8019EE1C  D0 3E 10 64 */	stfs f1, 0x1064(r30)
/* 8019EE20  C0 02 A2 50 */	lfs f0, lit_4507(r2)
/* 8019EE24  D0 1E 10 68 */	stfs f0, 0x1068(r30)
/* 8019EE28  D0 1E 10 6C */	stfs f0, 0x106c(r30)
/* 8019EE2C  D0 3E 12 70 */	stfs f1, 0x1270(r30)
/* 8019EE30  3B FF 4E 00 */	addi r31, r31, 0x4e00
/* 8019EE34  7F E3 FB 78 */	mr r3, r31
/* 8019EE38  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 8019EE3C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 8019EE40  38 84 01 5C */	addi r4, r4, 0x15c
/* 8019EE44  48 1C 9B 51 */	bl strcmp
/* 8019EE48  2C 03 00 00 */	cmpwi r3, 0
/* 8019EE4C  40 82 00 0C */	bne lbl_8019EE58
/* 8019EE50  C0 02 A2 A0 */	lfs f0, lit_5344(r2)
/* 8019EE54  D0 1E 12 70 */	stfs f0, 0x1270(r30)
lbl_8019EE58:
/* 8019EE58  38 00 00 00 */	li r0, 0
/* 8019EE5C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019EE60  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019EE64  98 03 13 08 */	stb r0, 0x1308(r3)
/* 8019EE68  98 03 13 0B */	stb r0, 0x130b(r3)
/* 8019EE6C  38 00 00 01 */	li r0, 1
/* 8019EE70  98 03 13 09 */	stb r0, 0x1309(r3)
/* 8019EE74  7F E3 FB 78 */	mr r3, r31
/* 8019EE78  4B FF FD 59 */	bl dKy_light_size_get__FPCc
/* 8019EE7C  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 8019EE80  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019EE84  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019EE88  D0 03 12 60 */	stfs f0, 0x1260(r3)
/* 8019EE8C  38 00 FF FF */	li r0, -1
/* 8019EE90  98 03 12 FC */	stb r0, 0x12fc(r3)
/* 8019EE94  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019EE98  D0 03 12 78 */	stfs f0, 0x1278(r3)
/* 8019EE9C  C0 02 A2 A4 */	lfs f0, lit_5345(r2)
/* 8019EEA0  D0 03 12 64 */	stfs f0, 0x1264(r3)
/* 8019EEA4  C0 02 A2 A8 */	lfs f0, lit_5346(r2)
/* 8019EEA8  D0 03 12 68 */	stfs f0, 0x1268(r3)
/* 8019EEAC  D0 03 12 6C */	stfs f0, 0x126c(r3)
/* 8019EEB0  C0 02 A2 8C */	lfs f0, lit_5106(r2)
/* 8019EEB4  D0 03 12 7C */	stfs f0, 0x127c(r3)
/* 8019EEB8  7F 23 CB 78 */	mr r3, r25
/* 8019EEBC  81 99 00 00 */	lwz r12, 0(r25)
/* 8019EEC0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8019EEC4  7D 89 03 A6 */	mtctr r12
/* 8019EEC8  4E 80 04 21 */	bctrl 
/* 8019EECC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8019EED0  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 8019EED4  28 00 00 03 */	cmplwi r0, 3
/* 8019EED8  40 82 00 18 */	bne lbl_8019EEF0
/* 8019EEDC  4B EB 7B 3D */	bl dKyd_schejule_boss_getp__Fv
/* 8019EEE0  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8019EEE4  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 8019EEE8  90 64 00 14 */	stw r3, 0x14(r4)
/* 8019EEEC  48 00 00 14 */	b lbl_8019EF00
lbl_8019EEF0:
/* 8019EEF0  4B EB 7B 1D */	bl dKyd_schejule_getp__Fv
/* 8019EEF4  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8019EEF8  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 8019EEFC  90 64 00 14 */	stw r3, 0x14(r4)
lbl_8019EF00:
/* 8019EF00  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8019EF04  7C 00 07 74 */	extsb r0, r0
/* 8019EF08  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019EF0C  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019EF10  98 1E 12 C6 */	stb r0, 0x12c6(r30)
/* 8019EF14  98 1E 12 C7 */	stb r0, 0x12c7(r30)
/* 8019EF18  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 8019EF1C  D0 1E 11 DC */	stfs f0, 0x11dc(r30)
/* 8019EF20  38 00 00 00 */	li r0, 0
/* 8019EF24  90 1E 12 B0 */	stw r0, 0x12b0(r30)
/* 8019EF28  98 1E 12 C8 */	stb r0, 0x12c8(r30)
/* 8019EF2C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019EF30  D0 1E 0E CC */	stfs f0, 0xecc(r30)
/* 8019EF34  7F E3 FB 78 */	mr r3, r31
/* 8019EF38  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 8019EF3C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 8019EF40  38 84 01 7A */	addi r4, r4, 0x17a
/* 8019EF44  48 1C 9A 51 */	bl strcmp
/* 8019EF48  2C 03 00 00 */	cmpwi r3, 0
/* 8019EF4C  41 82 00 20 */	beq lbl_8019EF6C
/* 8019EF50  7F E3 FB 78 */	mr r3, r31
/* 8019EF54  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 8019EF58  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 8019EF5C  38 84 01 5C */	addi r4, r4, 0x15c
/* 8019EF60  48 1C 9A 35 */	bl strcmp
/* 8019EF64  2C 03 00 00 */	cmpwi r3, 0
/* 8019EF68  40 82 00 38 */	bne lbl_8019EFA0
lbl_8019EF6C:
/* 8019EF6C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019EF70  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019EF74  88 03 12 CC */	lbz r0, 0x12cc(r3)
/* 8019EF78  28 00 00 07 */	cmplwi r0, 7
/* 8019EF7C  41 80 00 10 */	blt lbl_8019EF8C
/* 8019EF80  38 00 00 02 */	li r0, 2
/* 8019EF84  98 1E 12 C8 */	stb r0, 0x12c8(r30)
/* 8019EF88  48 00 00 78 */	b lbl_8019F000
lbl_8019EF8C:
/* 8019EF8C  28 00 00 00 */	cmplwi r0, 0
/* 8019EF90  41 82 00 70 */	beq lbl_8019F000
/* 8019EF94  38 00 00 01 */	li r0, 1
/* 8019EF98  98 1E 12 C8 */	stb r0, 0x12c8(r30)
/* 8019EF9C  48 00 00 64 */	b lbl_8019F000
lbl_8019EFA0:
/* 8019EFA0  7F E3 FB 78 */	mr r3, r31
/* 8019EFA4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 8019EFA8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 8019EFAC  38 84 00 6F */	addi r4, r4, 0x6f
/* 8019EFB0  48 1C 99 E5 */	bl strcmp
/* 8019EFB4  2C 03 00 00 */	cmpwi r3, 0
/* 8019EFB8  40 82 00 38 */	bne lbl_8019EFF0
/* 8019EFBC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019EFC0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019EFC4  88 03 12 CC */	lbz r0, 0x12cc(r3)
/* 8019EFC8  28 00 00 01 */	cmplwi r0, 1
/* 8019EFCC  40 82 00 10 */	bne lbl_8019EFDC
/* 8019EFD0  38 00 00 01 */	li r0, 1
/* 8019EFD4  98 1E 12 C8 */	stb r0, 0x12c8(r30)
/* 8019EFD8  48 00 00 28 */	b lbl_8019F000
lbl_8019EFDC:
/* 8019EFDC  28 00 00 02 */	cmplwi r0, 2
/* 8019EFE0  40 82 00 20 */	bne lbl_8019F000
/* 8019EFE4  38 00 00 02 */	li r0, 2
/* 8019EFE8  98 1E 12 C8 */	stb r0, 0x12c8(r30)
/* 8019EFEC  48 00 00 14 */	b lbl_8019F000
lbl_8019EFF0:
/* 8019EFF0  38 00 00 00 */	li r0, 0
/* 8019EFF4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019EFF8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019EFFC  98 03 12 CC */	stb r0, 0x12cc(r3)
lbl_8019F000:
/* 8019F000  38 00 00 00 */	li r0, 0
/* 8019F004  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F008  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019F00C  90 03 12 9C */	stw r0, 0x129c(r3)
/* 8019F010  90 03 12 A0 */	stw r0, 0x12a0(r3)
/* 8019F014  98 03 12 C9 */	stb r0, 0x12c9(r3)
/* 8019F018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8019F01C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8019F020  C3 FF 00 34 */	lfs f31, 0x34(r31)
/* 8019F024  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 8019F028  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 8019F02C  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 8019F030  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 8019F034  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019F038  3C 00 43 30 */	lis r0, 0x4330
/* 8019F03C  90 01 00 08 */	stw r0, 8(r1)
/* 8019F040  C8 01 00 08 */	lfd f0, 8(r1)
/* 8019F044  EC 20 08 28 */	fsubs f1, f0, f1
/* 8019F048  48 0C 89 0D */	bl cM_rndF__Ff
/* 8019F04C  C0 02 A2 AC */	lfs f0, lit_5347(r2)
/* 8019F050  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019F054  EC 3F 00 2A */	fadds f1, f31, f0
/* 8019F058  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F05C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019F060  D0 23 11 D4 */	stfs f1, 0x11d4(r3)
/* 8019F064  C0 02 A2 B0 */	lfs f0, lit_5348(r2)
/* 8019F068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019F06C  4C 41 13 82 */	cror 2, 1, 2
/* 8019F070  40 82 00 0C */	bne lbl_8019F07C
/* 8019F074  EC 01 00 28 */	fsubs f0, f1, f0
/* 8019F078  D0 03 11 D4 */	stfs f0, 0x11d4(r3)
lbl_8019F07C:
/* 8019F07C  38 80 00 00 */	li r4, 0
/* 8019F080  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F084  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019F088  98 83 12 CA */	stb r4, 0x12ca(r3)
/* 8019F08C  98 83 12 CB */	stb r4, 0x12cb(r3)
/* 8019F090  90 83 12 98 */	stw r4, 0x1298(r3)
/* 8019F094  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019F098  D0 03 11 D8 */	stfs f0, 0x11d8(r3)
/* 8019F09C  88 1E 12 C8 */	lbz r0, 0x12c8(r30)
/* 8019F0A0  98 03 12 C2 */	stb r0, 0x12c2(r3)
/* 8019F0A4  98 03 12 C3 */	stb r0, 0x12c3(r3)
/* 8019F0A8  38 00 00 FF */	li r0, 0xff
/* 8019F0AC  98 03 12 C4 */	stb r0, 0x12c4(r3)
/* 8019F0B0  98 03 12 C5 */	stb r0, 0x12c5(r3)
/* 8019F0B4  C0 02 A2 50 */	lfs f0, lit_4507(r2)
/* 8019F0B8  D0 03 11 E0 */	stfs f0, 0x11e0(r3)
/* 8019F0BC  98 83 12 CD */	stb r4, 0x12cd(r3)
/* 8019F0C0  98 83 12 CE */	stb r4, 0x12ce(r3)
/* 8019F0C4  28 1C 00 00 */	cmplwi r28, 0
/* 8019F0C8  41 82 00 0C */	beq lbl_8019F0D4
/* 8019F0CC  93 83 00 0C */	stw r28, 0xc(r3)
/* 8019F0D0  48 00 00 14 */	b lbl_8019F0E4
lbl_8019F0D4:
/* 8019F0D4  4B EB 79 21 */	bl dKyd_dmenvr_getp__Fv
/* 8019F0D8  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F0DC  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 8019F0E0  90 64 00 0C */	stw r3, 0xc(r4)
lbl_8019F0E4:
/* 8019F0E4  28 1A 00 00 */	cmplwi r26, 0
/* 8019F0E8  41 82 00 14 */	beq lbl_8019F0FC
/* 8019F0EC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F0F0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019F0F4  93 43 00 04 */	stw r26, 4(r3)
/* 8019F0F8  48 00 00 14 */	b lbl_8019F10C
lbl_8019F0FC:
/* 8019F0FC  4B EB 78 E1 */	bl dKyd_dmpalet_getp__Fv
/* 8019F100  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F104  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 8019F108  90 64 00 04 */	stw r3, 4(r4)
lbl_8019F10C:
/* 8019F10C  28 1B 00 00 */	cmplwi r27, 0
/* 8019F110  41 82 00 14 */	beq lbl_8019F124
/* 8019F114  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F118  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019F11C  93 63 00 08 */	stw r27, 8(r3)
/* 8019F120  48 00 00 14 */	b lbl_8019F134
lbl_8019F124:
/* 8019F124  4B EB 78 C5 */	bl dKyd_dmpselect_getp__Fv
/* 8019F128  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F12C  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 8019F130  90 64 00 08 */	stw r3, 8(r4)
lbl_8019F134:
/* 8019F134  28 1D 00 00 */	cmplwi r29, 0
/* 8019F138  41 82 00 14 */	beq lbl_8019F14C
/* 8019F13C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F140  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019F144  93 A3 00 10 */	stw r29, 0x10(r3)
/* 8019F148  48 00 00 14 */	b lbl_8019F15C
lbl_8019F14C:
/* 8019F14C  4B EB 78 B5 */	bl dKyd_dmvrbox_getp__Fv
/* 8019F150  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F154  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 8019F158  90 64 00 10 */	stw r3, 0x10(r4)
lbl_8019F15C:
/* 8019F15C  4B FF F5 39 */	bl plight_init__Fv
/* 8019F160  4B FF F5 D5 */	bl plight_set__Fv
/* 8019F164  4B FF F5 A5 */	bl darkmist_init__Fv
/* 8019F168  4B FF F6 ED */	bl bgparts_activelight_init__Fv
/* 8019F16C  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 8019F170  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F174  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019F178  D0 03 11 C8 */	stfs f0, 0x11c8(r3)
/* 8019F17C  D0 03 11 CC */	stfs f0, 0x11cc(r3)
/* 8019F180  D0 03 11 D0 */	stfs f0, 0x11d0(r3)
/* 8019F184  38 00 00 00 */	li r0, 0
/* 8019F188  98 03 0F 2C */	stb r0, 0xf2c(r3)
/* 8019F18C  90 03 0F 30 */	stw r0, 0xf30(r3)
/* 8019F190  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019F194  D0 03 0F 34 */	stfs f0, 0xf34(r3)
/* 8019F198  90 03 0F 38 */	stw r0, 0xf38(r3)
/* 8019F19C  4B FF F9 05 */	bl undwater_init__Fv
/* 8019F1A0  38 60 00 00 */	li r3, 0
/* 8019F1A4  4B E9 08 4D */	bl dComIfGs_PolyDamageOff_Set__FSc
/* 8019F1A8  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8019F1AC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F1B0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019F1B4  98 03 09 8C */	stb r0, 0x98c(r3)
/* 8019F1B8  38 00 00 00 */	li r0, 0
/* 8019F1BC  98 03 12 FA */	stb r0, 0x12fa(r3)
/* 8019F1C0  98 03 12 FB */	stb r0, 0x12fb(r3)
/* 8019F1C4  38 00 FF FF */	li r0, -1
/* 8019F1C8  B0 03 13 00 */	sth r0, 0x1300(r3)
/* 8019F1CC  B0 03 13 02 */	sth r0, 0x1302(r3)
/* 8019F1D0  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 8019F1D4  D0 03 13 04 */	stfs f0, 0x1304(r3)
/* 8019F1D8  7F 23 CB 78 */	mr r3, r25
/* 8019F1DC  81 99 00 00 */	lwz r12, 0(r25)
/* 8019F1E0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8019F1E4  7D 89 03 A6 */	mtctr r12
/* 8019F1E8  4E 80 04 21 */	bctrl 
/* 8019F1EC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8019F1F0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8019F1F4  7C 00 07 75 */	extsb. r0, r0
/* 8019F1F8  41 80 00 2C */	blt lbl_8019F224
/* 8019F1FC  C0 42 A2 AC */	lfs f2, lit_5347(r2)
/* 8019F200  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 8019F204  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019F208  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019F20C  3C 00 43 30 */	lis r0, 0x4330
/* 8019F210  90 01 00 08 */	stw r0, 8(r1)
/* 8019F214  C8 01 00 08 */	lfd f0, 8(r1)
/* 8019F218  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019F21C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8019F220  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_8019F224:
/* 8019F224  C0 02 A2 B4 */	lfs f0, lit_5349(r2)
/* 8019F228  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F22C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019F230  D0 03 12 4C */	stfs f0, 0x124c(r3)
/* 8019F234  38 63 12 88 */	addi r3, r3, 0x1288
/* 8019F238  38 80 00 00 */	li r4, 0
/* 8019F23C  38 A0 00 10 */	li r5, 0x10
/* 8019F240  4B E6 42 19 */	bl memset
/* 8019F244  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8019F248  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8019F24C  39 61 00 30 */	addi r11, r1, 0x30
/* 8019F250  48 1C 2F C9 */	bl _restgpr_25
/* 8019F254  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8019F258  7C 08 03 A6 */	mtlr r0
/* 8019F25C  38 21 00 40 */	addi r1, r1, 0x40
/* 8019F260  4E 80 00 20 */	blr 
