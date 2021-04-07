lbl_80257C64:
/* 80257C64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80257C68  7C 08 02 A6 */	mflr r0
/* 80257C6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80257C70  39 61 00 30 */	addi r11, r1, 0x30
/* 80257C74  48 10 A5 69 */	bl _savegpr_29
/* 80257C78  7C 7F 1B 78 */	mr r31, r3
/* 80257C7C  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80257C80  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80257C84  38 80 00 04 */	li r4, 4
/* 80257C88  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80257C8C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80257C90  3F C5 00 02 */	addis r30, r5, 2
/* 80257C94  3B DE C2 F8 */	addi r30, r30, -15624
/* 80257C98  7F C5 F3 78 */	mr r5, r30
/* 80257C9C  38 C0 00 80 */	li r6, 0x80
/* 80257CA0  4B DE 46 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80257CA4  7C 7D 1B 78 */	mr r29, r3
/* 80257CA8  38 60 01 68 */	li r3, 0x168
/* 80257CAC  48 07 6F A1 */	bl __nw__FUl
/* 80257CB0  7C 60 1B 79 */	or. r0, r3, r3
/* 80257CB4  41 82 00 24 */	beq lbl_80257CD8
/* 80257CB8  7F A4 EB 78 */	mr r4, r29
/* 80257CBC  38 A0 00 75 */	li r5, 0x75
/* 80257CC0  38 C0 00 9A */	li r6, 0x9a
/* 80257CC4  38 E0 01 78 */	li r7, 0x178
/* 80257CC8  39 00 00 68 */	li r8, 0x68
/* 80257CCC  39 20 00 FF */	li r9, 0xff
/* 80257CD0  4B DF BD 31 */	bl __ct__10dDlst_2D_cFP7ResTIMGssssUc
/* 80257CD4  7C 60 1B 78 */	mr r0, r3
lbl_80257CD8:
/* 80257CD8  90 1F 01 E4 */	stw r0, 0x1e4(r31)
/* 80257CDC  38 00 00 DC */	li r0, 0xdc
/* 80257CE0  98 01 00 18 */	stb r0, 0x18(r1)
/* 80257CE4  38 00 00 00 */	li r0, 0
/* 80257CE8  98 01 00 19 */	stb r0, 0x19(r1)
/* 80257CEC  98 01 00 1A */	stb r0, 0x1a(r1)
/* 80257CF0  38 00 00 FF */	li r0, 0xff
/* 80257CF4  98 01 00 1B */	stb r0, 0x1b(r1)
/* 80257CF8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80257CFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80257D00  80 7F 01 E4 */	lwz r3, 0x1e4(r31)
/* 80257D04  38 81 00 1C */	addi r4, r1, 0x1c
/* 80257D08  85 83 00 08 */	lwzu r12, 8(r3)
/* 80257D0C  81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 80257D10  7D 89 03 A6 */	mtctr r12
/* 80257D14  4E 80 04 21 */	bctrl 
/* 80257D18  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80257D1C  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80257D20  38 80 00 03 */	li r4, 3
/* 80257D24  7F C5 F3 78 */	mr r5, r30
/* 80257D28  38 C0 00 80 */	li r6, 0x80
/* 80257D2C  4B DE 45 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80257D30  7C 7D 1B 78 */	mr r29, r3
/* 80257D34  38 60 01 68 */	li r3, 0x168
/* 80257D38  48 07 6F 15 */	bl __nw__FUl
/* 80257D3C  7C 60 1B 79 */	or. r0, r3, r3
/* 80257D40  41 82 00 24 */	beq lbl_80257D64
/* 80257D44  7F A4 EB 78 */	mr r4, r29
/* 80257D48  38 A0 00 BD */	li r5, 0xbd
/* 80257D4C  38 C0 00 96 */	li r6, 0x96
/* 80257D50  38 E0 00 E8 */	li r7, 0xe8
/* 80257D54  39 00 00 70 */	li r8, 0x70
/* 80257D58  39 20 00 FF */	li r9, 0xff
/* 80257D5C  4B DF BC A5 */	bl __ct__10dDlst_2D_cFP7ResTIMGssssUc
/* 80257D60  7C 60 1B 78 */	mr r0, r3
lbl_80257D64:
/* 80257D64  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 80257D68  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80257D6C  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80257D70  38 80 00 0A */	li r4, 0xa
/* 80257D74  7F C5 F3 78 */	mr r5, r30
/* 80257D78  38 C0 00 80 */	li r6, 0x80
/* 80257D7C  4B DE 45 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80257D80  7C 7D 1B 78 */	mr r29, r3
/* 80257D84  38 60 01 68 */	li r3, 0x168
/* 80257D88  48 07 6E C5 */	bl __nw__FUl
/* 80257D8C  7C 60 1B 79 */	or. r0, r3, r3
/* 80257D90  41 82 00 24 */	beq lbl_80257DB4
/* 80257D94  7F A4 EB 78 */	mr r4, r29
/* 80257D98  38 A0 00 00 */	li r5, 0
/* 80257D9C  38 C0 00 00 */	li r6, 0
/* 80257DA0  38 E0 02 60 */	li r7, 0x260
/* 80257DA4  39 00 01 C0 */	li r8, 0x1c0
/* 80257DA8  39 20 00 FF */	li r9, 0xff
/* 80257DAC  4B DF BC 55 */	bl __ct__10dDlst_2D_cFP7ResTIMGssssUc
/* 80257DB0  7C 60 1B 78 */	mr r0, r3
lbl_80257DB4:
/* 80257DB4  90 1F 01 DC */	stw r0, 0x1dc(r31)
/* 80257DB8  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80257DBC  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80257DC0  38 80 00 0B */	li r4, 0xb
/* 80257DC4  7F C5 F3 78 */	mr r5, r30
/* 80257DC8  38 C0 00 80 */	li r6, 0x80
/* 80257DCC  4B DE 45 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80257DD0  7C 7D 1B 78 */	mr r29, r3
/* 80257DD4  38 60 01 68 */	li r3, 0x168
/* 80257DD8  48 07 6E 75 */	bl __nw__FUl
/* 80257DDC  7C 60 1B 79 */	or. r0, r3, r3
/* 80257DE0  41 82 00 24 */	beq lbl_80257E04
/* 80257DE4  7F A4 EB 78 */	mr r4, r29
/* 80257DE8  38 A0 00 00 */	li r5, 0
/* 80257DEC  38 C0 01 67 */	li r6, 0x167
/* 80257DF0  38 E0 02 60 */	li r7, 0x260
/* 80257DF4  39 00 00 30 */	li r8, 0x30
/* 80257DF8  39 20 00 FF */	li r9, 0xff
/* 80257DFC  4B DF BC 05 */	bl __ct__10dDlst_2D_cFP7ResTIMGssssUc
/* 80257E00  7C 60 1B 78 */	mr r0, r3
lbl_80257E04:
/* 80257E04  90 1F 01 E0 */	stw r0, 0x1e0(r31)
/* 80257E08  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80257E0C  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80257E10  38 80 00 05 */	li r4, 5
/* 80257E14  7F C5 F3 78 */	mr r5, r30
/* 80257E18  38 C0 00 80 */	li r6, 0x80
/* 80257E1C  4B DE 44 D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80257E20  7C 7D 1B 78 */	mr r29, r3
/* 80257E24  38 60 01 68 */	li r3, 0x168
/* 80257E28  48 07 6E 25 */	bl __nw__FUl
/* 80257E2C  7C 60 1B 79 */	or. r0, r3, r3
/* 80257E30  41 82 00 24 */	beq lbl_80257E54
/* 80257E34  7F A4 EB 78 */	mr r4, r29
/* 80257E38  38 A0 00 71 */	li r5, 0x71
/* 80257E3C  38 C0 01 19 */	li r6, 0x119
/* 80257E40  38 E0 01 A0 */	li r7, 0x1a0
/* 80257E44  39 00 00 48 */	li r8, 0x48
/* 80257E48  39 20 00 FF */	li r9, 0xff
/* 80257E4C  4B DF BB B5 */	bl __ct__10dDlst_2D_cFP7ResTIMGssssUc
/* 80257E50  7C 60 1B 78 */	mr r0, r3
lbl_80257E54:
/* 80257E54  90 1F 01 EC */	stw r0, 0x1ec(r31)
/* 80257E58  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80257E5C  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80257E60  38 80 00 09 */	li r4, 9
/* 80257E64  7F C5 F3 78 */	mr r5, r30
/* 80257E68  38 C0 00 80 */	li r6, 0x80
/* 80257E6C  4B DE 44 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80257E70  7C 7D 1B 78 */	mr r29, r3
/* 80257E74  38 60 01 68 */	li r3, 0x168
/* 80257E78  48 07 6D D5 */	bl __nw__FUl
/* 80257E7C  7C 60 1B 79 */	or. r0, r3, r3
/* 80257E80  41 82 00 24 */	beq lbl_80257EA4
/* 80257E84  7F A4 EB 78 */	mr r4, r29
/* 80257E88  38 A0 00 D3 */	li r5, 0xd3
/* 80257E8C  38 C0 01 74 */	li r6, 0x174
/* 80257E90  38 E0 00 50 */	li r7, 0x50
/* 80257E94  39 00 00 20 */	li r8, 0x20
/* 80257E98  39 20 00 FF */	li r9, 0xff
/* 80257E9C  4B DF BB 65 */	bl __ct__10dDlst_2D_cFP7ResTIMGssssUc
/* 80257EA0  7C 60 1B 78 */	mr r0, r3
lbl_80257EA4:
/* 80257EA4  90 1F 01 F0 */	stw r0, 0x1f0(r31)
/* 80257EA8  38 00 00 A0 */	li r0, 0xa0
/* 80257EAC  98 01 00 10 */	stb r0, 0x10(r1)
/* 80257EB0  98 01 00 11 */	stb r0, 0x11(r1)
/* 80257EB4  98 01 00 12 */	stb r0, 0x12(r1)
/* 80257EB8  38 00 00 FF */	li r0, 0xff
/* 80257EBC  98 01 00 13 */	stb r0, 0x13(r1)
/* 80257EC0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80257EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257EC8  80 7F 01 F0 */	lwz r3, 0x1f0(r31)
/* 80257ECC  38 81 00 14 */	addi r4, r1, 0x14
/* 80257ED0  85 83 00 08 */	lwzu r12, 8(r3)
/* 80257ED4  81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 80257ED8  7D 89 03 A6 */	mtctr r12
/* 80257EDC  4E 80 04 21 */	bctrl 
/* 80257EE0  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80257EE4  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80257EE8  38 80 00 07 */	li r4, 7
/* 80257EEC  7F C5 F3 78 */	mr r5, r30
/* 80257EF0  38 C0 00 80 */	li r6, 0x80
/* 80257EF4  4B DE 43 F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80257EF8  7C 7D 1B 78 */	mr r29, r3
/* 80257EFC  38 60 01 68 */	li r3, 0x168
/* 80257F00  48 07 6D 4D */	bl __nw__FUl
/* 80257F04  7C 60 1B 79 */	or. r0, r3, r3
/* 80257F08  41 82 00 24 */	beq lbl_80257F2C
/* 80257F0C  7F A4 EB 78 */	mr r4, r29
/* 80257F10  38 A0 01 5E */	li r5, 0x15e
/* 80257F14  38 C0 01 74 */	li r6, 0x174
/* 80257F18  38 E0 00 50 */	li r7, 0x50
/* 80257F1C  39 00 00 20 */	li r8, 0x20
/* 80257F20  39 20 00 FF */	li r9, 0xff
/* 80257F24  4B DF BA DD */	bl __ct__10dDlst_2D_cFP7ResTIMGssssUc
/* 80257F28  7C 60 1B 78 */	mr r0, r3
lbl_80257F2C:
/* 80257F2C  90 1F 01 F4 */	stw r0, 0x1f4(r31)
/* 80257F30  38 00 00 A0 */	li r0, 0xa0
/* 80257F34  98 01 00 08 */	stb r0, 8(r1)
/* 80257F38  98 01 00 09 */	stb r0, 9(r1)
/* 80257F3C  98 01 00 0A */	stb r0, 0xa(r1)
/* 80257F40  38 00 00 FF */	li r0, 0xff
/* 80257F44  98 01 00 0B */	stb r0, 0xb(r1)
/* 80257F48  80 01 00 08 */	lwz r0, 8(r1)
/* 80257F4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80257F50  80 7F 01 F4 */	lwz r3, 0x1f4(r31)
/* 80257F54  38 81 00 0C */	addi r4, r1, 0xc
/* 80257F58  85 83 00 08 */	lwzu r12, 8(r3)
/* 80257F5C  81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 80257F60  7D 89 03 A6 */	mtctr r12
/* 80257F64  4E 80 04 21 */	bctrl 
/* 80257F68  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80257F6C  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80257F70  38 80 00 08 */	li r4, 8
/* 80257F74  7F C5 F3 78 */	mr r5, r30
/* 80257F78  38 C0 00 80 */	li r6, 0x80
/* 80257F7C  4B DE 43 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80257F80  90 7F 02 00 */	stw r3, 0x200(r31)
/* 80257F84  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80257F88  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80257F8C  38 80 00 06 */	li r4, 6
/* 80257F90  7F C5 F3 78 */	mr r5, r30
/* 80257F94  38 C0 00 80 */	li r6, 0x80
/* 80257F98  4B DE 43 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80257F9C  90 7F 02 04 */	stw r3, 0x204(r31)
/* 80257FA0  38 60 01 68 */	li r3, 0x168
/* 80257FA4  48 07 6C A9 */	bl __nw__FUl
/* 80257FA8  7C 60 1B 79 */	or. r0, r3, r3
/* 80257FAC  41 82 00 24 */	beq lbl_80257FD0
/* 80257FB0  80 9F 02 00 */	lwz r4, 0x200(r31)
/* 80257FB4  38 A0 00 99 */	li r5, 0x99
/* 80257FB8  38 C0 01 35 */	li r6, 0x135
/* 80257FBC  38 E0 01 50 */	li r7, 0x150
/* 80257FC0  39 00 00 58 */	li r8, 0x58
/* 80257FC4  39 20 00 FF */	li r9, 0xff
/* 80257FC8  4B DF BA 39 */	bl __ct__10dDlst_2D_cFP7ResTIMGssssUc
/* 80257FCC  7C 60 1B 78 */	mr r0, r3
lbl_80257FD0:
/* 80257FD0  90 1F 01 F8 */	stw r0, 0x1f8(r31)
/* 80257FD4  39 61 00 30 */	addi r11, r1, 0x30
/* 80257FD8  48 10 A2 51 */	bl _restgpr_29
/* 80257FDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80257FE0  7C 08 03 A6 */	mtlr r0
/* 80257FE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80257FE8  4E 80 00 20 */	blr 
