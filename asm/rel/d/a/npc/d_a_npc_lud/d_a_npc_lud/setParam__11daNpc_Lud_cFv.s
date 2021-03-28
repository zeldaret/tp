lbl_80A6BBA8:
/* 80A6BBA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6BBAC  7C 08 02 A6 */	mflr r0
/* 80A6BBB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6BBB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6BBB8  4B 8F 66 20 */	b _savegpr_28
/* 80A6BBBC  7C 7F 1B 78 */	mr r31, r3
/* 80A6BBC0  3C 80 80 A7 */	lis r4, m__17daNpc_Lud_Param_c@ha
/* 80A6BBC4  3B C4 FD 7C */	addi r30, r4, m__17daNpc_Lud_Param_c@l
/* 80A6BBC8  48 00 11 69 */	bl selectAction__11daNpc_Lud_cFv
/* 80A6BBCC  7F E3 FB 78 */	mr r3, r31
/* 80A6BBD0  48 00 03 15 */	bl srchActors__11daNpc_Lud_cFv
/* 80A6BBD4  38 7E 00 00 */	addi r3, r30, 0
/* 80A6BBD8  AB A3 00 48 */	lha r29, 0x48(r3)
/* 80A6BBDC  AB 83 00 4A */	lha r28, 0x4a(r3)
/* 80A6BBE0  A8 83 00 4C */	lha r4, 0x4c(r3)
/* 80A6BBE4  A8 A3 00 4E */	lha r5, 0x4e(r3)
/* 80A6BBE8  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6BBEC  2C 00 00 02 */	cmpwi r0, 2
/* 80A6BBF0  41 82 00 34 */	beq lbl_80A6BC24
/* 80A6BBF4  40 80 00 10 */	bge lbl_80A6BC04
/* 80A6BBF8  2C 00 00 00 */	cmpwi r0, 0
/* 80A6BBFC  41 82 00 1C */	beq lbl_80A6BC18
/* 80A6BC00  48 00 00 44 */	b lbl_80A6BC44
lbl_80A6BC04:
/* 80A6BC04  2C 00 00 07 */	cmpwi r0, 7
/* 80A6BC08  40 80 00 3C */	bge lbl_80A6BC44
/* 80A6BC0C  2C 00 00 04 */	cmpwi r0, 4
/* 80A6BC10  40 80 00 2C */	bge lbl_80A6BC3C
/* 80A6BC14  48 00 00 1C */	b lbl_80A6BC30
lbl_80A6BC18:
/* 80A6BC18  3B 80 00 03 */	li r28, 3
/* 80A6BC1C  38 A0 00 03 */	li r5, 3
/* 80A6BC20  48 00 00 24 */	b lbl_80A6BC44
lbl_80A6BC24:
/* 80A6BC24  3B 80 00 03 */	li r28, 3
/* 80A6BC28  38 A0 00 03 */	li r5, 3
/* 80A6BC2C  48 00 00 18 */	b lbl_80A6BC44
lbl_80A6BC30:
/* 80A6BC30  3B A0 00 0D */	li r29, 0xd
/* 80A6BC34  38 80 00 0F */	li r4, 0xf
/* 80A6BC38  48 00 00 0C */	b lbl_80A6BC44
lbl_80A6BC3C:
/* 80A6BC3C  3B A0 00 01 */	li r29, 1
/* 80A6BC40  38 80 00 01 */	li r4, 1
lbl_80A6BC44:
/* 80A6BC44  7C 83 07 34 */	extsh r3, r4
/* 80A6BC48  7C A4 07 34 */	extsh r4, r5
/* 80A6BC4C  4B 6E 0D CC */	b daNpcT_getDistTableIdx__Fii
/* 80A6BC50  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A6BC54  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A6BC58  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A6BC5C  7F A3 07 34 */	extsh r3, r29
/* 80A6BC60  7F 84 07 34 */	extsh r4, r28
/* 80A6BC64  4B 6E 0D B4 */	b daNpcT_getDistTableIdx__Fii
/* 80A6BC68  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A6BC6C  38 00 00 0A */	li r0, 0xa
/* 80A6BC70  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A6BC74  38 7E 00 00 */	addi r3, r30, 0
/* 80A6BC78  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A6BC7C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80A6BC80  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80A6BC84  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80A6BC88  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A6BC8C  FC 00 00 1E */	fctiwz f0, f0
/* 80A6BC90  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A6BC94  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A6BC98  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80A6BC9C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A6BCA0  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80A6BCA4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A6BCA8  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80A6BCAC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A6BCB0  28 00 00 00 */	cmplwi r0, 0
/* 80A6BCB4  41 82 00 0C */	beq lbl_80A6BCC0
/* 80A6BCB8  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80A6BCBC  D0 1F 0D EC */	stfs f0, 0xdec(r31)
lbl_80A6BCC0:
/* 80A6BCC0  38 7E 00 00 */	addi r3, r30, 0
/* 80A6BCC4  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80A6BCC8  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80A6BCCC  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A6BCD0  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80A6BCD4  4B 60 A2 6C */	b SetWallR__12dBgS_AcchCirFf
/* 80A6BCD8  38 7E 00 00 */	addi r3, r30, 0
/* 80A6BCDC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A6BCE0  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80A6BCE4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A6BCE8  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80A6BCEC  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6BCF0  28 00 00 04 */	cmplwi r0, 4
/* 80A6BCF4  41 82 00 14 */	beq lbl_80A6BD08
/* 80A6BCF8  28 00 00 05 */	cmplwi r0, 5
/* 80A6BCFC  41 82 00 0C */	beq lbl_80A6BD08
/* 80A6BD00  28 00 00 06 */	cmplwi r0, 6
/* 80A6BD04  40 82 00 0C */	bne lbl_80A6BD10
lbl_80A6BD08:
/* 80A6BD08  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80A6BD0C  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
lbl_80A6BD10:
/* 80A6BD10  38 7E 00 00 */	addi r3, r30, 0
/* 80A6BD14  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A6BD18  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80A6BD1C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80A6BD20  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80A6BD24  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A6BD28  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A6BD2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6BD30  4B 8F 64 F4 */	b _restgpr_28
/* 80A6BD34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6BD38  7C 08 03 A6 */	mtlr r0
/* 80A6BD3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6BD40  4E 80 00 20 */	blr 
