lbl_8059D3B4:
/* 8059D3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D3B8  7C 08 02 A6 */	mflr r0
/* 8059D3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D3C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059D3C4  7C 7F 1B 78 */	mr r31, r3
/* 8059D3C8  3C 80 80 5A */	lis r4, M_attr__15daObjYobikusa_c@ha /* 0x8059DE7C@ha */
/* 8059D3CC  38 84 DE 7C */	addi r4, r4, M_attr__15daObjYobikusa_c@l /* 0x8059DE7C@l */
/* 8059D3D0  C0 24 00 5C */	lfs f1, 0x5c(r4)
/* 8059D3D4  C0 03 07 40 */	lfs f0, 0x740(r3)
/* 8059D3D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8059D3DC  40 82 00 60 */	bne lbl_8059D43C
/* 8059D3E0  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8059D3E4  D0 1F 07 40 */	stfs f0, 0x740(r31)
/* 8059D3E8  38 84 00 00 */	addi r4, r4, 0
/* 8059D3EC  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 8059D3F0  D0 1F 07 44 */	stfs f0, 0x744(r31)
/* 8059D3F4  38 00 00 00 */	li r0, 0
/* 8059D3F8  B0 1F 07 68 */	sth r0, 0x768(r31)
/* 8059D3FC  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 8059D400  D0 1F 07 48 */	stfs f0, 0x748(r31)
/* 8059D404  B0 1F 07 6A */	sth r0, 0x76a(r31)
/* 8059D408  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059D40C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059D410  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8059D414  4B A7 D2 FD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8059D418  B0 7F 07 6C */	sth r3, 0x76c(r31)
/* 8059D41C  A8 7F 07 6C */	lha r3, 0x76c(r31)
/* 8059D420  38 03 E0 00 */	addi r0, r3, -8192
/* 8059D424  B0 1F 07 6C */	sth r0, 0x76c(r31)
/* 8059D428  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8059D42C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8059D430  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8059D434  38 60 00 01 */	li r3, 1
/* 8059D438  48 00 00 08 */	b lbl_8059D440
lbl_8059D43C:
/* 8059D43C  38 60 00 00 */	li r3, 0
lbl_8059D440:
/* 8059D440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059D444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D448  7C 08 03 A6 */	mtlr r0
/* 8059D44C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D450  4E 80 00 20 */	blr 
