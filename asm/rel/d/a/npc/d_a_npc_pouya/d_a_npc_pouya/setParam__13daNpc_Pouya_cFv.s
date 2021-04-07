lbl_80AAEE44:
/* 80AAEE44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AAEE48  7C 08 02 A6 */	mflr r0
/* 80AAEE4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AAEE50  39 61 00 20 */	addi r11, r1, 0x20
/* 80AAEE54  4B 8B 33 89 */	bl _savegpr_29
/* 80AAEE58  7C 7F 1B 78 */	mr r31, r3
/* 80AAEE5C  48 00 0D 81 */	bl selectAction__13daNpc_Pouya_cFv
/* 80AAEE60  7F E3 FB 78 */	mr r3, r31
/* 80AAEE64  48 00 03 8D */	bl srchActors__13daNpc_Pouya_cFv
/* 80AAEE68  3C 60 80 AB */	lis r3, m__19daNpc_Pouya_Param_c@ha /* 0x80AB2000@ha */
/* 80AAEE6C  38 63 20 00 */	addi r3, r3, m__19daNpc_Pouya_Param_c@l /* 0x80AB2000@l */
/* 80AAEE70  AB C3 00 48 */	lha r30, 0x48(r3)
/* 80AAEE74  AB A3 00 4A */	lha r29, 0x4a(r3)
/* 80AAEE78  A8 83 00 4C */	lha r4, 0x4c(r3)
/* 80AAEE7C  A8 A3 00 4E */	lha r5, 0x4e(r3)
/* 80AAEE80  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80AAEE84  28 00 00 00 */	cmplwi r0, 0
/* 80AAEE88  41 82 00 40 */	beq lbl_80AAEEC8
/* 80AAEE8C  28 00 00 04 */	cmplwi r0, 4
/* 80AAEE90  41 82 00 38 */	beq lbl_80AAEEC8
/* 80AAEE94  28 00 00 05 */	cmplwi r0, 5
/* 80AAEE98  41 82 00 30 */	beq lbl_80AAEEC8
/* 80AAEE9C  28 00 00 02 */	cmplwi r0, 2
/* 80AAEEA0  40 82 00 18 */	bne lbl_80AAEEB8
/* 80AAEEA4  3B C0 00 03 */	li r30, 3
/* 80AAEEA8  3B A0 00 04 */	li r29, 4
/* 80AAEEAC  38 80 00 03 */	li r4, 3
/* 80AAEEB0  38 A0 00 04 */	li r5, 4
/* 80AAEEB4  48 00 00 14 */	b lbl_80AAEEC8
lbl_80AAEEB8:
/* 80AAEEB8  3B C0 00 03 */	li r30, 3
/* 80AAEEBC  3B A0 00 02 */	li r29, 2
/* 80AAEEC0  38 80 00 03 */	li r4, 3
/* 80AAEEC4  38 A0 00 02 */	li r5, 2
lbl_80AAEEC8:
/* 80AAEEC8  7C 83 07 34 */	extsh r3, r4
/* 80AAEECC  7C A4 07 34 */	extsh r4, r5
/* 80AAEED0  4B 69 DB 49 */	bl daNpcT_getDistTableIdx__Fii
/* 80AAEED4  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80AAEED8  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80AAEEDC  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80AAEEE0  7F C3 07 34 */	extsh r3, r30
/* 80AAEEE4  7F A4 07 34 */	extsh r4, r29
/* 80AAEEE8  4B 69 DB 31 */	bl daNpcT_getDistTableIdx__Fii
/* 80AAEEEC  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80AAEEF0  38 00 00 0A */	li r0, 0xa
/* 80AAEEF4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AAEEF8  3C 60 80 AB */	lis r3, m__19daNpc_Pouya_Param_c@ha /* 0x80AB2000@ha */
/* 80AAEEFC  38 63 20 00 */	addi r3, r3, m__19daNpc_Pouya_Param_c@l /* 0x80AB2000@l */
/* 80AAEF00  C0 03 00 08 */	lfs f0, 8(r3)
/* 80AAEF04  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80AAEF08  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80AAEF0C  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80AAEF10  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80AAEF14  FC 00 00 1E */	fctiwz f0, f0
/* 80AAEF18  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AAEF1C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AAEF20  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80AAEF24  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80AAEF28  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80AAEF2C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AAEF30  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80AAEF34  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80AAEF38  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80AAEF3C  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AAEF40  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80AAEF44  4B 5C 6F FD */	bl SetWallR__12dBgS_AcchCirFf
/* 80AAEF48  3C 60 80 AB */	lis r3, m__19daNpc_Pouya_Param_c@ha /* 0x80AB2000@ha */
/* 80AAEF4C  38 63 20 00 */	addi r3, r3, m__19daNpc_Pouya_Param_c@l /* 0x80AB2000@l */
/* 80AAEF50  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AAEF54  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80AAEF58  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AAEF5C  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80AAEF60  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80AAEF64  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80AAEF68  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80AAEF6C  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80AAEF70  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AAEF74  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80AAEF78  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80AAEF7C  60 00 00 02 */	ori r0, r0, 2
/* 80AAEF80  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80AAEF84  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80AAEF88  60 00 00 04 */	ori r0, r0, 4
/* 80AAEF8C  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80AAEF90  3C 60 80 AB */	lis r3, lit_4204@ha /* 0x80AB20B8@ha */
/* 80AAEF94  C0 03 20 B8 */	lfs f0, lit_4204@l(r3)  /* 0x80AB20B8@l */
/* 80AAEF98  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80AAEF9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AAEFA0  4B 8B 32 89 */	bl _restgpr_29
/* 80AAEFA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AAEFA8  7C 08 03 A6 */	mtlr r0
/* 80AAEFAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AAEFB0  4E 80 00 20 */	blr 
