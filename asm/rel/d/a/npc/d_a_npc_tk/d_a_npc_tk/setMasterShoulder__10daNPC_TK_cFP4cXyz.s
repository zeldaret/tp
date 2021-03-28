lbl_80B01DA0:
/* 80B01DA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B01DA4  7C 08 02 A6 */	mflr r0
/* 80B01DA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B01DAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B01DB0  7C 65 1B 78 */	mr r5, r3
/* 80B01DB4  7C 9F 23 78 */	mr r31, r4
/* 80B01DB8  80 03 06 38 */	lwz r0, 0x638(r3)
/* 80B01DBC  28 00 00 00 */	cmplwi r0, 0
/* 80B01DC0  41 82 00 34 */	beq lbl_80B01DF4
/* 80B01DC4  38 00 00 01 */	li r0, 1
/* 80B01DC8  98 05 06 AD */	stb r0, 0x6ad(r5)
/* 80B01DCC  38 61 00 08 */	addi r3, r1, 8
/* 80B01DD0  7C A4 2B 78 */	mr r4, r5
/* 80B01DD4  48 00 3D FD */	bl getHanjoHandPos__10daNPC_TK_cFv
/* 80B01DD8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B01DDC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80B01DE0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B01DE4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80B01DE8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B01DEC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80B01DF0  48 00 00 44 */	b lbl_80B01E34
lbl_80B01DF4:
/* 80B01DF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B01DF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B01DFC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B01E00  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B01E04  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B01E08  7D 89 03 A6 */	mtctr r12
/* 80B01E0C  4E 80 04 21 */	bctrl 
/* 80B01E10  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 80B01E14  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B01E18  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B01E1C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B01E20  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B01E24  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B01E28  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80B01E2C  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80B01E30  D0 5F 00 08 */	stfs f2, 8(r31)
lbl_80B01E34:
/* 80B01E34  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B01E38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B01E3C  7C 08 03 A6 */	mtlr r0
/* 80B01E40  38 21 00 30 */	addi r1, r1, 0x30
/* 80B01E44  4E 80 00 20 */	blr 
