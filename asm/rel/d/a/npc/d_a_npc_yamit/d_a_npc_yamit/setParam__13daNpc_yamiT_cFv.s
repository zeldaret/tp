lbl_80B4A9A0:
/* 80B4A9A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4A9A4  7C 08 02 A6 */	mflr r0
/* 80B4A9A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4A9AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4A9B0  4B 81 78 2D */	bl _savegpr_29
/* 80B4A9B4  7C 7F 1B 78 */	mr r31, r3
/* 80B4A9B8  48 00 09 49 */	bl selectAction__13daNpc_yamiT_cFv
/* 80B4A9BC  7F E3 FB 78 */	mr r3, r31
/* 80B4A9C0  48 00 01 71 */	bl srchActors__13daNpc_yamiT_cFv
/* 80B4A9C4  3C 60 80 B5 */	lis r3, m__19daNpc_yamiT_Param_c@ha /* 0x80B4CDA4@ha */
/* 80B4A9C8  38 63 CD A4 */	addi r3, r3, m__19daNpc_yamiT_Param_c@l /* 0x80B4CDA4@l */
/* 80B4A9CC  AB A3 00 48 */	lha r29, 0x48(r3)
/* 80B4A9D0  AB C3 00 4A */	lha r30, 0x4a(r3)
/* 80B4A9D4  A8 A3 00 4C */	lha r5, 0x4c(r3)
/* 80B4A9D8  A8 83 00 4E */	lha r4, 0x4e(r3)
/* 80B4A9DC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B4A9E0  28 00 00 01 */	cmplwi r0, 1
/* 80B4A9E4  40 82 00 24 */	bne lbl_80B4AA08
/* 80B4A9E8  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80B4A9EC  28 03 00 00 */	cmplwi r3, 0
/* 80B4A9F0  41 82 00 18 */	beq lbl_80B4AA08
/* 80B4A9F4  80 03 07 00 */	lwz r0, 0x700(r3)
/* 80B4A9F8  2C 00 00 00 */	cmpwi r0, 0
/* 80B4A9FC  41 82 00 0C */	beq lbl_80B4AA08
/* 80B4AA00  3B A0 00 00 */	li r29, 0
/* 80B4AA04  38 A0 00 00 */	li r5, 0
lbl_80B4AA08:
/* 80B4AA08  7C A3 07 34 */	extsh r3, r5
/* 80B4AA0C  7C 84 07 34 */	extsh r4, r4
/* 80B4AA10  4B 60 20 09 */	bl daNpcT_getDistTableIdx__Fii
/* 80B4AA14  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80B4AA18  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80B4AA1C  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80B4AA20  7F A3 07 34 */	extsh r3, r29
/* 80B4AA24  7F C4 07 34 */	extsh r4, r30
/* 80B4AA28  4B 60 1F F1 */	bl daNpcT_getDistTableIdx__Fii
/* 80B4AA2C  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80B4AA30  38 00 00 00 */	li r0, 0
/* 80B4AA34  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B4AA38  3C 60 80 B5 */	lis r3, m__19daNpc_yamiT_Param_c@ha /* 0x80B4CDA4@ha */
/* 80B4AA3C  38 63 CD A4 */	addi r3, r3, m__19daNpc_yamiT_Param_c@l /* 0x80B4CDA4@l */
/* 80B4AA40  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B4AA44  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80B4AA48  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80B4AA4C  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80B4AA50  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B4AA54  FC 00 00 1E */	fctiwz f0, f0
/* 80B4AA58  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B4AA5C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B4AA60  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80B4AA64  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B4AA68  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80B4AA6C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B4AA70  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80B4AA74  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80B4AA78  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80B4AA7C  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B4AA80  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80B4AA84  4B 52 B4 BD */	bl SetWallR__12dBgS_AcchCirFf
/* 80B4AA88  3C 60 80 B5 */	lis r3, m__19daNpc_yamiT_Param_c@ha /* 0x80B4CDA4@ha */
/* 80B4AA8C  38 63 CD A4 */	addi r3, r3, m__19daNpc_yamiT_Param_c@l /* 0x80B4CDA4@l */
/* 80B4AA90  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B4AA94  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80B4AA98  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B4AA9C  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80B4AAA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B4AAA4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B4AAA8  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B4AAAC  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80B4AAB0  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B4AAB4  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80B4AAB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4AABC  4B 81 77 6D */	bl _restgpr_29
/* 80B4AAC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4AAC4  7C 08 03 A6 */	mtlr r0
/* 80B4AAC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4AACC  4E 80 00 20 */	blr 
