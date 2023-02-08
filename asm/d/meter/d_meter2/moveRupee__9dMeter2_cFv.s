lbl_80220C30:
/* 80220C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80220C34  7C 08 02 A6 */	mflr r0
/* 80220C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80220C3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80220C40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80220C44  7C 7E 1B 78 */	mr r30, r3
/* 80220C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80220C4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80220C50  4B E1 1E 59 */	bl getRupeeMax__21dSv_player_status_a_cCFv
/* 80220C54  7C 65 07 34 */	extsh r5, r3
/* 80220C58  3B E0 00 00 */	li r31, 0
/* 80220C5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80220C60  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80220C64  80 64 5D C4 */	lwz r3, 0x5dc4(r4)
/* 80220C68  2C 03 00 00 */	cmpwi r3, 0
/* 80220C6C  41 82 00 B0 */	beq lbl_80220D1C
/* 80220C70  A0 04 00 04 */	lhz r0, 4(r4)
/* 80220C74  7C 00 1A 14 */	add r0, r0, r3
/* 80220C78  7C 06 07 34 */	extsh r6, r0
/* 80220C7C  7C 06 28 00 */	cmpw r6, r5
/* 80220C80  40 81 00 0C */	ble lbl_80220C8C
/* 80220C84  7C A6 2B 78 */	mr r6, r5
/* 80220C88  48 00 00 10 */	b lbl_80220C98
lbl_80220C8C:
/* 80220C8C  7C C0 07 35 */	extsh. r0, r6
/* 80220C90  40 80 00 08 */	bge lbl_80220C98
/* 80220C94  38 C0 00 00 */	li r6, 0
lbl_80220C98:
/* 80220C98  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80220C9C  B0 C4 00 04 */	sth r6, 4(r4)
/* 80220CA0  38 00 00 00 */	li r0, 0
/* 80220CA4  90 04 5D C4 */	stw r0, 0x5dc4(r4)
/* 80220CA8  A8 1E 01 B0 */	lha r0, 0x1b0(r30)
/* 80220CAC  7C 00 18 50 */	subf r0, r0, r3
/* 80220CB0  2C 00 00 05 */	cmpwi r0, 5
/* 80220CB4  41 80 00 34 */	blt lbl_80220CE8
/* 80220CB8  88 1E 01 EA */	lbz r0, 0x1ea(r30)
/* 80220CBC  60 00 00 04 */	ori r0, r0, 4
/* 80220CC0  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220CC4  88 7E 01 EA */	lbz r3, 0x1ea(r30)
/* 80220CC8  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80220CCC  41 82 00 50 */	beq lbl_80220D1C
/* 80220CD0  54 60 07 76 */	rlwinm r0, r3, 0, 0x1d, 0x1b
/* 80220CD4  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220CD8  88 1E 01 EA */	lbz r0, 0x1ea(r30)
/* 80220CDC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80220CE0  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220CE4  48 00 00 38 */	b lbl_80220D1C
lbl_80220CE8:
/* 80220CE8  2C 00 FF FB */	cmpwi r0, -5
/* 80220CEC  41 81 00 30 */	bgt lbl_80220D1C
/* 80220CF0  88 1E 01 EA */	lbz r0, 0x1ea(r30)
/* 80220CF4  60 00 00 08 */	ori r0, r0, 8
/* 80220CF8  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220CFC  88 7E 01 EA */	lbz r3, 0x1ea(r30)
/* 80220D00  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80220D04  41 82 00 18 */	beq lbl_80220D1C
/* 80220D08  54 60 07 B8 */	rlwinm r0, r3, 0, 0x1e, 0x1c
/* 80220D0C  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220D10  88 1E 01 EA */	lbz r0, 0x1ea(r30)
/* 80220D14  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 80220D18  98 1E 01 EA */	stb r0, 0x1ea(r30)
lbl_80220D1C:
/* 80220D1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80220D20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80220D24  A0 03 00 04 */	lhz r0, 4(r3)
/* 80220D28  A8 9E 01 B0 */	lha r4, 0x1b0(r30)
/* 80220D2C  7C 04 00 00 */	cmpw r4, r0
/* 80220D30  41 82 01 A0 */	beq lbl_80220ED0
/* 80220D34  40 80 00 D0 */	bge lbl_80220E04
/* 80220D38  38 04 00 01 */	addi r0, r4, 1
/* 80220D3C  B0 1E 01 B0 */	sth r0, 0x1b0(r30)
/* 80220D40  3B E0 00 01 */	li r31, 1
/* 80220D44  88 9E 01 EA */	lbz r4, 0x1ea(r30)
/* 80220D48  54 80 F7 FF */	rlwinm. r0, r4, 0x1e, 0x1f, 0x1f
/* 80220D4C  41 82 01 84 */	beq lbl_80220ED0
/* 80220D50  A0 63 00 04 */	lhz r3, 4(r3)
/* 80220D54  A8 1E 01 B0 */	lha r0, 0x1b0(r30)
/* 80220D58  7C 00 18 00 */	cmpw r0, r3
/* 80220D5C  41 82 00 58 */	beq lbl_80220DB4
/* 80220D60  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80220D64  40 82 00 44 */	bne lbl_80220DA8
/* 80220D68  60 80 00 01 */	ori r0, r4, 1
/* 80220D6C  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220D70  38 00 00 73 */	li r0, 0x73
/* 80220D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80220D78  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80220D7C  38 81 00 14 */	addi r4, r1, 0x14
/* 80220D80  38 A0 00 00 */	li r5, 0
/* 80220D84  38 C0 00 00 */	li r6, 0
/* 80220D88  38 E0 00 00 */	li r7, 0
/* 80220D8C  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 80220D90  FC 40 08 90 */	fmr f2, f1
/* 80220D94  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 80220D98  FC 80 18 90 */	fmr f4, f3
/* 80220D9C  39 00 00 00 */	li r8, 0
/* 80220DA0  48 08 AB E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80220DA4  48 00 01 2C */	b lbl_80220ED0
lbl_80220DA8:
/* 80220DA8  54 80 06 3C */	rlwinm r0, r4, 0, 0x18, 0x1e
/* 80220DAC  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220DB0  48 00 01 20 */	b lbl_80220ED0
lbl_80220DB4:
/* 80220DB4  38 00 00 74 */	li r0, 0x74
/* 80220DB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80220DBC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80220DC0  38 81 00 10 */	addi r4, r1, 0x10
/* 80220DC4  38 A0 00 00 */	li r5, 0
/* 80220DC8  38 C0 00 00 */	li r6, 0
/* 80220DCC  38 E0 00 00 */	li r7, 0
/* 80220DD0  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 80220DD4  FC 40 08 90 */	fmr f2, f1
/* 80220DD8  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 80220DDC  FC 80 18 90 */	fmr f4, f3
/* 80220DE0  39 00 00 00 */	li r8, 0
/* 80220DE4  48 08 AB A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80220DE8  88 1E 01 EA */	lbz r0, 0x1ea(r30)
/* 80220DEC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80220DF0  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220DF4  88 1E 01 EA */	lbz r0, 0x1ea(r30)
/* 80220DF8  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 80220DFC  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220E00  48 00 00 D0 */	b lbl_80220ED0
lbl_80220E04:
/* 80220E04  40 81 00 CC */	ble lbl_80220ED0
/* 80220E08  38 04 FF FF */	addi r0, r4, -1
/* 80220E0C  B0 1E 01 B0 */	sth r0, 0x1b0(r30)
/* 80220E10  3B E0 00 01 */	li r31, 1
/* 80220E14  88 9E 01 EA */	lbz r4, 0x1ea(r30)
/* 80220E18  54 80 EF FF */	rlwinm. r0, r4, 0x1d, 0x1f, 0x1f
/* 80220E1C  41 82 00 B4 */	beq lbl_80220ED0
/* 80220E20  A0 63 00 04 */	lhz r3, 4(r3)
/* 80220E24  A8 1E 01 B0 */	lha r0, 0x1b0(r30)
/* 80220E28  7C 00 18 00 */	cmpw r0, r3
/* 80220E2C  41 82 00 58 */	beq lbl_80220E84
/* 80220E30  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80220E34  40 82 00 44 */	bne lbl_80220E78
/* 80220E38  60 80 00 02 */	ori r0, r4, 2
/* 80220E3C  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220E40  38 00 00 75 */	li r0, 0x75
/* 80220E44  90 01 00 0C */	stw r0, 0xc(r1)
/* 80220E48  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80220E4C  38 81 00 0C */	addi r4, r1, 0xc
/* 80220E50  38 A0 00 00 */	li r5, 0
/* 80220E54  38 C0 00 00 */	li r6, 0
/* 80220E58  38 E0 00 00 */	li r7, 0
/* 80220E5C  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 80220E60  FC 40 08 90 */	fmr f2, f1
/* 80220E64  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 80220E68  FC 80 18 90 */	fmr f4, f3
/* 80220E6C  39 00 00 00 */	li r8, 0
/* 80220E70  48 08 AB 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80220E74  48 00 00 5C */	b lbl_80220ED0
lbl_80220E78:
/* 80220E78  54 80 07 FA */	rlwinm r0, r4, 0, 0x1f, 0x1d
/* 80220E7C  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220E80  48 00 00 50 */	b lbl_80220ED0
lbl_80220E84:
/* 80220E84  38 00 00 76 */	li r0, 0x76
/* 80220E88  90 01 00 08 */	stw r0, 8(r1)
/* 80220E8C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80220E90  38 81 00 08 */	addi r4, r1, 8
/* 80220E94  38 A0 00 00 */	li r5, 0
/* 80220E98  38 C0 00 00 */	li r6, 0
/* 80220E9C  38 E0 00 00 */	li r7, 0
/* 80220EA0  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 80220EA4  FC 40 08 90 */	fmr f2, f1
/* 80220EA8  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 80220EAC  FC 80 18 90 */	fmr f4, f3
/* 80220EB0  39 00 00 00 */	li r8, 0
/* 80220EB4  48 08 AA D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80220EB8  88 1E 01 EA */	lbz r0, 0x1ea(r30)
/* 80220EBC  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80220EC0  98 1E 01 EA */	stb r0, 0x1ea(r30)
/* 80220EC4  88 1E 01 EA */	lbz r0, 0x1ea(r30)
/* 80220EC8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80220ECC  98 1E 01 EA */	stb r0, 0x1ea(r30)
lbl_80220ED0:
/* 80220ED0  C0 1E 02 68 */	lfs f0, 0x268(r30)
/* 80220ED4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220ED8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80220EDC  C0 23 03 3C */	lfs f1, 0x33c(r3)
/* 80220EE0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80220EE4  41 82 00 0C */	beq lbl_80220EF0
/* 80220EE8  D0 3E 02 68 */	stfs f1, 0x268(r30)
/* 80220EEC  3B E0 00 01 */	li r31, 1
lbl_80220EF0:
/* 80220EF0  C0 1E 02 6C */	lfs f0, 0x26c(r30)
/* 80220EF4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220EF8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80220EFC  C0 23 03 40 */	lfs f1, 0x340(r3)
/* 80220F00  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80220F04  41 82 00 0C */	beq lbl_80220F10
/* 80220F08  D0 3E 02 6C */	stfs f1, 0x26c(r30)
/* 80220F0C  3B E0 00 01 */	li r31, 1
lbl_80220F10:
/* 80220F10  C0 1E 02 70 */	lfs f0, 0x270(r30)
/* 80220F14  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220F18  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80220F1C  C0 23 03 44 */	lfs f1, 0x344(r3)
/* 80220F20  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80220F24  41 82 00 0C */	beq lbl_80220F30
/* 80220F28  D0 3E 02 70 */	stfs f1, 0x270(r30)
/* 80220F2C  3B E0 00 01 */	li r31, 1
lbl_80220F30:
/* 80220F30  C0 1E 02 74 */	lfs f0, 0x274(r30)
/* 80220F34  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220F38  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80220F3C  C0 23 03 4C */	lfs f1, 0x34c(r3)
/* 80220F40  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80220F44  41 82 00 0C */	beq lbl_80220F50
/* 80220F48  D0 3E 02 74 */	stfs f1, 0x274(r30)
/* 80220F4C  3B E0 00 01 */	li r31, 1
lbl_80220F50:
/* 80220F50  C0 1E 02 78 */	lfs f0, 0x278(r30)
/* 80220F54  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220F58  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80220F5C  C0 23 03 50 */	lfs f1, 0x350(r3)
/* 80220F60  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80220F64  41 82 00 0C */	beq lbl_80220F70
/* 80220F68  D0 3E 02 78 */	stfs f1, 0x278(r30)
/* 80220F6C  3B E0 00 01 */	li r31, 1
lbl_80220F70:
/* 80220F70  C0 1E 02 7C */	lfs f0, 0x27c(r30)
/* 80220F74  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220F78  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80220F7C  C0 23 03 54 */	lfs f1, 0x354(r3)
/* 80220F80  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80220F84  41 82 00 0C */	beq lbl_80220F90
/* 80220F88  D0 3E 02 7C */	stfs f1, 0x27c(r30)
/* 80220F8C  3B E0 00 01 */	li r31, 1
lbl_80220F90:
/* 80220F90  C0 1E 02 80 */	lfs f0, 0x280(r30)
/* 80220F94  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220F98  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80220F9C  C0 23 03 74 */	lfs f1, 0x374(r3)
/* 80220FA0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80220FA4  41 82 00 0C */	beq lbl_80220FB0
/* 80220FA8  D0 3E 02 80 */	stfs f1, 0x280(r30)
/* 80220FAC  3B E0 00 01 */	li r31, 1
lbl_80220FB0:
/* 80220FB0  C0 1E 02 84 */	lfs f0, 0x284(r30)
/* 80220FB4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220FB8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80220FBC  C0 23 03 6C */	lfs f1, 0x36c(r3)
/* 80220FC0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80220FC4  41 82 00 0C */	beq lbl_80220FD0
/* 80220FC8  D0 3E 02 84 */	stfs f1, 0x284(r30)
/* 80220FCC  3B E0 00 01 */	li r31, 1
lbl_80220FD0:
/* 80220FD0  C0 1E 02 88 */	lfs f0, 0x288(r30)
/* 80220FD4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220FD8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80220FDC  C0 23 03 70 */	lfs f1, 0x370(r3)
/* 80220FE0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80220FE4  41 82 00 0C */	beq lbl_80220FF0
/* 80220FE8  D0 3E 02 88 */	stfs f1, 0x288(r30)
/* 80220FEC  3B E0 00 01 */	li r31, 1
lbl_80220FF0:
/* 80220FF0  C0 1E 02 8C */	lfs f0, 0x28c(r30)
/* 80220FF4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220FF8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80220FFC  C0 23 03 7C */	lfs f1, 0x37c(r3)
/* 80221000  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221004  41 82 00 0C */	beq lbl_80221010
/* 80221008  D0 3E 02 8C */	stfs f1, 0x28c(r30)
/* 8022100C  3B E0 00 01 */	li r31, 1
lbl_80221010:
/* 80221010  C0 1E 02 90 */	lfs f0, 0x290(r30)
/* 80221014  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80221018  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8022101C  C0 23 03 80 */	lfs f1, 0x380(r3)
/* 80221020  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221024  41 82 00 0C */	beq lbl_80221030
/* 80221028  D0 3E 02 90 */	stfs f1, 0x290(r30)
/* 8022102C  3B E0 00 01 */	li r31, 1
lbl_80221030:
/* 80221030  C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 80221034  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80221038  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8022103C  C0 23 03 84 */	lfs f1, 0x384(r3)
/* 80221040  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221044  41 82 00 0C */	beq lbl_80221050
/* 80221048  D0 3E 02 94 */	stfs f1, 0x294(r30)
/* 8022104C  3B E0 00 01 */	li r31, 1
lbl_80221050:
/* 80221050  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80221054  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80221058  88 83 00 19 */	lbz r4, 0x19(r3)
/* 8022105C  88 7E 02 98 */	lbz r3, 0x298(r30)
/* 80221060  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80221064  7C 03 00 40 */	cmplw r3, r0
/* 80221068  41 82 00 0C */	beq lbl_80221074
/* 8022106C  98 9E 02 98 */	stb r4, 0x298(r30)
/* 80221070  3B E0 00 01 */	li r31, 1
lbl_80221074:
/* 80221074  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80221078  28 00 00 01 */	cmplwi r0, 1
/* 8022107C  40 82 00 10 */	bne lbl_8022108C
/* 80221080  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80221084  A8 9E 01 B0 */	lha r4, 0x1b0(r30)
/* 80221088  4B FF 52 A5 */	bl drawRupee__13dMeter2Draw_cFs
lbl_8022108C:
/* 8022108C  7F C3 F3 78 */	mr r3, r30
/* 80221090  48 00 3D 31 */	bl alphaAnimeRupee__9dMeter2_cFv
/* 80221094  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80221098  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8022109C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802210A0  7C 08 03 A6 */	mtlr r0
/* 802210A4  38 21 00 20 */	addi r1, r1, 0x20
/* 802210A8  4E 80 00 20 */	blr 
