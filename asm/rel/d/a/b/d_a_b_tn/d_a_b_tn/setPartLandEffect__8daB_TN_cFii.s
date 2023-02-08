lbl_8061F3D0:
/* 8061F3D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8061F3D4  7C 08 02 A6 */	mflr r0
/* 8061F3D8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8061F3DC  39 61 00 50 */	addi r11, r1, 0x50
/* 8061F3E0  4B D4 2D F9 */	bl _savegpr_28
/* 8061F3E4  7C 7C 1B 78 */	mr r28, r3
/* 8061F3E8  7C 9D 23 78 */	mr r29, r4
/* 8061F3EC  2C 05 00 00 */	cmpwi r5, 0
/* 8061F3F0  40 82 00 CC */	bne lbl_8061F4BC
/* 8061F3F4  38 61 00 20 */	addi r3, r1, 0x20
/* 8061F3F8  38 80 00 00 */	li r4, 0
/* 8061F3FC  38 A0 00 00 */	li r5, 0
/* 8061F400  38 C0 00 00 */	li r6, 0
/* 8061F404  4B C4 7F F1 */	bl __ct__5csXyzFsss
/* 8061F408  3C 60 80 63 */	lis r3, l_HIO@ha /* 0x8062F02C@ha */
/* 8061F40C  38 63 F0 2C */	addi r3, r3, l_HIO@l /* 0x8062F02C@l */
/* 8061F410  C0 03 00 08 */	lfs f0, 8(r3)
/* 8061F414  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8061F418  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8061F41C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8061F420  38 60 00 00 */	li r3, 0
/* 8061F424  90 61 00 08 */	stw r3, 8(r1)
/* 8061F428  38 00 FF FF */	li r0, -1
/* 8061F42C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061F430  90 61 00 10 */	stw r3, 0x10(r1)
/* 8061F434  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8061F438  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8061F43C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8061F440  3C 80 00 01 */	lis r4, 0x0001 /* 0x000087EA@ha */
/* 8061F444  38 84 87 EA */	addi r4, r4, 0x87EA /* 0x000087EA@l */
/* 8061F448  38 BC 0B E8 */	addi r5, r28, 0xbe8
/* 8061F44C  1C DD 00 0C */	mulli r6, r29, 0xc
/* 8061F450  3B C6 07 5C */	addi r30, r6, 0x75c
/* 8061F454  7F DC F2 14 */	add r30, r28, r30
/* 8061F458  7F C6 F3 78 */	mr r6, r30
/* 8061F45C  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8061F460  39 01 00 20 */	addi r8, r1, 0x20
/* 8061F464  39 21 00 34 */	addi r9, r1, 0x34
/* 8061F468  39 40 00 00 */	li r10, 0
/* 8061F46C  4B A2 DB FD */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 8061F470  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8061F474  38 80 00 00 */	li r4, 0
/* 8061F478  90 81 00 08 */	stw r4, 8(r1)
/* 8061F47C  38 00 FF FF */	li r0, -1
/* 8061F480  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061F484  90 81 00 10 */	stw r4, 0x10(r1)
/* 8061F488  90 81 00 14 */	stw r4, 0x14(r1)
/* 8061F48C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8061F490  38 80 00 00 */	li r4, 0
/* 8061F494  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000880B@ha */
/* 8061F498  38 A5 88 0B */	addi r5, r5, 0x880B /* 0x0000880B@l */
/* 8061F49C  7F C6 F3 78 */	mr r6, r30
/* 8061F4A0  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8061F4A4  39 01 00 20 */	addi r8, r1, 0x20
/* 8061F4A8  39 21 00 34 */	addi r9, r1, 0x34
/* 8061F4AC  39 40 00 FF */	li r10, 0xff
/* 8061F4B0  3D 60 80 63 */	lis r11, lit_3922@ha /* 0x8062E63C@ha */
/* 8061F4B4  C0 2B E6 3C */	lfs f1, lit_3922@l(r11)  /* 0x8062E63C@l */
/* 8061F4B8  4B A2 D5 D9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8061F4BC:
/* 8061F4BC  57 A0 10 3A */	slwi r0, r29, 2
/* 8061F4C0  3C 60 80 63 */	lis r3, break_part_vib@ha /* 0x8062EC90@ha */
/* 8061F4C4  38 63 EC 90 */	addi r3, r3, break_part_vib@l /* 0x8062EC90@l */
/* 8061F4C8  7C 83 00 2E */	lwzx r4, r3, r0
/* 8061F4CC  2C 04 00 FF */	cmpwi r4, 0xff
/* 8061F4D0  41 82 00 38 */	beq lbl_8061F508
/* 8061F4D4  3C 60 80 63 */	lis r3, lit_3921@ha /* 0x8062E638@ha */
/* 8061F4D8  C0 23 E6 38 */	lfs f1, lit_3921@l(r3)  /* 0x8062E638@l */
/* 8061F4DC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8061F4E0  3C 60 80 63 */	lis r3, lit_3922@ha /* 0x8062E63C@ha */
/* 8061F4E4  C0 03 E6 3C */	lfs f0, lit_3922@l(r3)  /* 0x8062E63C@l */
/* 8061F4E8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8061F4EC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8061F4F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8061F4F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8061F4F8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8061F4FC  38 A0 00 1F */	li r5, 0x1f
/* 8061F500  38 C1 00 28 */	addi r6, r1, 0x28
/* 8061F504  4B A5 05 21 */	bl StartShock__12dVibration_cFii4cXyz
lbl_8061F508:
/* 8061F508  39 61 00 50 */	addi r11, r1, 0x50
/* 8061F50C  4B D4 2D 19 */	bl _restgpr_28
/* 8061F510  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8061F514  7C 08 03 A6 */	mtlr r0
/* 8061F518  38 21 00 50 */	addi r1, r1, 0x50
/* 8061F51C  4E 80 00 20 */	blr 
