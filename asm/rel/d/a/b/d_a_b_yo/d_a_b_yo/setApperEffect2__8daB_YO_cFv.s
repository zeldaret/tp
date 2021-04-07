lbl_80630CA0:
/* 80630CA0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80630CA4  7C 08 02 A6 */	mflr r0
/* 80630CA8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80630CAC  39 61 00 50 */	addi r11, r1, 0x50
/* 80630CB0  4B D3 15 21 */	bl _savegpr_26
/* 80630CB4  7C 7A 1B 78 */	mr r26, r3
/* 80630CB8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80630CBC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80630CC0  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80630CC4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80630CC8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80630CCC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80630CD0  3C 60 80 64 */	lis r3, lit_4432@ha /* 0x80639850@ha */
/* 80630CD4  C0 03 98 50 */	lfs f0, lit_4432@l(r3)  /* 0x80639850@l */
/* 80630CD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80630CDC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80630CE0  3B 60 00 00 */	li r27, 0
/* 80630CE4  3B E0 00 00 */	li r31, 0
/* 80630CE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80630CEC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80630CF0  3C 60 80 64 */	lis r3, apper_effect_id@ha /* 0x80639C98@ha */
/* 80630CF4  3B A3 9C 98 */	addi r29, r3, apper_effect_id@l /* 0x80639C98@l */
/* 80630CF8  3C 60 80 64 */	lis r3, lit_3795@ha /* 0x80639810@ha */
/* 80630CFC  3B C3 98 10 */	addi r30, r3, lit_3795@l /* 0x80639810@l */
lbl_80630D00:
/* 80630D00  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80630D04  38 80 00 00 */	li r4, 0
/* 80630D08  90 81 00 08 */	stw r4, 8(r1)
/* 80630D0C  38 00 FF FF */	li r0, -1
/* 80630D10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80630D14  90 81 00 10 */	stw r4, 0x10(r1)
/* 80630D18  90 81 00 14 */	stw r4, 0x14(r1)
/* 80630D1C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80630D20  38 80 00 00 */	li r4, 0
/* 80630D24  7C BD FA 2E */	lhzx r5, r29, r31
/* 80630D28  38 C1 00 20 */	addi r6, r1, 0x20
/* 80630D2C  38 FA 01 0C */	addi r7, r26, 0x10c
/* 80630D30  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 80630D34  39 20 00 00 */	li r9, 0
/* 80630D38  39 40 00 FF */	li r10, 0xff
/* 80630D3C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80630D40  4B A1 BD 51 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80630D44  3B 7B 00 01 */	addi r27, r27, 1
/* 80630D48  2C 1B 00 02 */	cmpwi r27, 2
/* 80630D4C  3B FF 00 02 */	addi r31, r31, 2
/* 80630D50  41 80 FF B0 */	blt lbl_80630D00
/* 80630D54  39 61 00 50 */	addi r11, r1, 0x50
/* 80630D58  4B D3 14 C5 */	bl _restgpr_26
/* 80630D5C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80630D60  7C 08 03 A6 */	mtlr r0
/* 80630D64  38 21 00 50 */	addi r1, r1, 0x50
/* 80630D68  4E 80 00 20 */	blr 
