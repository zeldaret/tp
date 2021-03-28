lbl_801A516C:
/* 801A516C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A5170  7C 08 02 A6 */	mflr r0
/* 801A5174  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A5178  39 61 00 30 */	addi r11, r1, 0x30
/* 801A517C  48 1B D0 61 */	bl _savegpr_29
/* 801A5180  7C 7D 1B 78 */	mr r29, r3
/* 801A5184  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5188  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 801A518C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A5190  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A5194  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 801A5198  48 00 6F D1 */	bl dKy_SunMoon_Light_Check__Fv
/* 801A519C  2C 03 00 01 */	cmpwi r3, 1
/* 801A51A0  40 82 00 94 */	bne lbl_801A5234
/* 801A51A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A51A8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A51AC  4B FF A8 5D */	bl getDaytime__18dScnKy_env_light_cFv
/* 801A51B0  C0 02 A3 98 */	lfs f0, lit_7365(r2)
/* 801A51B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A51B8  40 81 00 2C */	ble lbl_801A51E4
/* 801A51BC  C0 02 A3 9C */	lfs f0, lit_7366(r2)
/* 801A51C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A51C4  40 80 00 20 */	bge lbl_801A51E4
/* 801A51C8  C0 1F 10 70 */	lfs f0, 0x1070(r31)
/* 801A51CC  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 801A51D0  C0 1F 10 74 */	lfs f0, 0x1074(r31)
/* 801A51D4  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 801A51D8  C0 1F 10 78 */	lfs f0, 0x1078(r31)
/* 801A51DC  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 801A51E0  48 00 00 70 */	b lbl_801A5250
lbl_801A51E4:
/* 801A51E4  28 1E 00 00 */	cmplwi r30, 0
/* 801A51E8  41 82 00 30 */	beq lbl_801A5218
/* 801A51EC  38 61 00 08 */	addi r3, r1, 8
/* 801A51F0  38 9E 00 D8 */	addi r4, r30, 0xd8
/* 801A51F4  38 BF 10 94 */	addi r5, r31, 0x1094
/* 801A51F8  48 0C 18 ED */	bl __pl__4cXyzCFRC3Vec
/* 801A51FC  C0 01 00 08 */	lfs f0, 8(r1)
/* 801A5200  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 801A5204  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801A5208  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 801A520C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801A5210  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 801A5214  48 00 00 3C */	b lbl_801A5250
lbl_801A5218:
/* 801A5218  C0 1F 10 94 */	lfs f0, 0x1094(r31)
/* 801A521C  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 801A5220  C0 1F 10 98 */	lfs f0, 0x1098(r31)
/* 801A5224  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 801A5228  C0 1F 10 9C */	lfs f0, 0x109c(r31)
/* 801A522C  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 801A5230  48 00 00 20 */	b lbl_801A5250
lbl_801A5234:
/* 801A5234  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A5238  C0 03 01 D0 */	lfs f0, 0x1d0(r3)
/* 801A523C  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 801A5240  C0 03 01 D4 */	lfs f0, 0x1d4(r3)
/* 801A5244  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 801A5248  C0 03 01 D8 */	lfs f0, 0x1d8(r3)
/* 801A524C  D0 1D 00 20 */	stfs f0, 0x20(r29)
lbl_801A5250:
/* 801A5250  38 00 00 FF */	li r0, 0xff
/* 801A5254  B0 1D 00 24 */	sth r0, 0x24(r29)
/* 801A5258  B0 1D 00 26 */	sth r0, 0x26(r29)
/* 801A525C  B0 1D 00 28 */	sth r0, 0x28(r29)
/* 801A5260  B0 1D 00 2A */	sth r0, 0x2a(r29)
/* 801A5264  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A5268  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 801A526C  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 801A5270  39 61 00 30 */	addi r11, r1, 0x30
/* 801A5274  48 1B CF B5 */	bl _restgpr_29
/* 801A5278  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A527C  7C 08 03 A6 */	mtlr r0
/* 801A5280  38 21 00 30 */	addi r1, r1, 0x30
/* 801A5284  4E 80 00 20 */	blr 
