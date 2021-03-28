lbl_804C4BC0:
/* 804C4BC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C4BC4  7C 08 02 A6 */	mflr r0
/* 804C4BC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C4BCC  39 61 00 30 */	addi r11, r1, 0x30
/* 804C4BD0  4B E9 D6 0C */	b _savegpr_29
/* 804C4BD4  7C 7D 1B 78 */	mr r29, r3
/* 804C4BD8  3C 60 80 4C */	lis r3, lit_3777@ha
/* 804C4BDC  3B E3 64 C8 */	addi r31, r3, lit_3777@l
/* 804C4BE0  3B C0 00 04 */	li r30, 4
/* 804C4BE4  80 1D 08 C0 */	lwz r0, 0x8c0(r29)
/* 804C4BE8  28 00 00 0B */	cmplwi r0, 0xb
/* 804C4BEC  41 82 03 D8 */	beq lbl_804C4FC4
/* 804C4BF0  80 1D 08 94 */	lwz r0, 0x894(r29)
/* 804C4BF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804C4BF8  40 82 03 CC */	bne lbl_804C4FC4
/* 804C4BFC  80 7D 08 90 */	lwz r3, 0x890(r29)
/* 804C4C00  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 804C4C04  41 82 00 3C */	beq lbl_804C4C40
/* 804C4C08  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 804C4C0C  40 82 00 34 */	bne lbl_804C4C40
/* 804C4C10  38 00 00 00 */	li r0, 0
/* 804C4C14  88 7D 08 4E */	lbz r3, 0x84e(r29)
/* 804C4C18  28 03 00 03 */	cmplwi r3, 3
/* 804C4C1C  41 82 00 14 */	beq lbl_804C4C30
/* 804C4C20  28 03 00 04 */	cmplwi r3, 4
/* 804C4C24  41 82 00 0C */	beq lbl_804C4C30
/* 804C4C28  28 03 00 02 */	cmplwi r3, 2
/* 804C4C2C  40 82 00 08 */	bne lbl_804C4C34
lbl_804C4C30:
/* 804C4C30  38 00 00 01 */	li r0, 1
lbl_804C4C34:
/* 804C4C34  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804C4C38  40 82 00 08 */	bne lbl_804C4C40
/* 804C4C3C  48 00 03 88 */	b lbl_804C4FC4
lbl_804C4C40:
/* 804C4C40  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4C44  C0 3D 08 C8 */	lfs f1, 0x8c8(r29)
/* 804C4C48  4B E6 37 E4 */	b checkPass__12J3DFrameCtrlFf
/* 804C4C4C  2C 03 00 00 */	cmpwi r3, 0
/* 804C4C50  41 82 00 28 */	beq lbl_804C4C78
/* 804C4C54  80 1D 08 C4 */	lwz r0, 0x8c4(r29)
/* 804C4C58  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C4C5C  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 804C4C60  38 81 00 18 */	addi r4, r1, 0x18
/* 804C4C64  38 A0 FF FF */	li r5, -1
/* 804C4C68  81 9D 06 FC */	lwz r12, 0x6fc(r29)
/* 804C4C6C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804C4C70  7D 89 03 A6 */	mtctr r12
/* 804C4C74  4E 80 04 21 */	bctrl 
lbl_804C4C78:
/* 804C4C78  38 9F 01 1C */	addi r4, r31, 0x11c
/* 804C4C7C  A0 04 00 90 */	lhz r0, 0x90(r4)
/* 804C4C80  A0 7D 05 F8 */	lhz r3, 0x5f8(r29)
/* 804C4C84  7C 00 18 40 */	cmplw r0, r3
/* 804C4C88  40 82 00 74 */	bne lbl_804C4CFC
/* 804C4C8C  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4C90  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 804C4C94  4B E6 37 98 */	b checkPass__12J3DFrameCtrlFf
/* 804C4C98  2C 03 00 00 */	cmpwi r3, 0
/* 804C4C9C  41 82 00 30 */	beq lbl_804C4CCC
/* 804C4CA0  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501F4@ha */
/* 804C4CA4  38 03 01 F4 */	addi r0, r3, 0x01F4 /* 0x000501F4@l */
/* 804C4CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C4CAC  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 804C4CB0  38 81 00 14 */	addi r4, r1, 0x14
/* 804C4CB4  38 A0 FF FF */	li r5, -1
/* 804C4CB8  81 9D 06 FC */	lwz r12, 0x6fc(r29)
/* 804C4CBC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804C4CC0  7D 89 03 A6 */	mtctr r12
/* 804C4CC4  4E 80 04 21 */	bctrl 
/* 804C4CC8  48 00 02 0C */	b lbl_804C4ED4
lbl_804C4CCC:
/* 804C4CCC  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4CD0  C0 3F 03 FC */	lfs f1, 0x3fc(r31)
/* 804C4CD4  4B E6 37 58 */	b checkPass__12J3DFrameCtrlFf
/* 804C4CD8  2C 03 00 00 */	cmpwi r3, 0
/* 804C4CDC  40 82 00 18 */	bne lbl_804C4CF4
/* 804C4CE0  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4CE4  C0 3F 05 58 */	lfs f1, 0x558(r31)
/* 804C4CE8  4B E6 37 44 */	b checkPass__12J3DFrameCtrlFf
/* 804C4CEC  2C 03 00 00 */	cmpwi r3, 0
/* 804C4CF0  41 82 01 E4 */	beq lbl_804C4ED4
lbl_804C4CF4:
/* 804C4CF4  3B C0 00 00 */	li r30, 0
/* 804C4CF8  48 00 01 DC */	b lbl_804C4ED4
lbl_804C4CFC:
/* 804C4CFC  A0 04 01 74 */	lhz r0, 0x174(r4)
/* 804C4D00  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 804C4D04  7C 00 18 40 */	cmplw r0, r3
/* 804C4D08  40 82 00 44 */	bne lbl_804C4D4C
/* 804C4D0C  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4D10  C0 3F 05 5C */	lfs f1, 0x55c(r31)
/* 804C4D14  4B E6 37 18 */	b checkPass__12J3DFrameCtrlFf
/* 804C4D18  2C 03 00 00 */	cmpwi r3, 0
/* 804C4D1C  41 82 01 B8 */	beq lbl_804C4ED4
/* 804C4D20  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501FD@ha */
/* 804C4D24  38 03 01 FD */	addi r0, r3, 0x01FD /* 0x000501FD@l */
/* 804C4D28  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C4D2C  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 804C4D30  38 81 00 10 */	addi r4, r1, 0x10
/* 804C4D34  38 A0 FF FF */	li r5, -1
/* 804C4D38  81 9D 06 FC */	lwz r12, 0x6fc(r29)
/* 804C4D3C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804C4D40  7D 89 03 A6 */	mtctr r12
/* 804C4D44  4E 80 04 21 */	bctrl 
/* 804C4D48  48 00 01 8C */	b lbl_804C4ED4
lbl_804C4D4C:
/* 804C4D4C  A0 04 00 84 */	lhz r0, 0x84(r4)
/* 804C4D50  7C 00 18 40 */	cmplw r0, r3
/* 804C4D54  40 82 00 20 */	bne lbl_804C4D74
/* 804C4D58  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4D5C  C0 3F 05 60 */	lfs f1, 0x560(r31)
/* 804C4D60  4B E6 36 CC */	b checkPass__12J3DFrameCtrlFf
/* 804C4D64  2C 03 00 00 */	cmpwi r3, 0
/* 804C4D68  41 82 01 6C */	beq lbl_804C4ED4
/* 804C4D6C  3B C0 00 00 */	li r30, 0
/* 804C4D70  48 00 01 64 */	b lbl_804C4ED4
lbl_804C4D74:
/* 804C4D74  A0 04 00 6C */	lhz r0, 0x6c(r4)
/* 804C4D78  7C 00 18 40 */	cmplw r0, r3
/* 804C4D7C  40 82 00 20 */	bne lbl_804C4D9C
/* 804C4D80  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4D84  C0 3F 03 A4 */	lfs f1, 0x3a4(r31)
/* 804C4D88  4B E6 36 A4 */	b checkPass__12J3DFrameCtrlFf
/* 804C4D8C  2C 03 00 00 */	cmpwi r3, 0
/* 804C4D90  41 82 01 44 */	beq lbl_804C4ED4
/* 804C4D94  3B C0 00 00 */	li r30, 0
/* 804C4D98  48 00 01 3C */	b lbl_804C4ED4
lbl_804C4D9C:
/* 804C4D9C  A0 04 01 20 */	lhz r0, 0x120(r4)
/* 804C4DA0  7C 00 18 40 */	cmplw r0, r3
/* 804C4DA4  40 82 00 64 */	bne lbl_804C4E08
/* 804C4DA8  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4DAC  C0 3F 04 60 */	lfs f1, 0x460(r31)
/* 804C4DB0  4B E6 36 7C */	b checkPass__12J3DFrameCtrlFf
/* 804C4DB4  2C 03 00 00 */	cmpwi r3, 0
/* 804C4DB8  40 82 00 18 */	bne lbl_804C4DD0
/* 804C4DBC  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4DC0  C0 3F 05 60 */	lfs f1, 0x560(r31)
/* 804C4DC4  4B E6 36 68 */	b checkPass__12J3DFrameCtrlFf
/* 804C4DC8  2C 03 00 00 */	cmpwi r3, 0
/* 804C4DCC  41 82 00 0C */	beq lbl_804C4DD8
lbl_804C4DD0:
/* 804C4DD0  3B C0 00 01 */	li r30, 1
/* 804C4DD4  48 00 01 00 */	b lbl_804C4ED4
lbl_804C4DD8:
/* 804C4DD8  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4DDC  C0 3F 05 04 */	lfs f1, 0x504(r31)
/* 804C4DE0  4B E6 36 4C */	b checkPass__12J3DFrameCtrlFf
/* 804C4DE4  2C 03 00 00 */	cmpwi r3, 0
/* 804C4DE8  40 82 00 18 */	bne lbl_804C4E00
/* 804C4DEC  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4DF0  C0 3F 05 64 */	lfs f1, 0x564(r31)
/* 804C4DF4  4B E6 36 38 */	b checkPass__12J3DFrameCtrlFf
/* 804C4DF8  2C 03 00 00 */	cmpwi r3, 0
/* 804C4DFC  41 82 00 D8 */	beq lbl_804C4ED4
lbl_804C4E00:
/* 804C4E00  3B C0 00 02 */	li r30, 2
/* 804C4E04  48 00 00 D0 */	b lbl_804C4ED4
lbl_804C4E08:
/* 804C4E08  A0 04 00 9C */	lhz r0, 0x9c(r4)
/* 804C4E0C  7C 00 18 40 */	cmplw r0, r3
/* 804C4E10  40 82 00 3C */	bne lbl_804C4E4C
/* 804C4E14  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4E18  C0 3F 03 A4 */	lfs f1, 0x3a4(r31)
/* 804C4E1C  4B E6 36 10 */	b checkPass__12J3DFrameCtrlFf
/* 804C4E20  2C 03 00 00 */	cmpwi r3, 0
/* 804C4E24  41 82 00 0C */	beq lbl_804C4E30
/* 804C4E28  3B C0 00 03 */	li r30, 3
/* 804C4E2C  48 00 00 A8 */	b lbl_804C4ED4
lbl_804C4E30:
/* 804C4E30  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4E34  C0 3F 05 68 */	lfs f1, 0x568(r31)
/* 804C4E38  4B E6 35 F4 */	b checkPass__12J3DFrameCtrlFf
/* 804C4E3C  2C 03 00 00 */	cmpwi r3, 0
/* 804C4E40  41 82 00 94 */	beq lbl_804C4ED4
/* 804C4E44  3B C0 00 00 */	li r30, 0
/* 804C4E48  48 00 00 8C */	b lbl_804C4ED4
lbl_804C4E4C:
/* 804C4E4C  A0 04 01 8C */	lhz r0, 0x18c(r4)
/* 804C4E50  7C 00 18 40 */	cmplw r0, r3
/* 804C4E54  40 82 00 48 */	bne lbl_804C4E9C
/* 804C4E58  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4E5C  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 804C4E60  4B E6 35 CC */	b checkPass__12J3DFrameCtrlFf
/* 804C4E64  2C 03 00 00 */	cmpwi r3, 0
/* 804C4E68  40 82 00 2C */	bne lbl_804C4E94
/* 804C4E6C  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4E70  C0 3F 03 FC */	lfs f1, 0x3fc(r31)
/* 804C4E74  4B E6 35 B8 */	b checkPass__12J3DFrameCtrlFf
/* 804C4E78  2C 03 00 00 */	cmpwi r3, 0
/* 804C4E7C  40 82 00 18 */	bne lbl_804C4E94
/* 804C4E80  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4E84  C0 3F 05 6C */	lfs f1, 0x56c(r31)
/* 804C4E88  4B E6 35 A4 */	b checkPass__12J3DFrameCtrlFf
/* 804C4E8C  2C 03 00 00 */	cmpwi r3, 0
/* 804C4E90  41 82 00 44 */	beq lbl_804C4ED4
lbl_804C4E94:
/* 804C4E94  3B C0 00 01 */	li r30, 1
/* 804C4E98  48 00 00 3C */	b lbl_804C4ED4
lbl_804C4E9C:
/* 804C4E9C  A0 04 00 FC */	lhz r0, 0xfc(r4)
/* 804C4EA0  7C 00 18 40 */	cmplw r0, r3
/* 804C4EA4  40 82 00 30 */	bne lbl_804C4ED4
/* 804C4EA8  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4EAC  C0 3F 04 BC */	lfs f1, 0x4bc(r31)
/* 804C4EB0  4B E6 35 7C */	b checkPass__12J3DFrameCtrlFf
/* 804C4EB4  2C 03 00 00 */	cmpwi r3, 0
/* 804C4EB8  40 82 00 18 */	bne lbl_804C4ED0
/* 804C4EBC  38 7D 05 84 */	addi r3, r29, 0x584
/* 804C4EC0  C0 3F 04 C0 */	lfs f1, 0x4c0(r31)
/* 804C4EC4  4B E6 35 68 */	b checkPass__12J3DFrameCtrlFf
/* 804C4EC8  2C 03 00 00 */	cmpwi r3, 0
/* 804C4ECC  41 82 00 08 */	beq lbl_804C4ED4
lbl_804C4ED0:
/* 804C4ED0  3B C0 00 01 */	li r30, 1
lbl_804C4ED4:
/* 804C4ED4  2C 1E 00 04 */	cmpwi r30, 4
/* 804C4ED8  41 82 00 48 */	beq lbl_804C4F20
/* 804C4EDC  57 C5 18 38 */	slwi r5, r30, 3
/* 804C4EE0  38 9F 05 34 */	addi r4, r31, 0x534
/* 804C4EE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C4EE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C4EEC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804C4EF0  54 00 77 7A */	rlwinm r0, r0, 0xe, 0x1d, 0x1d
/* 804C4EF4  7C 05 02 14 */	add r0, r5, r0
/* 804C4EF8  7C 04 00 2E */	lwzx r0, r4, r0
/* 804C4EFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C4F00  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 804C4F04  38 81 00 0C */	addi r4, r1, 0xc
/* 804C4F08  38 A0 00 00 */	li r5, 0
/* 804C4F0C  38 C0 FF FF */	li r6, -1
/* 804C4F10  81 9D 06 FC */	lwz r12, 0x6fc(r29)
/* 804C4F14  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804C4F18  7D 89 03 A6 */	mtctr r12
/* 804C4F1C  4E 80 04 21 */	bctrl 
lbl_804C4F20:
/* 804C4F20  80 1D 08 94 */	lwz r0, 0x894(r29)
/* 804C4F24  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804C4F28  41 82 00 18 */	beq lbl_804C4F40
/* 804C4F2C  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 804C4F30  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 804C4F34  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804C4F38  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 804C4F3C  4B DF B7 94 */	b updateAnime__10Z2CreatureFff
lbl_804C4F40:
/* 804C4F40  3B C0 00 00 */	li r30, 0
/* 804C4F44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C4F48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C4F4C  38 63 00 28 */	addi r3, r3, 0x28
/* 804C4F50  38 80 00 03 */	li r4, 3
/* 804C4F54  4B B6 DC 98 */	b isTransformLV__21dSv_player_status_b_cCFi
/* 804C4F58  2C 03 00 00 */	cmpwi r3, 0
/* 804C4F5C  41 82 00 24 */	beq lbl_804C4F80
/* 804C4F60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C4F64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C4F68  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804C4F6C  38 80 1E 08 */	li r4, 0x1e08
/* 804C4F70  4B B6 FA 4C */	b isEventBit__11dSv_event_cCFUs
/* 804C4F74  2C 03 00 00 */	cmpwi r3, 0
/* 804C4F78  40 82 00 08 */	bne lbl_804C4F80
/* 804C4F7C  3B C0 00 01 */	li r30, 1
lbl_804C4F80:
/* 804C4F80  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 804C4F84  41 82 00 40 */	beq lbl_804C4FC4
/* 804C4F88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C4F8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C4F90  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804C4F94  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 804C4F98  40 82 00 2C */	bne lbl_804C4FC4
/* 804C4F9C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501F0@ha */
/* 804C4FA0  38 03 01 F0 */	addi r0, r3, 0x01F0 /* 0x000501F0@l */
/* 804C4FA4  90 01 00 08 */	stw r0, 8(r1)
/* 804C4FA8  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 804C4FAC  38 81 00 08 */	addi r4, r1, 8
/* 804C4FB0  38 A0 FF FF */	li r5, -1
/* 804C4FB4  81 9D 06 FC */	lwz r12, 0x6fc(r29)
/* 804C4FB8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 804C4FBC  7D 89 03 A6 */	mtctr r12
/* 804C4FC0  4E 80 04 21 */	bctrl 
lbl_804C4FC4:
/* 804C4FC4  39 61 00 30 */	addi r11, r1, 0x30
/* 804C4FC8  4B E9 D2 60 */	b _restgpr_29
/* 804C4FCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C4FD0  7C 08 03 A6 */	mtlr r0
/* 804C4FD4  38 21 00 30 */	addi r1, r1, 0x30
/* 804C4FD8  4E 80 00 20 */	blr 
