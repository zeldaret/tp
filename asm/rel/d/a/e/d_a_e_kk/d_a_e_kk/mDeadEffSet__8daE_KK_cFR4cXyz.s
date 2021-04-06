lbl_806FB6C0:
/* 806FB6C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806FB6C4  7C 08 02 A6 */	mflr r0
/* 806FB6C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 806FB6CC  39 61 00 40 */	addi r11, r1, 0x40
/* 806FB6D0  4B C6 6B 0D */	bl _savegpr_29
/* 806FB6D4  7C 7F 1B 78 */	mr r31, r3
/* 806FB6D8  7C 9D 23 78 */	mr r29, r4
/* 806FB6DC  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FF890@ha */
/* 806FB6E0  38 63 F8 90 */	addi r3, r3, l_HIO@l /* 0x806FF890@l */
/* 806FB6E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 806FB6E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806FB6EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806FB6F0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806FB6F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FB6F8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FB6FC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806FB700  38 80 00 00 */	li r4, 0
/* 806FB704  90 81 00 08 */	stw r4, 8(r1)
/* 806FB708  38 00 FF FF */	li r0, -1
/* 806FB70C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FB710  90 81 00 10 */	stw r4, 0x10(r1)
/* 806FB714  90 81 00 14 */	stw r4, 0x14(r1)
/* 806FB718  90 81 00 18 */	stw r4, 0x18(r1)
/* 806FB71C  38 80 00 00 */	li r4, 0
/* 806FB720  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085B8@ha */
/* 806FB724  38 A5 85 B8 */	addi r5, r5, 0x85B8 /* 0x000085B8@l */
/* 806FB728  7F A6 EB 78 */	mr r6, r29
/* 806FB72C  38 E0 00 00 */	li r7, 0
/* 806FB730  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 806FB734  39 21 00 24 */	addi r9, r1, 0x24
/* 806FB738  39 40 00 FF */	li r10, 0xff
/* 806FB73C  3D 60 80 70 */	lis r11, lit_3794@ha /* 0x806FF5F0@ha */
/* 806FB740  C0 2B F5 F0 */	lfs f1, lit_3794@l(r11)  /* 0x806FF5F0@l */
/* 806FB744  4B 95 13 4D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806FB748  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806FB74C  38 80 00 00 */	li r4, 0
/* 806FB750  90 81 00 08 */	stw r4, 8(r1)
/* 806FB754  38 00 FF FF */	li r0, -1
/* 806FB758  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FB75C  90 81 00 10 */	stw r4, 0x10(r1)
/* 806FB760  90 81 00 14 */	stw r4, 0x14(r1)
/* 806FB764  90 81 00 18 */	stw r4, 0x18(r1)
/* 806FB768  38 80 00 00 */	li r4, 0
/* 806FB76C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085B9@ha */
/* 806FB770  38 A5 85 B9 */	addi r5, r5, 0x85B9 /* 0x000085B9@l */
/* 806FB774  7F A6 EB 78 */	mr r6, r29
/* 806FB778  38 E0 00 00 */	li r7, 0
/* 806FB77C  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 806FB780  39 21 00 24 */	addi r9, r1, 0x24
/* 806FB784  39 40 00 FF */	li r10, 0xff
/* 806FB788  3D 60 80 70 */	lis r11, lit_3794@ha /* 0x806FF5F0@ha */
/* 806FB78C  C0 2B F5 F0 */	lfs f1, lit_3794@l(r11)  /* 0x806FF5F0@l */
/* 806FB790  4B 95 13 01 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806FB794  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070381@ha */
/* 806FB798  38 03 03 81 */	addi r0, r3, 0x0381 /* 0x00070381@l */
/* 806FB79C  90 01 00 20 */	stw r0, 0x20(r1)
/* 806FB7A0  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806FB7A4  38 81 00 20 */	addi r4, r1, 0x20
/* 806FB7A8  38 A0 00 00 */	li r5, 0
/* 806FB7AC  38 C0 FF FF */	li r6, -1
/* 806FB7B0  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806FB7B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FB7B8  7D 89 03 A6 */	mtctr r12
/* 806FB7BC  4E 80 04 21 */	bctrl 
/* 806FB7C0  39 61 00 40 */	addi r11, r1, 0x40
/* 806FB7C4  4B C6 6A 65 */	bl _restgpr_29
/* 806FB7C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806FB7CC  7C 08 03 A6 */	mtlr r0
/* 806FB7D0  38 21 00 40 */	addi r1, r1, 0x40
/* 806FB7D4  4E 80 00 20 */	blr 
