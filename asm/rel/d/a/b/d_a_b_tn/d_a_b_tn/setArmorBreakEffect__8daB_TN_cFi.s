lbl_80622CE4:
/* 80622CE4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80622CE8  7C 08 02 A6 */	mflr r0
/* 80622CEC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80622CF0  39 61 00 50 */	addi r11, r1, 0x50
/* 80622CF4  4B D3 F4 DD */	bl _savegpr_26
/* 80622CF8  7C 7F 1B 78 */	mr r31, r3
/* 80622CFC  3C 60 80 63 */	lis r3, l_HIO@ha /* 0x8062F02C@ha */
/* 80622D00  38 63 F0 2C */	addi r3, r3, l_HIO@l /* 0x8062F02C@l */
/* 80622D04  C0 03 00 08 */	lfs f0, 8(r3)
/* 80622D08  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80622D0C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80622D10  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80622D14  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80622D18  80 63 00 04 */	lwz r3, 4(r3)
/* 80622D1C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80622D20  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 80622D24  54 80 10 3A */	slwi r0, r4, 2
/* 80622D28  3C 60 80 63 */	lis r3, data_8062EBA8@ha /* 0x8062EBA8@ha */
/* 80622D2C  38 63 EB A8 */	addi r3, r3, data_8062EBA8@l /* 0x8062EBA8@l */
/* 80622D30  7C 03 00 2E */	lwzx r0, r3, r0
/* 80622D34  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80622D38  7C 65 02 14 */	add r3, r5, r0
/* 80622D3C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80622D40  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80622D44  4B D2 37 6D */	bl PSMTXCopy
/* 80622D48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80622D4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80622D50  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80622D54  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80622D58  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80622D5C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80622D60  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80622D64  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80622D68  3B 40 00 00 */	li r26, 0
/* 80622D6C  3B C0 00 00 */	li r30, 0
/* 80622D70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80622D74  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80622D78  3C 60 80 63 */	lis r3, blur_effect_id_6035@ha /* 0x8062ED94@ha */
/* 80622D7C  3B 83 ED 94 */	addi r28, r3, blur_effect_id_6035@l /* 0x8062ED94@l */
/* 80622D80  3C 60 80 63 */	lis r3, lit_3922@ha /* 0x8062E63C@ha */
/* 80622D84  3B A3 E6 3C */	addi r29, r3, lit_3922@l /* 0x8062E63C@l */
lbl_80622D88:
/* 80622D88  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80622D8C  38 80 00 00 */	li r4, 0
/* 80622D90  90 81 00 08 */	stw r4, 8(r1)
/* 80622D94  38 00 FF FF */	li r0, -1
/* 80622D98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80622D9C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80622DA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80622DA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80622DA8  38 80 00 00 */	li r4, 0
/* 80622DAC  7C BC F2 2E */	lhzx r5, r28, r30
/* 80622DB0  38 C1 00 20 */	addi r6, r1, 0x20
/* 80622DB4  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80622DB8  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80622DBC  39 21 00 2C */	addi r9, r1, 0x2c
/* 80622DC0  39 40 00 FF */	li r10, 0xff
/* 80622DC4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80622DC8  4B A2 9C C9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80622DCC  3B 5A 00 01 */	addi r26, r26, 1
/* 80622DD0  2C 1A 00 03 */	cmpwi r26, 3
/* 80622DD4  3B DE 00 02 */	addi r30, r30, 2
/* 80622DD8  41 80 FF B0 */	blt lbl_80622D88
/* 80622DDC  39 61 00 50 */	addi r11, r1, 0x50
/* 80622DE0  4B D3 F4 3D */	bl _restgpr_26
/* 80622DE4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80622DE8  7C 08 03 A6 */	mtlr r0
/* 80622DEC  38 21 00 50 */	addi r1, r1, 0x50
/* 80622DF0  4E 80 00 20 */	blr 
