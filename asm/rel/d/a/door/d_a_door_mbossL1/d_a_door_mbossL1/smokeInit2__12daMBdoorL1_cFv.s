lbl_80676004:
/* 80676004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80676008  7C 08 02 A6 */	mflr r0
/* 8067600C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80676010  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80676014  7C 7F 1B 78 */	mr r31, r3
/* 80676018  4B FF CF 6D */	bl getDoorType__12daMBdoorL1_cFv
/* 8067601C  2C 03 00 01 */	cmpwi r3, 1
/* 80676020  40 82 00 80 */	bne lbl_806760A0
/* 80676024  C0 1F 08 20 */	lfs f0, 0x820(r31)
/* 80676028  3C 60 80 67 */	lis r3, lit_5293@ha /* 0x8067764C@ha */
/* 8067602C  C0 23 76 4C */	lfs f1, lit_5293@l(r3)  /* 0x8067764C@l */
/* 80676030  EC 00 08 28 */	fsubs f0, f0, f1
/* 80676034  D0 1F 08 20 */	stfs f0, 0x820(r31)
/* 80676038  C0 1F 08 2C */	lfs f0, 0x82c(r31)
/* 8067603C  EC 00 08 2A */	fadds f0, f0, f1
/* 80676040  D0 1F 08 2C */	stfs f0, 0x82c(r31)
/* 80676044  38 7F 06 04 */	addi r3, r31, 0x604
/* 80676048  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067604C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676050  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80676054  4B A0 0A 59 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80676058  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8067605C  7C 03 07 74 */	extsb r3, r0
/* 80676060  38 00 00 00 */	li r0, 0
/* 80676064  90 01 00 08 */	stw r0, 8(r1)
/* 80676068  90 61 00 0C */	stw r3, 0xc(r1)
/* 8067606C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80676070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676078  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8067607C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008C50@ha */
/* 80676080  38 84 8C 50 */	addi r4, r4, 0x8C50 /* 0x00008C50@l */
/* 80676084  38 BF 06 F4 */	addi r5, r31, 0x6f4
/* 80676088  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8067608C  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80676090  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80676094  39 20 00 00 */	li r9, 0
/* 80676098  39 40 00 00 */	li r10, 0
/* 8067609C  4B 9D 6F CD */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
lbl_806760A0:
/* 806760A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806760A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806760A8  7C 08 03 A6 */	mtlr r0
/* 806760AC  38 21 00 20 */	addi r1, r1, 0x20
/* 806760B0  4E 80 00 20 */	blr 
