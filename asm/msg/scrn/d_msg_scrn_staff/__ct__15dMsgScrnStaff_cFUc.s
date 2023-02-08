lbl_80246B34:
/* 80246B34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80246B38  7C 08 02 A6 */	mflr r0
/* 80246B3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80246B40  39 61 00 20 */	addi r11, r1, 0x20
/* 80246B44  48 11 B6 8D */	bl _savegpr_26
/* 80246B48  7C 7E 1B 78 */	mr r30, r3
/* 80246B4C  4B FF 55 91 */	bl __ct__14dMsgScrnBase_cFv
/* 80246B50  3C 60 80 3C */	lis r3, __vt__15dMsgScrnStaff_c@ha /* 0x803C1370@ha */
/* 80246B54  38 03 13 70 */	addi r0, r3, __vt__15dMsgScrnStaff_c@l /* 0x803C1370@l */
/* 80246B58  90 1E 00 00 */	stw r0, 0(r30)
/* 80246B5C  7F C3 F3 78 */	mr r3, r30
/* 80246B60  4B FF 56 0D */	bl init__14dMsgScrnBase_cFv
/* 80246B64  C0 02 B2 F8 */	lfs f0, lit_3842(r2)
/* 80246B68  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 80246B6C  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 80246B70  38 60 01 18 */	li r3, 0x118
/* 80246B74  48 08 80 D9 */	bl __nw__FUl
/* 80246B78  7C 60 1B 79 */	or. r0, r3, r3
/* 80246B7C  41 82 00 0C */	beq lbl_80246B88
/* 80246B80  48 0B 19 19 */	bl __ct__9J2DScreenFv
/* 80246B84  7C 60 1B 78 */	mr r0, r3
lbl_80246B88:
/* 80246B88  90 1E 00 04 */	stw r0, 4(r30)
/* 80246B8C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80246B90  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_staff__stringBase0@ha /* 0x80399B98@ha */
/* 80246B94  38 84 9B 98 */	addi r4, r4, msg_scrn_d_msg_scrn_staff__stringBase0@l /* 0x80399B98@l */
/* 80246B98  3C A0 00 02 */	lis r5, 2
/* 80246B9C  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80246BA0  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80246BA4  80 C6 5C 84 */	lwz r6, 0x5c84(r6)
/* 80246BA8  48 0B 1A A1 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 80246BAC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80246BB0  48 00 E5 39 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 80246BB4  38 60 00 6C */	li r3, 0x6c
/* 80246BB8  48 08 80 95 */	bl __nw__FUl
/* 80246BBC  7C 60 1B 79 */	or. r0, r3, r3
/* 80246BC0  41 82 00 24 */	beq lbl_80246BE4
/* 80246BC4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80246BC8  3C A0 52 4F */	lis r5, 0x524F /* 0x524F4F54@ha */
/* 80246BCC  38 C5 4F 54 */	addi r6, r5, 0x4F54 /* 0x524F4F54@l */
/* 80246BD0  38 A0 00 00 */	li r5, 0
/* 80246BD4  38 E0 00 02 */	li r7, 2
/* 80246BD8  39 00 00 00 */	li r8, 0
/* 80246BDC  48 00 CD A9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80246BE0  7C 60 1B 78 */	mr r0, r3
lbl_80246BE4:
/* 80246BE4  90 1E 00 08 */	stw r0, 8(r30)
/* 80246BE8  80 7E 00 04 */	lwz r3, 4(r30)
/* 80246BEC  3C 80 66 74 */	lis r4, 0x6674 /* 0x66745F6E@ha */
/* 80246BF0  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x66745F6E@l */
/* 80246BF4  38 A0 6C 65 */	li r5, 0x6c65
/* 80246BF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80246BFC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80246C00  7D 89 03 A6 */	mtctr r12
/* 80246C04  4E 80 04 21 */	bctrl 
/* 80246C08  38 00 00 00 */	li r0, 0
/* 80246C0C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80246C10  80 7E 00 04 */	lwz r3, 4(r30)
/* 80246C14  3C 80 68 74 */	lis r4, 0x6874 /* 0x68745F6E@ha */
/* 80246C18  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x68745F6E@l */
/* 80246C1C  3C 80 00 72 */	lis r4, 0x0072 /* 0x00726967@ha */
/* 80246C20  38 A4 69 67 */	addi r5, r4, 0x6967 /* 0x00726967@l */
/* 80246C24  81 83 00 00 */	lwz r12, 0(r3)
/* 80246C28  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80246C2C  7D 89 03 A6 */	mtctr r12
/* 80246C30  4E 80 04 21 */	bctrl 
/* 80246C34  3B 60 00 00 */	li r27, 0
/* 80246C38  9B 63 00 B0 */	stb r27, 0xb0(r3)
/* 80246C3C  3B E0 00 00 */	li r31, 0
/* 80246C40  3B A0 00 00 */	li r29, 0
/* 80246C44  3C 60 80 3A */	lis r3, msg_scrn_d_msg_scrn_staff__stringBase0@ha /* 0x80399B98@ha */
/* 80246C48  3B 83 9B 98 */	addi r28, r3, msg_scrn_d_msg_scrn_staff__stringBase0@l /* 0x80399B98@l */
lbl_80246C4C:
/* 80246C4C  38 60 00 6C */	li r3, 0x6c
/* 80246C50  48 08 7F FD */	bl __nw__FUl
/* 80246C54  7C 64 1B 79 */	or. r4, r3, r3
/* 80246C58  41 82 00 2C */	beq lbl_80246C84
/* 80246C5C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80246C60  3C A0 80 3C */	lis r5, t_tag@ha /* 0x803C1340@ha */
/* 80246C64  38 05 13 40 */	addi r0, r5, t_tag@l /* 0x803C1340@l */
/* 80246C68  7C C0 DA 14 */	add r6, r0, r27
/* 80246C6C  80 A6 00 00 */	lwz r5, 0(r6)
/* 80246C70  80 C6 00 04 */	lwz r6, 4(r6)
/* 80246C74  38 E0 00 00 */	li r7, 0
/* 80246C78  39 00 00 00 */	li r8, 0
/* 80246C7C  48 00 CD 09 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80246C80  7C 64 1B 78 */	mr r4, r3
lbl_80246C84:
/* 80246C84  38 1D 00 0C */	addi r0, r29, 0xc
/* 80246C88  7C 9E 01 2E */	stwx r4, r30, r0
/* 80246C8C  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80246C90  83 43 00 04 */	lwz r26, 4(r3)
/* 80246C94  4B DC DD 5D */	bl mDoExt_getMesgFont__Fv
/* 80246C98  7C 64 1B 78 */	mr r4, r3
/* 80246C9C  7F 43 D3 78 */	mr r3, r26
/* 80246CA0  81 9A 00 00 */	lwz r12, 0(r26)
/* 80246CA4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80246CA8  7D 89 03 A6 */	mtctr r12
/* 80246CAC  4E 80 04 21 */	bctrl 
/* 80246CB0  38 1D 00 0C */	addi r0, r29, 0xc
/* 80246CB4  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80246CB8  80 63 00 04 */	lwz r3, 4(r3)
/* 80246CBC  38 80 02 00 */	li r4, 0x200
/* 80246CC0  38 BC 00 15 */	addi r5, r28, 0x15
/* 80246CC4  4C C6 31 82 */	crclr 6
/* 80246CC8  48 0B 9A 85 */	bl setString__10J2DTextBoxFsPCce
/* 80246CCC  3B FF 00 01 */	addi r31, r31, 1
/* 80246CD0  2C 1F 00 06 */	cmpwi r31, 6
/* 80246CD4  3B BD 00 04 */	addi r29, r29, 4
/* 80246CD8  3B 7B 00 08 */	addi r27, r27, 8
/* 80246CDC  41 80 FF 70 */	blt lbl_80246C4C
/* 80246CE0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246CE4  80 63 00 04 */	lwz r3, 4(r3)
/* 80246CE8  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 80246CEC  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 80246CF0  C0 03 01 20 */	lfs f0, 0x120(r3)
/* 80246CF4  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 80246CF8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246CFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D00  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80246D04  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80246D08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80246D0C  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 80246D10  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246D14  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D18  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80246D1C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80246D20  EC 01 00 28 */	fsubs f0, f1, f0
/* 80246D24  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 80246D28  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246D2C  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D30  C0 03 01 18 */	lfs f0, 0x118(r3)
/* 80246D34  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 80246D38  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246D3C  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D40  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 80246D44  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 80246D48  3B 40 00 00 */	li r26, 0
/* 80246D4C  3B E0 00 00 */	li r31, 0
lbl_80246D50:
/* 80246D50  38 1F 00 0C */	addi r0, r31, 0xc
/* 80246D54  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80246D58  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D5C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80246D60  D0 03 01 18 */	stfs f0, 0x118(r3)
/* 80246D64  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80246D68  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D6C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80246D70  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80246D74  EC 41 00 28 */	fsubs f2, f1, f0
/* 80246D78  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80246D7C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80246D80  EC 21 00 28 */	fsubs f1, f1, f0
/* 80246D84  81 83 00 00 */	lwz r12, 0(r3)
/* 80246D88  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80246D8C  7D 89 03 A6 */	mtctr r12
/* 80246D90  4E 80 04 21 */	bctrl 
/* 80246D94  3B 5A 00 01 */	addi r26, r26, 1
/* 80246D98  2C 1A 00 06 */	cmpwi r26, 6
/* 80246D9C  3B FF 00 04 */	addi r31, r31, 4
/* 80246DA0  41 80 FF B0 */	blt lbl_80246D50
/* 80246DA4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246DA8  48 00 D5 41 */	bl getGlobalPosX__8CPaneMgrFv
/* 80246DAC  D0 3E 00 64 */	stfs f1, 0x64(r30)
/* 80246DB0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246DB4  48 00 D5 B1 */	bl getGlobalPosY__8CPaneMgrFv
/* 80246DB8  D0 3E 00 68 */	stfs f1, 0x68(r30)
/* 80246DBC  7F C3 F3 78 */	mr r3, r30
/* 80246DC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80246DC4  48 11 B4 59 */	bl _restgpr_26
/* 80246DC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80246DCC  7C 08 03 A6 */	mtlr r0
/* 80246DD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80246DD4  4E 80 00 20 */	blr 
