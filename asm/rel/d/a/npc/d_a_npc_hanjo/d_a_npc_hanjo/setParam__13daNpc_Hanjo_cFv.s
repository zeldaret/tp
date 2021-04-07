lbl_809FA050:
/* 809FA050  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809FA054  7C 08 02 A6 */	mflr r0
/* 809FA058  90 01 00 34 */	stw r0, 0x34(r1)
/* 809FA05C  39 61 00 30 */	addi r11, r1, 0x30
/* 809FA060  4B 96 81 75 */	bl _savegpr_27
/* 809FA064  7C 7F 1B 78 */	mr r31, r3
/* 809FA068  48 00 15 35 */	bl selectAction__13daNpc_Hanjo_cFv
/* 809FA06C  7F E3 FB 78 */	mr r3, r31
/* 809FA070  48 00 03 ED */	bl srchActors__13daNpc_Hanjo_cFv
/* 809FA074  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809FA078  38 63 06 00 */	addi r3, r3, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809FA07C  AB A3 00 48 */	lha r29, 0x48(r3)
/* 809FA080  AB 83 00 4A */	lha r28, 0x4a(r3)
/* 809FA084  AB 63 00 4C */	lha r27, 0x4c(r3)
/* 809FA088  AB C3 00 4E */	lha r30, 0x4e(r3)
/* 809FA08C  88 1F 17 21 */	lbz r0, 0x1721(r31)
/* 809FA090  28 00 00 00 */	cmplwi r0, 0
/* 809FA094  41 82 00 10 */	beq lbl_809FA0A4
/* 809FA098  3B A0 00 06 */	li r29, 6
/* 809FA09C  3B 80 00 06 */	li r28, 6
/* 809FA0A0  48 00 00 18 */	b lbl_809FA0B8
lbl_809FA0A4:
/* 809FA0A4  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 809FA0A8  28 00 00 02 */	cmplwi r0, 2
/* 809FA0AC  40 82 00 0C */	bne lbl_809FA0B8
/* 809FA0B0  3B A0 00 04 */	li r29, 4
/* 809FA0B4  3B 80 00 06 */	li r28, 6
lbl_809FA0B8:
/* 809FA0B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809FA0BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809FA0C0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809FA0C4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FA0C8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 809FA0CC  7D 89 03 A6 */	mtctr r12
/* 809FA0D0  4E 80 04 21 */	bctrl 
/* 809FA0D4  28 03 00 00 */	cmplwi r3, 0
/* 809FA0D8  41 82 00 24 */	beq lbl_809FA0FC
/* 809FA0DC  7F A0 07 34 */	extsh r0, r29
/* 809FA0E0  2C 00 00 07 */	cmpwi r0, 7
/* 809FA0E4  40 80 00 08 */	bge lbl_809FA0EC
/* 809FA0E8  3B A0 00 07 */	li r29, 7
lbl_809FA0EC:
/* 809FA0EC  7F 60 07 34 */	extsh r0, r27
/* 809FA0F0  2C 00 00 09 */	cmpwi r0, 9
/* 809FA0F4  40 80 00 08 */	bge lbl_809FA0FC
/* 809FA0F8  3B 60 00 09 */	li r27, 9
lbl_809FA0FC:
/* 809FA0FC  7F 63 07 34 */	extsh r3, r27
/* 809FA100  7F C4 07 34 */	extsh r4, r30
/* 809FA104  4B 75 29 15 */	bl daNpcT_getDistTableIdx__Fii
/* 809FA108  98 7F 05 44 */	stb r3, 0x544(r31)
/* 809FA10C  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 809FA110  98 1F 05 45 */	stb r0, 0x545(r31)
/* 809FA114  7F A3 07 34 */	extsh r3, r29
/* 809FA118  7F 84 07 34 */	extsh r4, r28
/* 809FA11C  4B 75 28 FD */	bl daNpcT_getDistTableIdx__Fii
/* 809FA120  98 7F 05 47 */	stb r3, 0x547(r31)
/* 809FA124  38 00 00 0A */	li r0, 0xa
/* 809FA128  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 809FA12C  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809FA130  38 63 06 00 */	addi r3, r3, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809FA134  C0 03 00 08 */	lfs f0, 8(r3)
/* 809FA138  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 809FA13C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 809FA140  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 809FA144  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 809FA148  FC 00 00 1E */	fctiwz f0, f0
/* 809FA14C  D8 01 00 08 */	stfd f0, 8(r1)
/* 809FA150  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809FA154  98 1F 08 78 */	stb r0, 0x878(r31)
/* 809FA158  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 809FA15C  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 809FA160  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809FA164  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 809FA168  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 809FA16C  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 809FA170  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 809FA174  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 809FA178  4B 67 BD C9 */	bl SetWallR__12dBgS_AcchCirFf
/* 809FA17C  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809FA180  38 63 06 00 */	addi r3, r3, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809FA184  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809FA188  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 809FA18C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809FA190  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 809FA194  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 809FA198  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 809FA19C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 809FA1A0  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 809FA1A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 809FA1A8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 809FA1AC  39 61 00 30 */	addi r11, r1, 0x30
/* 809FA1B0  4B 96 80 71 */	bl _restgpr_27
/* 809FA1B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809FA1B8  7C 08 03 A6 */	mtlr r0
/* 809FA1BC  38 21 00 30 */	addi r1, r1, 0x30
/* 809FA1C0  4E 80 00 20 */	blr 
