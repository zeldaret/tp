lbl_80195C9C:
/* 80195C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195CA0  7C 08 02 A6 */	mflr r0
/* 80195CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80195CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80195CAC  7C 7F 1B 78 */	mr r31, r3
/* 80195CB0  48 00 06 5D */	bl Save__16ShopCam_action_cFv
/* 80195CB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80195CB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80195CBC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80195CC0  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80195CC4  64 00 08 00 */	oris r0, r0, 0x800
/* 80195CC8  90 03 05 70 */	stw r0, 0x570(r3)
/* 80195CCC  3C 60 80 3C */	lis r3, lit_3771@ha /* 0x803BB87C@ha */
/* 80195CD0  38 83 B8 7C */	addi r4, r3, lit_3771@l /* 0x803BB87C@l */
/* 80195CD4  80 64 00 00 */	lwz r3, 0(r4)
/* 80195CD8  80 04 00 04 */	lwz r0, 4(r4)
/* 80195CDC  90 7F 00 00 */	stw r3, 0(r31)
/* 80195CE0  90 1F 00 04 */	stw r0, 4(r31)
/* 80195CE4  80 04 00 08 */	lwz r0, 8(r4)
/* 80195CE8  90 1F 00 08 */	stw r0, 8(r31)
/* 80195CEC  A8 7F 00 D6 */	lha r3, 0xd6(r31)
/* 80195CF0  7C 60 07 35 */	extsh. r0, r3
/* 80195CF4  41 80 00 68 */	blt lbl_80195D5C
/* 80195CF8  54 60 10 3A */	slwi r0, r3, 2
/* 80195CFC  3C 60 80 3C */	lis r3, shop_cam_data_tbl@ha /* 0x803BB870@ha */
/* 80195D00  38 83 B8 70 */	addi r4, r3, shop_cam_data_tbl@l /* 0x803BB870@l */
/* 80195D04  7C 64 00 2E */	lwzx r3, r4, r0
/* 80195D08  C0 03 00 00 */	lfs f0, 0(r3)
/* 80195D0C  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80195D10  C0 03 00 04 */	lfs f0, 4(r3)
/* 80195D14  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80195D18  C0 03 00 08 */	lfs f0, 8(r3)
/* 80195D1C  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 80195D20  A8 1F 00 D6 */	lha r0, 0xd6(r31)
/* 80195D24  54 00 10 3A */	slwi r0, r0, 2
/* 80195D28  7C 64 00 2E */	lwzx r3, r4, r0
/* 80195D2C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80195D30  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 80195D34  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80195D38  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 80195D3C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80195D40  D0 1F 00 90 */	stfs f0, 0x90(r31)
/* 80195D44  A8 1F 00 D6 */	lha r0, 0xd6(r31)
/* 80195D48  54 00 10 3A */	slwi r0, r0, 2
/* 80195D4C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80195D50  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80195D54  D0 1F 00 94 */	stfs f0, 0x94(r31)
/* 80195D58  48 00 00 84 */	b lbl_80195DDC
lbl_80195D5C:
/* 80195D5C  A8 1F 00 D4 */	lha r0, 0xd4(r31)
/* 80195D60  2C 00 00 00 */	cmpwi r0, 0
/* 80195D64  41 81 00 40 */	bgt lbl_80195DA4
/* 80195D68  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80195D6C  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80195D70  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80195D74  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80195D78  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80195D7C  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 80195D80  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80195D84  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 80195D88  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80195D8C  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 80195D90  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80195D94  D0 1F 00 90 */	stfs f0, 0x90(r31)
/* 80195D98  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80195D9C  D0 1F 00 94 */	stfs f0, 0x94(r31)
/* 80195DA0  48 00 00 3C */	b lbl_80195DDC
lbl_80195DA4:
/* 80195DA4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80195DA8  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80195DAC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80195DB0  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80195DB4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80195DB8  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 80195DBC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80195DC0  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 80195DC4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80195DC8  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 80195DCC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80195DD0  D0 1F 00 90 */	stfs f0, 0x90(r31)
/* 80195DD4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80195DD8  D0 1F 00 94 */	stfs f0, 0x94(r31)
lbl_80195DDC:
/* 80195DDC  38 00 FF FF */	li r0, -1
/* 80195DE0  B0 1F 00 D4 */	sth r0, 0xd4(r31)
/* 80195DE4  C0 22 A0 88 */	lfs f1, lit_3796(r2)
/* 80195DE8  D0 3F 00 C0 */	stfs f1, 0xc0(r31)
/* 80195DEC  C0 02 A0 8C */	lfs f0, lit_3797(r2)
/* 80195DF0  D0 1F 00 C4 */	stfs f0, 0xc4(r31)
/* 80195DF4  D0 3F 00 C8 */	stfs f1, 0xc8(r31)
/* 80195DF8  C0 02 A0 90 */	lfs f0, lit_3798(r2)
/* 80195DFC  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 80195E00  38 60 00 01 */	li r3, 1
/* 80195E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80195E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80195E0C  7C 08 03 A6 */	mtlr r0
/* 80195E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80195E14  4E 80 00 20 */	blr 
