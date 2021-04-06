lbl_80258CC8:
/* 80258CC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80258CCC  7C 08 02 A6 */	mflr r0
/* 80258CD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80258CD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80258CD8  48 10 95 01 */	bl _savegpr_28
/* 80258CDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80258CE0  7C 9C 23 78 */	mr r28, r4
/* 80258CE4  41 82 00 D0 */	beq lbl_80258DB4
/* 80258CE8  80 7F 04 14 */	lwz r3, 0x414(r31)
/* 80258CEC  28 03 00 00 */	cmplwi r3, 0
/* 80258CF0  41 82 00 18 */	beq lbl_80258D08
/* 80258CF4  38 80 00 01 */	li r4, 1
/* 80258CF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80258CFC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80258D00  7D 89 03 A6 */	mtctr r12
/* 80258D04  4E 80 04 21 */	bctrl 
lbl_80258D08:
/* 80258D08  80 7F 04 18 */	lwz r3, 0x418(r31)
/* 80258D0C  28 03 00 00 */	cmplwi r3, 0
/* 80258D10  41 82 00 18 */	beq lbl_80258D28
/* 80258D14  38 80 00 01 */	li r4, 1
/* 80258D18  81 83 00 00 */	lwz r12, 0(r3)
/* 80258D1C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80258D20  7D 89 03 A6 */	mtctr r12
/* 80258D24  4E 80 04 21 */	bctrl 
lbl_80258D28:
/* 80258D28  3C 60 80 3A */	lis r3, d_s_d_s_name__stringBase0@ha /* 0x8039A2A8@ha */
/* 80258D2C  38 63 A2 A8 */	addi r3, r3, d_s_d_s_name__stringBase0@l /* 0x8039A2A8@l */
/* 80258D30  38 63 00 0D */	addi r3, r3, 0xd
/* 80258D34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80258D38  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80258D3C  3C 84 00 02 */	addis r4, r4, 2
/* 80258D40  38 A0 00 80 */	li r5, 0x80
/* 80258D44  38 84 C2 F8 */	addi r4, r4, -15624
/* 80258D48  4B DE 34 4D */	bl deleteRes__14dRes_control_cFPCcP11dRes_info_ci
/* 80258D4C  80 7F 01 CC */	lwz r3, 0x1cc(r31)
/* 80258D50  48 07 56 F9 */	bl destroy__7JKRHeapFv
/* 80258D54  3B A0 00 00 */	li r29, 0
/* 80258D58  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80258D5C  3B C3 01 88 */	addi r30, r3, g_meter2_info@l /* 0x80430188@l */
lbl_80258D60:
/* 80258D60  7F C3 F3 78 */	mr r3, r30
/* 80258D64  38 1D 00 0B */	addi r0, r29, 0xb
/* 80258D68  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80258D6C  4B FC 4F F1 */	bl changeWater__13dMeter2Info_cFUc
/* 80258D70  3B BD 00 01 */	addi r29, r29, 1
/* 80258D74  2C 1D 00 04 */	cmpwi r29, 4
/* 80258D78  41 80 FF E8 */	blt lbl_80258D60
/* 80258D7C  38 00 00 00 */	li r0, 0
/* 80258D80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80258D84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80258D88  98 03 5D 44 */	stb r0, 0x5d44(r3)
/* 80258D8C  90 03 61 B0 */	stw r0, 0x61b0(r3)
/* 80258D90  34 1F 01 D4 */	addic. r0, r31, 0x1d4
/* 80258D94  41 82 00 10 */	beq lbl_80258DA4
/* 80258D98  3C 60 80 3C */	lis r3, __vt__17dScnName_camera_c@ha /* 0x803C3140@ha */
/* 80258D9C  38 03 31 40 */	addi r0, r3, __vt__17dScnName_camera_c@l /* 0x803C3140@l */
/* 80258DA0  90 1F 04 10 */	stw r0, 0x410(r31)
lbl_80258DA4:
/* 80258DA4  7F 80 07 35 */	extsh. r0, r28
/* 80258DA8  40 81 00 0C */	ble lbl_80258DB4
/* 80258DAC  7F E3 FB 78 */	mr r3, r31
/* 80258DB0  48 07 5F 8D */	bl __dl__FPv
lbl_80258DB4:
/* 80258DB4  7F E3 FB 78 */	mr r3, r31
/* 80258DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80258DBC  48 10 94 69 */	bl _restgpr_28
/* 80258DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80258DC4  7C 08 03 A6 */	mtlr r0
/* 80258DC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80258DCC  4E 80 00 20 */	blr 
