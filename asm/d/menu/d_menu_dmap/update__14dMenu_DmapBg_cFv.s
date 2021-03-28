lbl_801BB334:
/* 801BB334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BB338  7C 08 02 A6 */	mflr r0
/* 801BB33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BB340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BB344  93 C1 00 08 */	stw r30, 8(r1)
/* 801BB348  7C 7F 1B 78 */	mr r31, r3
/* 801BB34C  80 63 0D 1C */	lwz r3, 0xd1c(r3)
/* 801BB350  28 03 00 00 */	cmplwi r3, 0
/* 801BB354  41 82 00 C0 */	beq lbl_801BB414
/* 801BB358  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801BB35C  2C 00 00 00 */	cmpwi r0, 0
/* 801BB360  41 82 00 B4 */	beq lbl_801BB414
/* 801BB364  80 1F 0D 20 */	lwz r0, 0xd20(r31)
/* 801BB368  28 00 00 00 */	cmplwi r0, 0
/* 801BB36C  40 82 00 A8 */	bne lbl_801BB414
/* 801BB370  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801BB374  90 1F 0D 20 */	stw r0, 0xd20(r31)
/* 801BB378  80 7F 0D 1C */	lwz r3, 0xd1c(r31)
/* 801BB37C  28 03 00 00 */	cmplwi r3, 0
/* 801BB380  41 82 00 18 */	beq lbl_801BB398
/* 801BB384  38 80 00 01 */	li r4, 1
/* 801BB388  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801BB38C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BB390  7D 89 03 A6 */	mtctr r12
/* 801BB394  4E 80 04 21 */	bctrl 
lbl_801BB398:
/* 801BB398  38 00 00 00 */	li r0, 0
/* 801BB39C  90 1F 0D 1C */	stw r0, 0xd1c(r31)
/* 801BB3A0  80 7F 0D 20 */	lwz r3, 0xd20(r31)
/* 801BB3A4  3C 80 80 39 */	lis r4, d_menu_d_menu_dmap__stringBase0@ha
/* 801BB3A8  38 84 57 60 */	addi r4, r4, d_menu_d_menu_dmap__stringBase0@l
/* 801BB3AC  38 84 00 AD */	addi r4, r4, 0xad
/* 801BB3B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801BB3B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801BB3B8  7D 89 03 A6 */	mtctr r12
/* 801BB3BC  4E 80 04 21 */	bctrl 
/* 801BB3C0  7C 7E 1B 78 */	mr r30, r3
/* 801BB3C4  38 60 01 50 */	li r3, 0x150
/* 801BB3C8  48 11 38 85 */	bl __nw__FUl
/* 801BB3CC  7C 60 1B 79 */	or. r0, r3, r3
/* 801BB3D0  41 82 00 10 */	beq lbl_801BB3E0
/* 801BB3D4  7F C4 F3 78 */	mr r4, r30
/* 801BB3D8  48 14 13 31 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801BB3DC  7C 60 1B 78 */	mr r0, r3
lbl_801BB3E0:
/* 801BB3E0  90 1F 0D 24 */	stw r0, 0xd24(r31)
/* 801BB3E4  80 7F 0D 20 */	lwz r3, 0xd20(r31)
/* 801BB3E8  3C 80 80 39 */	lis r4, d_menu_d_menu_dmap__stringBase0@ha
/* 801BB3EC  38 84 57 60 */	addi r4, r4, d_menu_d_menu_dmap__stringBase0@l
/* 801BB3F0  38 84 00 B8 */	addi r4, r4, 0xb8
/* 801BB3F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BB3F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801BB3FC  7D 89 03 A6 */	mtctr r12
/* 801BB400  4E 80 04 21 */	bctrl 
/* 801BB404  7C 64 1B 78 */	mr r4, r3
/* 801BB408  38 7F 0D 80 */	addi r3, r31, 0xd80
/* 801BB40C  38 A0 00 14 */	li r5, 0x14
/* 801BB410  4B E4 81 31 */	bl memcpy
lbl_801BB414:
/* 801BB414  80 1F 0D 24 */	lwz r0, 0xd24(r31)
/* 801BB418  28 00 00 00 */	cmplwi r0, 0
/* 801BB41C  41 82 00 30 */	beq lbl_801BB44C
/* 801BB420  C0 5F 0D BC */	lfs f2, 0xdbc(r31)
/* 801BB424  C0 22 A6 20 */	lfs f1, lit_4643(r2)
/* 801BB428  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801BB42C  40 80 00 20 */	bge lbl_801BB44C
/* 801BB430  C0 02 A6 40 */	lfs f0, lit_4848(r2)
/* 801BB434  EC 02 00 2A */	fadds f0, f2, f0
/* 801BB438  D0 1F 0D BC */	stfs f0, 0xdbc(r31)
/* 801BB43C  C0 1F 0D BC */	lfs f0, 0xdbc(r31)
/* 801BB440  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801BB444  40 81 00 08 */	ble lbl_801BB44C
/* 801BB448  D0 3F 0D BC */	stfs f1, 0xdbc(r31)
lbl_801BB44C:
/* 801BB44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BB450  83 C1 00 08 */	lwz r30, 8(r1)
/* 801BB454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BB458  7C 08 03 A6 */	mtlr r0
/* 801BB45C  38 21 00 10 */	addi r1, r1, 0x10
/* 801BB460  4E 80 00 20 */	blr 
