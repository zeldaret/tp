lbl_801D5BD0:
/* 801D5BD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D5BD4  7C 08 02 A6 */	mflr r0
/* 801D5BD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D5BDC  39 61 00 30 */	addi r11, r1, 0x30
/* 801D5BE0  48 18 C5 E9 */	bl _savegpr_24
/* 801D5BE4  7C 7F 1B 78 */	mr r31, r3
/* 801D5BE8  3C A0 80 39 */	lis r5, cur_tag_3868@ha
/* 801D5BEC  3B C5 62 48 */	addi r30, r5, cur_tag_3868@l
/* 801D5BF0  3C A0 80 3A */	lis r5, __vt__12dDlst_base_c@ha
/* 801D5BF4  38 05 6F 88 */	addi r0, r5, __vt__12dDlst_base_c@l
/* 801D5BF8  90 03 00 00 */	stw r0, 0(r3)
/* 801D5BFC  3C A0 80 3C */	lis r5, __vt__17dMenu_Fmap2DTop_c@ha
/* 801D5C00  38 05 D7 50 */	addi r0, r5, __vt__17dMenu_Fmap2DTop_c@l
/* 801D5C04  90 03 00 00 */	stw r0, 0(r3)
/* 801D5C08  90 83 00 04 */	stw r4, 4(r3)
/* 801D5C0C  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D5C10  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 801D5C14  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 801D5C18  38 00 00 00 */	li r0, 0
/* 801D5C1C  90 03 00 70 */	stw r0, 0x70(r3)
/* 801D5C20  90 03 00 6C */	stw r0, 0x6c(r3)
/* 801D5C24  38 60 01 18 */	li r3, 0x118
/* 801D5C28  48 0F 90 25 */	bl __nw__FUl
/* 801D5C2C  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5C30  41 82 00 0C */	beq lbl_801D5C3C
/* 801D5C34  48 12 28 65 */	bl __ct__9J2DScreenFv
/* 801D5C38  7C 60 1B 78 */	mr r0, r3
lbl_801D5C3C:
/* 801D5C3C  90 1F 00 08 */	stw r0, 8(r31)
/* 801D5C40  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D5C44  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801D5C48  38 84 65 D0 */	addi r4, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801D5C4C  38 84 00 85 */	addi r4, r4, 0x85
/* 801D5C50  3C A0 01 02 */	lis r5, 0x102
/* 801D5C54  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 801D5C58  3B A6 61 C0 */	addi r29, r6, g_dComIfG_gameInfo@l
/* 801D5C5C  80 DD 5C BC */	lwz r6, 0x5cbc(r29)
/* 801D5C60  48 12 29 E9 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801D5C64  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D5C68  48 07 F4 81 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801D5C6C  38 60 00 2C */	li r3, 0x2c
/* 801D5C70  48 0F 8F DD */	bl __nw__FUl
/* 801D5C74  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5C78  41 82 00 24 */	beq lbl_801D5C9C
/* 801D5C7C  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5C80  3C A0 52 4F */	lis r5, 0x524F /* 0x524F4F54@ha */
/* 801D5C84  38 C5 4F 54 */	addi r6, r5, 0x4F54 /* 0x524F4F54@l */
/* 801D5C88  38 A0 00 00 */	li r5, 0
/* 801D5C8C  38 E0 00 02 */	li r7, 2
/* 801D5C90  39 00 00 00 */	li r8, 0
/* 801D5C94  48 07 FF D5 */	bl __ct__17CPaneMgrAlphaMorfFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5C98  7C 60 1B 78 */	mr r0, r3
lbl_801D5C9C:
/* 801D5C9C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801D5CA0  38 60 00 1C */	li r3, 0x1c
/* 801D5CA4  48 0F 8F A9 */	bl __nw__FUl
/* 801D5CA8  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5CAC  41 82 00 28 */	beq lbl_801D5CD4
/* 801D5CB0  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5CB4  3C A0 69 5F */	lis r5, 0x695F /* 0x695F3034@ha */
/* 801D5CB8  38 C5 30 34 */	addi r6, r5, 0x3034 /* 0x695F3034@l */
/* 801D5CBC  3C A0 00 79 */	lis r5, 0x0079 /* 0x0079616A@ha */
/* 801D5CC0  38 A5 61 6A */	addi r5, r5, 0x616A /* 0x0079616A@l */
/* 801D5CC4  38 E0 00 00 */	li r7, 0
/* 801D5CC8  39 00 00 00 */	li r8, 0
/* 801D5CCC  48 07 F7 31 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5CD0  7C 60 1B 78 */	mr r0, r3
lbl_801D5CD4:
/* 801D5CD4  90 1F 00 38 */	stw r0, 0x38(r31)
/* 801D5CD8  38 60 00 1C */	li r3, 0x1c
/* 801D5CDC  48 0F 8F 71 */	bl __nw__FUl
/* 801D5CE0  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5CE4  41 82 00 28 */	beq lbl_801D5D0C
/* 801D5CE8  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5CEC  3C A0 69 5F */	lis r5, 0x695F /* 0x695F3035@ha */
/* 801D5CF0  38 C5 30 35 */	addi r6, r5, 0x3035 /* 0x695F3035@l */
/* 801D5CF4  3C A0 00 79 */	lis r5, 0x0079 /* 0x0079616A@ha */
/* 801D5CF8  38 A5 61 6A */	addi r5, r5, 0x616A /* 0x0079616A@l */
/* 801D5CFC  38 E0 00 00 */	li r7, 0
/* 801D5D00  39 00 00 00 */	li r8, 0
/* 801D5D04  48 07 F6 F9 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5D08  7C 60 1B 78 */	mr r0, r3
lbl_801D5D0C:
/* 801D5D0C  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 801D5D10  38 60 00 1C */	li r3, 0x1c
/* 801D5D14  48 0F 8F 39 */	bl __nw__FUl
/* 801D5D18  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5D1C  41 82 00 28 */	beq lbl_801D5D44
/* 801D5D20  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5D24  3C A0 69 5F */	lis r5, 0x695F /* 0x695F3036@ha */
/* 801D5D28  38 C5 30 36 */	addi r6, r5, 0x3036 /* 0x695F3036@l */
/* 801D5D2C  3C A0 00 79 */	lis r5, 0x0079 /* 0x0079616A@ha */
/* 801D5D30  38 A5 61 6A */	addi r5, r5, 0x616A /* 0x0079616A@l */
/* 801D5D34  38 E0 00 00 */	li r7, 0
/* 801D5D38  39 00 00 00 */	li r8, 0
/* 801D5D3C  48 07 F6 C1 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5D40  7C 60 1B 78 */	mr r0, r3
lbl_801D5D44:
/* 801D5D44  90 1F 00 40 */	stw r0, 0x40(r31)
/* 801D5D48  38 60 00 1C */	li r3, 0x1c
/* 801D5D4C  48 0F 8F 01 */	bl __nw__FUl
/* 801D5D50  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5D54  41 82 00 28 */	beq lbl_801D5D7C
/* 801D5D58  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5D5C  3C A0 69 5F */	lis r5, 0x695F /* 0x695F3037@ha */
/* 801D5D60  38 C5 30 37 */	addi r6, r5, 0x3037 /* 0x695F3037@l */
/* 801D5D64  3C A0 00 79 */	lis r5, 0x0079 /* 0x0079616A@ha */
/* 801D5D68  38 A5 61 6A */	addi r5, r5, 0x616A /* 0x0079616A@l */
/* 801D5D6C  38 E0 00 00 */	li r7, 0
/* 801D5D70  39 00 00 00 */	li r8, 0
/* 801D5D74  48 07 F6 89 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5D78  7C 60 1B 78 */	mr r0, r3
lbl_801D5D7C:
/* 801D5D7C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 801D5D80  38 60 00 1C */	li r3, 0x1c
/* 801D5D84  48 0F 8E C9 */	bl __nw__FUl
/* 801D5D88  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5D8C  41 82 00 28 */	beq lbl_801D5DB4
/* 801D5D90  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5D94  3C A0 5F 63 */	lis r5, 0x5F63 /* 0x5F635F6E@ha */
/* 801D5D98  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F635F6E@l */
/* 801D5D9C  3C A0 6A 75 */	lis r5, 0x6A75 /* 0x6A756A69@ha */
/* 801D5DA0  38 A5 6A 69 */	addi r5, r5, 0x6A69 /* 0x6A756A69@l */
/* 801D5DA4  38 E0 00 02 */	li r7, 2
/* 801D5DA8  39 00 00 00 */	li r8, 0
/* 801D5DAC  48 07 F6 51 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5DB0  7C 60 1B 78 */	mr r0, r3
lbl_801D5DB4:
/* 801D5DB4  90 1F 00 34 */	stw r0, 0x34(r31)
/* 801D5DB8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801D5DBC  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D5DC0  48 07 FA 11 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D5DC4  38 60 00 1C */	li r3, 0x1c
/* 801D5DC8  48 0F 8E 85 */	bl __nw__FUl
/* 801D5DCC  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5DD0  41 82 00 24 */	beq lbl_801D5DF4
/* 801D5DD4  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5DD8  3C A0 61 73 */	lis r5, 0x6173 /* 0x61735F6E@ha */
/* 801D5DDC  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x61735F6E@l */
/* 801D5DE0  38 A0 00 00 */	li r5, 0
/* 801D5DE4  38 E0 00 02 */	li r7, 2
/* 801D5DE8  39 00 00 00 */	li r8, 0
/* 801D5DEC  48 07 F6 11 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5DF0  7C 60 1B 78 */	mr r0, r3
lbl_801D5DF4:
/* 801D5DF4  90 1F 00 30 */	stw r0, 0x30(r31)
/* 801D5DF8  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801D5DFC  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D5E00  48 07 F9 D1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D5E04  38 60 00 6C */	li r3, 0x6c
/* 801D5E08  48 0F 8E 45 */	bl __nw__FUl
/* 801D5E0C  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5E10  41 82 00 24 */	beq lbl_801D5E34
/* 801D5E14  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5E18  3C A0 61 73 */	lis r5, 0x6173 /* 0x61735F6E@ha */
/* 801D5E1C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x61735F6E@l */
/* 801D5E20  38 A0 00 00 */	li r5, 0
/* 801D5E24  38 E0 00 00 */	li r7, 0
/* 801D5E28  39 00 00 00 */	li r8, 0
/* 801D5E2C  48 07 DB 59 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5E30  7C 60 1B 78 */	mr r0, r3
lbl_801D5E34:
/* 801D5E34  90 1F 00 58 */	stw r0, 0x58(r31)
/* 801D5E38  38 60 00 6C */	li r3, 0x6c
/* 801D5E3C  48 0F 8E 11 */	bl __nw__FUl
/* 801D5E40  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5E44  41 82 00 28 */	beq lbl_801D5E6C
/* 801D5E48  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5E4C  3C A0 5F 63 */	lis r5, 0x5F63 /* 0x5F635F6E@ha */
/* 801D5E50  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F635F6E@l */
/* 801D5E54  3C A0 6A 75 */	lis r5, 0x6A75 /* 0x6A756A69@ha */
/* 801D5E58  38 A5 6A 69 */	addi r5, r5, 0x6A69 /* 0x6A756A69@l */
/* 801D5E5C  38 E0 00 00 */	li r7, 0
/* 801D5E60  39 00 00 00 */	li r8, 0
/* 801D5E64  48 07 DB 21 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5E68  7C 60 1B 78 */	mr r0, r3
lbl_801D5E6C:
/* 801D5E6C  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 801D5E70  38 60 00 6C */	li r3, 0x6c
/* 801D5E74  48 0F 8D D9 */	bl __nw__FUl
/* 801D5E78  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5E7C  41 82 00 28 */	beq lbl_801D5EA4
/* 801D5E80  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5E84  3C A0 6E 5F */	lis r5, 0x6E5F /* 0x6E5F6E31@ha */
/* 801D5E88  38 C5 6E 31 */	addi r6, r5, 0x6E31 /* 0x6E5F6E31@l */
/* 801D5E8C  3C A0 00 61 */	lis r5, 0x0061 /* 0x00616274@ha */
/* 801D5E90  38 A5 62 74 */	addi r5, r5, 0x6274 /* 0x00616274@l */
/* 801D5E94  38 E0 00 02 */	li r7, 2
/* 801D5E98  39 00 00 00 */	li r8, 0
/* 801D5E9C  48 07 DA E9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5EA0  7C 60 1B 78 */	mr r0, r3
lbl_801D5EA4:
/* 801D5EA4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801D5EA8  38 60 00 6C */	li r3, 0x6c
/* 801D5EAC  48 0F 8D A1 */	bl __nw__FUl
/* 801D5EB0  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5EB4  41 82 00 28 */	beq lbl_801D5EDC
/* 801D5EB8  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5EBC  3C A0 6E 5F */	lis r5, 0x6E5F /* 0x6E5F6E31@ha */
/* 801D5EC0  38 C5 6E 31 */	addi r6, r5, 0x6E31 /* 0x6E5F6E31@l */
/* 801D5EC4  3C A0 00 62 */	lis r5, 0x0062 /* 0x00626274@ha */
/* 801D5EC8  38 A5 62 74 */	addi r5, r5, 0x6274 /* 0x00626274@l */
/* 801D5ECC  38 E0 00 02 */	li r7, 2
/* 801D5ED0  39 00 00 00 */	li r8, 0
/* 801D5ED4  48 07 DA B1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5ED8  7C 60 1B 78 */	mr r0, r3
lbl_801D5EDC:
/* 801D5EDC  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801D5EE0  38 60 00 6C */	li r3, 0x6c
/* 801D5EE4  48 0F 8D 69 */	bl __nw__FUl
/* 801D5EE8  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5EEC  41 82 00 28 */	beq lbl_801D5F14
/* 801D5EF0  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5EF4  3C A0 6E 5F */	lis r5, 0x6E5F /* 0x6E5F6E31@ha */
/* 801D5EF8  38 C5 6E 31 */	addi r6, r5, 0x6E31 /* 0x6E5F6E31@l */
/* 801D5EFC  3C A0 00 7A */	lis r5, 0x007A /* 0x007A6274@ha */
/* 801D5F00  38 A5 62 74 */	addi r5, r5, 0x6274 /* 0x007A6274@l */
/* 801D5F04  38 E0 00 02 */	li r7, 2
/* 801D5F08  39 00 00 00 */	li r8, 0
/* 801D5F0C  48 07 DA 79 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5F10  7C 60 1B 78 */	mr r0, r3
lbl_801D5F14:
/* 801D5F14  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801D5F18  38 60 00 6C */	li r3, 0x6c
/* 801D5F1C  48 0F 8D 31 */	bl __nw__FUl
/* 801D5F20  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5F24  41 82 00 28 */	beq lbl_801D5F4C
/* 801D5F28  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5F2C  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 801D5F30  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 801D5F34  3C A0 61 5F */	lis r5, 0x615F /* 0x615F7465@ha */
/* 801D5F38  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x615F7465@l */
/* 801D5F3C  38 E0 00 02 */	li r7, 2
/* 801D5F40  39 00 00 00 */	li r8, 0
/* 801D5F44  48 07 DA 41 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5F48  7C 60 1B 78 */	mr r0, r3
lbl_801D5F4C:
/* 801D5F4C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801D5F50  38 60 00 6C */	li r3, 0x6c
/* 801D5F54  48 0F 8C F9 */	bl __nw__FUl
/* 801D5F58  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5F5C  41 82 00 28 */	beq lbl_801D5F84
/* 801D5F60  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5F64  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 801D5F68  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 801D5F6C  3C A0 62 5F */	lis r5, 0x625F /* 0x625F7465@ha */
/* 801D5F70  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x625F7465@l */
/* 801D5F74  38 E0 00 02 */	li r7, 2
/* 801D5F78  39 00 00 00 */	li r8, 0
/* 801D5F7C  48 07 DA 09 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5F80  7C 60 1B 78 */	mr r0, r3
lbl_801D5F84:
/* 801D5F84  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801D5F88  38 60 00 6C */	li r3, 0x6c
/* 801D5F8C  48 0F 8C C1 */	bl __nw__FUl
/* 801D5F90  7C 60 1B 79 */	or. r0, r3, r3
/* 801D5F94  41 82 00 28 */	beq lbl_801D5FBC
/* 801D5F98  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D5F9C  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 801D5FA0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 801D5FA4  3C A0 7A 5F */	lis r5, 0x7A5F /* 0x7A5F7465@ha */
/* 801D5FA8  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x7A5F7465@l */
/* 801D5FAC  38 E0 00 02 */	li r7, 2
/* 801D5FB0  39 00 00 00 */	li r8, 0
/* 801D5FB4  48 07 D9 D1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D5FB8  7C 60 1B 78 */	mr r0, r3
lbl_801D5FBC:
/* 801D5FBC  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 801D5FC0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D5FC4  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D5FC8  48 07 F8 09 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D5FCC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D5FD0  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D5FD4  48 07 F7 FD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D5FD8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801D5FDC  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D5FE0  48 07 F7 F1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D5FE4  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801D5FE8  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D5FEC  48 07 F7 E5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D5FF0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801D5FF4  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D5FF8  48 07 F7 D9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D5FFC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801D6000  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D6004  48 07 F7 CD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D6008  38 60 00 6C */	li r3, 0x6c
/* 801D600C  48 0F 8C 41 */	bl __nw__FUl
/* 801D6010  7C 60 1B 79 */	or. r0, r3, r3
/* 801D6014  41 82 00 24 */	beq lbl_801D6038
/* 801D6018  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D601C  3C A0 6D 65 */	lis r5, 0x6D65 /* 0x6D655F6E@ha */
/* 801D6020  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6D655F6E@l */
/* 801D6024  38 A0 6E 61 */	li r5, 0x6e61
/* 801D6028  38 E0 00 00 */	li r7, 0
/* 801D602C  39 00 00 00 */	li r8, 0
/* 801D6030  48 07 D9 55 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D6034  7C 60 1B 78 */	mr r0, r3
lbl_801D6038:
/* 801D6038  90 1F 00 50 */	stw r0, 0x50(r31)
/* 801D603C  38 60 00 6C */	li r3, 0x6c
/* 801D6040  48 0F 8C 0D */	bl __nw__FUl
/* 801D6044  7C 60 1B 79 */	or. r0, r3, r3
/* 801D6048  41 82 00 28 */	beq lbl_801D6070
/* 801D604C  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D6050  3C A0 5F 6E */	lis r5, 0x5F6E /* 0x5F6E5F6E@ha */
/* 801D6054  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F6E5F6E@l */
/* 801D6058  3C A0 00 73 */	lis r5, 0x0073 /* 0x00737562@ha */
/* 801D605C  38 A5 75 62 */	addi r5, r5, 0x7562 /* 0x00737562@l */
/* 801D6060  38 E0 00 00 */	li r7, 0
/* 801D6064  39 00 00 00 */	li r8, 0
/* 801D6068  48 07 D9 1D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D606C  7C 60 1B 78 */	mr r0, r3
lbl_801D6070:
/* 801D6070  90 1F 00 54 */	stw r0, 0x54(r31)
/* 801D6074  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 801D6078  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 801D607C  88 04 00 BF */	lbz r0, 0xbf(r4)
/* 801D6080  28 00 00 09 */	cmplwi r0, 9
/* 801D6084  40 82 00 14 */	bne lbl_801D6098
/* 801D6088  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 801D608C  48 07 F5 7D */	bl hide__13CPaneMgrAlphaFv
/* 801D6090  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 801D6094  48 07 F5 75 */	bl hide__13CPaneMgrAlphaFv
lbl_801D6098:
/* 801D6098  38 60 00 6C */	li r3, 0x6c
/* 801D609C  48 0F 8B B1 */	bl __nw__FUl
/* 801D60A0  7C 60 1B 79 */	or. r0, r3, r3
/* 801D60A4  41 82 00 24 */	beq lbl_801D60C8
/* 801D60A8  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D60AC  3C A0 6E 74 */	lis r5, 0x6E74 /* 0x6E745F6E@ha */
/* 801D60B0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6E745F6E@l */
/* 801D60B4  38 A0 63 6F */	li r5, 0x636f
/* 801D60B8  38 E0 00 00 */	li r7, 0
/* 801D60BC  39 00 00 00 */	li r8, 0
/* 801D60C0  48 07 D8 C5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D60C4  7C 60 1B 78 */	mr r0, r3
lbl_801D60C8:
/* 801D60C8  90 1F 00 60 */	stw r0, 0x60(r31)
/* 801D60CC  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D60D0  D0 3F 00 88 */	stfs f1, 0x88(r31)
/* 801D60D4  D0 3F 00 84 */	stfs f1, 0x84(r31)
/* 801D60D8  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801D60DC  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 801D60E0  D0 3F 00 94 */	stfs f1, 0x94(r31)
/* 801D60E4  D0 3F 00 90 */	stfs f1, 0x90(r31)
/* 801D60E8  D0 1F 00 98 */	stfs f0, 0x98(r31)
/* 801D60EC  D0 3F 00 A0 */	stfs f1, 0xa0(r31)
/* 801D60F0  D0 3F 00 9C */	stfs f1, 0x9c(r31)
/* 801D60F4  D0 1F 00 A4 */	stfs f0, 0xa4(r31)
/* 801D60F8  D0 3F 00 AC */	stfs f1, 0xac(r31)
/* 801D60FC  D0 3F 00 A8 */	stfs f1, 0xa8(r31)
/* 801D6100  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 801D6104  D0 3F 00 B8 */	stfs f1, 0xb8(r31)
/* 801D6108  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
/* 801D610C  D0 1F 00 BC */	stfs f0, 0xbc(r31)
/* 801D6110  38 60 00 04 */	li r3, 4
/* 801D6114  64 63 00 04 */	oris r3, r3, 4
/* 801D6118  7C 72 E3 A6 */	mtspr 0x392, r3
/* 801D611C  38 60 00 05 */	li r3, 5
/* 801D6120  64 63 00 05 */	oris r3, r3, 5
/* 801D6124  7C 73 E3 A6 */	mtspr 0x393, r3
/* 801D6128  38 60 00 06 */	li r3, 6
/* 801D612C  64 63 00 06 */	oris r3, r3, 6
/* 801D6130  7C 74 E3 A6 */	mtspr 0x394, r3
/* 801D6134  38 60 00 07 */	li r3, 7
/* 801D6138  64 63 00 07 */	oris r3, r3, 7
/* 801D613C  7C 75 E3 A6 */	mtspr 0x395, r3
/* 801D6140  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801D6144  38 84 65 D0 */	addi r4, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801D6148  38 64 00 A0 */	addi r3, r4, 0xa0
/* 801D614C  80 9D 5C BC */	lwz r4, 0x5cbc(r29)
/* 801D6150  48 0F E1 21 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 801D6154  48 13 29 19 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801D6158  90 7F 00 10 */	stw r3, 0x10(r31)
/* 801D615C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801D6160  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D6164  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6168  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801D616C  7D 89 03 A6 */	mtctr r12
/* 801D6170  4E 80 04 21 */	bctrl 
/* 801D6174  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D6178  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 801D617C  3B 00 00 00 */	li r24, 0
/* 801D6180  3B A0 00 00 */	li r29, 0
/* 801D6184  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801D6188  3B 64 65 D0 */	addi r27, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801D618C  3B 5E 00 40 */	addi r26, r30, 0x40
lbl_801D6190:
/* 801D6190  4B E3 E9 75 */	bl mDoExt_getRubyFont__Fv
/* 801D6194  7C 7C 1B 78 */	mr r28, r3
/* 801D6198  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D619C  3B 3E 00 58 */	addi r25, r30, 0x58
/* 801D61A0  7F 39 EA 14 */	add r25, r25, r29
/* 801D61A4  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D61A8  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D61AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D61B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D61B4  7D 89 03 A6 */	mtctr r12
/* 801D61B8  4E 80 04 21 */	bctrl 
/* 801D61BC  7F 84 E3 78 */	mr r4, r28
/* 801D61C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801D61C4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D61C8  7D 89 03 A6 */	mtctr r12
/* 801D61CC  4E 80 04 21 */	bctrl 
/* 801D61D0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D61D4  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D61D8  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D61DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D61E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D61E4  7D 89 03 A6 */	mtctr r12
/* 801D61E8  4E 80 04 21 */	bctrl 
/* 801D61EC  38 80 00 40 */	li r4, 0x40
/* 801D61F0  38 BB 00 BB */	addi r5, r27, 0xbb
/* 801D61F4  4C C6 31 82 */	crclr 6
/* 801D61F8  48 12 A5 55 */	bl setString__10J2DTextBoxFsPCce
/* 801D61FC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D6200  7C DA EA 14 */	add r6, r26, r29
/* 801D6204  80 A6 00 00 */	lwz r5, 0(r6)
/* 801D6208  80 C6 00 04 */	lwz r6, 4(r6)
/* 801D620C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6210  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6214  7D 89 03 A6 */	mtctr r12
/* 801D6218  4E 80 04 21 */	bctrl 
/* 801D621C  38 00 00 00 */	li r0, 0
/* 801D6220  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D6224  3B 18 00 01 */	addi r24, r24, 1
/* 801D6228  2C 18 00 03 */	cmpwi r24, 3
/* 801D622C  3B BD 00 08 */	addi r29, r29, 8
/* 801D6230  41 80 FF 60 */	blt lbl_801D6190
/* 801D6234  3B 00 00 00 */	li r24, 0
/* 801D6238  3B A0 00 00 */	li r29, 0
/* 801D623C  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801D6240  3B 64 65 D0 */	addi r27, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801D6244  3B 5E 00 70 */	addi r26, r30, 0x70
lbl_801D6248:
/* 801D6248  4B E3 E8 BD */	bl mDoExt_getRubyFont__Fv
/* 801D624C  7C 7C 1B 78 */	mr r28, r3
/* 801D6250  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D6254  3B 3E 00 A8 */	addi r25, r30, 0xa8
/* 801D6258  7F 39 EA 14 */	add r25, r25, r29
/* 801D625C  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D6260  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D6264  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6268  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D626C  7D 89 03 A6 */	mtctr r12
/* 801D6270  4E 80 04 21 */	bctrl 
/* 801D6274  7F 84 E3 78 */	mr r4, r28
/* 801D6278  81 83 00 00 */	lwz r12, 0(r3)
/* 801D627C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D6280  7D 89 03 A6 */	mtctr r12
/* 801D6284  4E 80 04 21 */	bctrl 
/* 801D6288  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D628C  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D6290  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D6294  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6298  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D629C  7D 89 03 A6 */	mtctr r12
/* 801D62A0  4E 80 04 21 */	bctrl 
/* 801D62A4  38 80 00 40 */	li r4, 0x40
/* 801D62A8  38 BB 00 BB */	addi r5, r27, 0xbb
/* 801D62AC  4C C6 31 82 */	crclr 6
/* 801D62B0  48 12 A4 9D */	bl setString__10J2DTextBoxFsPCce
/* 801D62B4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D62B8  7C DA EA 14 */	add r6, r26, r29
/* 801D62BC  80 A6 00 00 */	lwz r5, 0(r6)
/* 801D62C0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801D62C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801D62C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D62CC  7D 89 03 A6 */	mtctr r12
/* 801D62D0  4E 80 04 21 */	bctrl 
/* 801D62D4  38 00 00 00 */	li r0, 0
/* 801D62D8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D62DC  3B 18 00 01 */	addi r24, r24, 1
/* 801D62E0  2C 18 00 07 */	cmpwi r24, 7
/* 801D62E4  3B BD 00 08 */	addi r29, r29, 8
/* 801D62E8  41 80 FF 60 */	blt lbl_801D6248
/* 801D62EC  7F E3 FB 78 */	mr r3, r31
/* 801D62F0  38 80 03 E0 */	li r4, 0x3e0
/* 801D62F4  48 00 0C 45 */	bl setTitleNameString__17dMenu_Fmap2DTop_cFUl
/* 801D62F8  3B 00 00 00 */	li r24, 0
/* 801D62FC  3B A0 00 00 */	li r29, 0
/* 801D6300  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801D6304  3B 64 65 D0 */	addi r27, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801D6308  3B 5E 00 E0 */	addi r26, r30, 0xe0
lbl_801D630C:
/* 801D630C  4B E3 E6 E5 */	bl mDoExt_getMesgFont__Fv
/* 801D6310  7C 7C 1B 78 */	mr r28, r3
/* 801D6314  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D6318  3B 3E 01 08 */	addi r25, r30, 0x108
/* 801D631C  7F 39 EA 14 */	add r25, r25, r29
/* 801D6320  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D6324  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D6328  81 83 00 00 */	lwz r12, 0(r3)
/* 801D632C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6330  7D 89 03 A6 */	mtctr r12
/* 801D6334  4E 80 04 21 */	bctrl 
/* 801D6338  7F 84 E3 78 */	mr r4, r28
/* 801D633C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6340  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D6344  7D 89 03 A6 */	mtctr r12
/* 801D6348  4E 80 04 21 */	bctrl 
/* 801D634C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D6350  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D6354  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D6358  81 83 00 00 */	lwz r12, 0(r3)
/* 801D635C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6360  7D 89 03 A6 */	mtctr r12
/* 801D6364  4E 80 04 21 */	bctrl 
/* 801D6368  38 80 00 20 */	li r4, 0x20
/* 801D636C  38 BB 00 BB */	addi r5, r27, 0xbb
/* 801D6370  4C C6 31 82 */	crclr 6
/* 801D6374  48 12 A3 D9 */	bl setString__10J2DTextBoxFsPCce
/* 801D6378  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D637C  7C DA EA 14 */	add r6, r26, r29
/* 801D6380  80 A6 00 00 */	lwz r5, 0(r6)
/* 801D6384  80 C6 00 04 */	lwz r6, 4(r6)
/* 801D6388  81 83 00 00 */	lwz r12, 0(r3)
/* 801D638C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6390  7D 89 03 A6 */	mtctr r12
/* 801D6394  4E 80 04 21 */	bctrl 
/* 801D6398  38 00 00 00 */	li r0, 0
/* 801D639C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D63A0  3B 18 00 01 */	addi r24, r24, 1
/* 801D63A4  2C 18 00 05 */	cmpwi r24, 5
/* 801D63A8  3B BD 00 08 */	addi r29, r29, 8
/* 801D63AC  41 80 FF 60 */	blt lbl_801D630C
/* 801D63B0  7F E3 FB 78 */	mr r3, r31
/* 801D63B4  38 80 05 29 */	li r4, 0x529
/* 801D63B8  38 A0 00 FF */	li r5, 0xff
/* 801D63BC  48 00 0D 2D */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801D63C0  3B 00 00 00 */	li r24, 0
/* 801D63C4  3B A0 00 00 */	li r29, 0
/* 801D63C8  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801D63CC  3B 64 65 D0 */	addi r27, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801D63D0  3B 5E 01 30 */	addi r26, r30, 0x130
lbl_801D63D4:
/* 801D63D4  4B E3 E6 1D */	bl mDoExt_getMesgFont__Fv
/* 801D63D8  7C 7C 1B 78 */	mr r28, r3
/* 801D63DC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D63E0  3B 3E 01 58 */	addi r25, r30, 0x158
/* 801D63E4  7F 39 EA 14 */	add r25, r25, r29
/* 801D63E8  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D63EC  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D63F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801D63F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D63F8  7D 89 03 A6 */	mtctr r12
/* 801D63FC  4E 80 04 21 */	bctrl 
/* 801D6400  7F 84 E3 78 */	mr r4, r28
/* 801D6404  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6408  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D640C  7D 89 03 A6 */	mtctr r12
/* 801D6410  4E 80 04 21 */	bctrl 
/* 801D6414  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D6418  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D641C  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D6420  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6424  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6428  7D 89 03 A6 */	mtctr r12
/* 801D642C  4E 80 04 21 */	bctrl 
/* 801D6430  38 80 00 20 */	li r4, 0x20
/* 801D6434  38 BB 00 BB */	addi r5, r27, 0xbb
/* 801D6438  4C C6 31 82 */	crclr 6
/* 801D643C  48 12 A3 11 */	bl setString__10J2DTextBoxFsPCce
/* 801D6440  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D6444  7C DA EA 14 */	add r6, r26, r29
/* 801D6448  80 A6 00 00 */	lwz r5, 0(r6)
/* 801D644C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801D6450  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6454  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6458  7D 89 03 A6 */	mtctr r12
/* 801D645C  4E 80 04 21 */	bctrl 
/* 801D6460  38 00 00 00 */	li r0, 0
/* 801D6464  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D6468  3B 18 00 01 */	addi r24, r24, 1
/* 801D646C  2C 18 00 05 */	cmpwi r24, 5
/* 801D6470  3B BD 00 08 */	addi r29, r29, 8
/* 801D6474  41 80 FF 60 */	blt lbl_801D63D4
/* 801D6478  7F E3 FB 78 */	mr r3, r31
/* 801D647C  38 80 05 22 */	li r4, 0x522
/* 801D6480  38 A0 00 FF */	li r5, 0xff
/* 801D6484  48 00 0D 8D */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801D6488  3B 00 00 00 */	li r24, 0
/* 801D648C  3B A0 00 00 */	li r29, 0
/* 801D6490  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801D6494  3B 64 65 D0 */	addi r27, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801D6498  3B 5E 01 80 */	addi r26, r30, 0x180
lbl_801D649C:
/* 801D649C  4B E3 E5 55 */	bl mDoExt_getMesgFont__Fv
/* 801D64A0  7C 7C 1B 78 */	mr r28, r3
/* 801D64A4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D64A8  3B 3E 01 A8 */	addi r25, r30, 0x1a8
/* 801D64AC  7F 39 EA 14 */	add r25, r25, r29
/* 801D64B0  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D64B4  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D64B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D64BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D64C0  7D 89 03 A6 */	mtctr r12
/* 801D64C4  4E 80 04 21 */	bctrl 
/* 801D64C8  7F 84 E3 78 */	mr r4, r28
/* 801D64CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D64D0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D64D4  7D 89 03 A6 */	mtctr r12
/* 801D64D8  4E 80 04 21 */	bctrl 
/* 801D64DC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D64E0  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D64E4  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D64E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D64EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D64F0  7D 89 03 A6 */	mtctr r12
/* 801D64F4  4E 80 04 21 */	bctrl 
/* 801D64F8  38 80 00 20 */	li r4, 0x20
/* 801D64FC  38 BB 00 BB */	addi r5, r27, 0xbb
/* 801D6500  4C C6 31 82 */	crclr 6
/* 801D6504  48 12 A2 49 */	bl setString__10J2DTextBoxFsPCce
/* 801D6508  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D650C  7C DA EA 14 */	add r6, r26, r29
/* 801D6510  80 A6 00 00 */	lwz r5, 0(r6)
/* 801D6514  80 C6 00 04 */	lwz r6, 4(r6)
/* 801D6518  81 83 00 00 */	lwz r12, 0(r3)
/* 801D651C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6520  7D 89 03 A6 */	mtctr r12
/* 801D6524  4E 80 04 21 */	bctrl 
/* 801D6528  38 00 00 00 */	li r0, 0
/* 801D652C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D6530  3B 18 00 01 */	addi r24, r24, 1
/* 801D6534  2C 18 00 05 */	cmpwi r24, 5
/* 801D6538  3B BD 00 08 */	addi r29, r29, 8
/* 801D653C  41 80 FF 60 */	blt lbl_801D649C
/* 801D6540  7F E3 FB 78 */	mr r3, r31
/* 801D6544  38 80 05 27 */	li r4, 0x527
/* 801D6548  38 A0 00 FF */	li r5, 0xff
/* 801D654C  48 00 0D 89 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801D6550  3B 00 00 00 */	li r24, 0
/* 801D6554  3B A0 00 00 */	li r29, 0
/* 801D6558  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801D655C  3B 64 65 D0 */	addi r27, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801D6560  3B 5E 01 D0 */	addi r26, r30, 0x1d0
lbl_801D6564:
/* 801D6564  4B E3 E4 8D */	bl mDoExt_getMesgFont__Fv
/* 801D6568  7C 7C 1B 78 */	mr r28, r3
/* 801D656C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D6570  3B 3E 01 F8 */	addi r25, r30, 0x1f8
/* 801D6574  7F 39 EA 14 */	add r25, r25, r29
/* 801D6578  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D657C  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D6580  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6584  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6588  7D 89 03 A6 */	mtctr r12
/* 801D658C  4E 80 04 21 */	bctrl 
/* 801D6590  7F 84 E3 78 */	mr r4, r28
/* 801D6594  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6598  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D659C  7D 89 03 A6 */	mtctr r12
/* 801D65A0  4E 80 04 21 */	bctrl 
/* 801D65A4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D65A8  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D65AC  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D65B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801D65B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D65B8  7D 89 03 A6 */	mtctr r12
/* 801D65BC  4E 80 04 21 */	bctrl 
/* 801D65C0  38 80 00 20 */	li r4, 0x20
/* 801D65C4  38 BB 00 BB */	addi r5, r27, 0xbb
/* 801D65C8  4C C6 31 82 */	crclr 6
/* 801D65CC  48 12 A1 81 */	bl setString__10J2DTextBoxFsPCce
/* 801D65D0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D65D4  7C DA EA 14 */	add r6, r26, r29
/* 801D65D8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801D65DC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801D65E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801D65E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D65E8  7D 89 03 A6 */	mtctr r12
/* 801D65EC  4E 80 04 21 */	bctrl 
/* 801D65F0  38 00 00 00 */	li r0, 0
/* 801D65F4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D65F8  3B 18 00 01 */	addi r24, r24, 1
/* 801D65FC  2C 18 00 05 */	cmpwi r24, 5
/* 801D6600  3B BD 00 08 */	addi r29, r29, 8
/* 801D6604  41 80 FF 60 */	blt lbl_801D6564
/* 801D6608  7F E3 FB 78 */	mr r3, r31
/* 801D660C  38 80 03 F9 */	li r4, 0x3f9
/* 801D6610  48 00 0D 89 */	bl setCrossLRString__17dMenu_Fmap2DTop_cFUl
/* 801D6614  3B 00 00 00 */	li r24, 0
/* 801D6618  3B A0 00 00 */	li r29, 0
/* 801D661C  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801D6620  3B 64 65 D0 */	addi r27, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801D6624  3B 9E 02 20 */	addi r28, r30, 0x220
lbl_801D6628:
/* 801D6628  4B E3 E3 C9 */	bl mDoExt_getMesgFont__Fv
/* 801D662C  7C 7A 1B 78 */	mr r26, r3
/* 801D6630  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D6634  3B 3E 02 48 */	addi r25, r30, 0x248
/* 801D6638  7F 39 EA 14 */	add r25, r25, r29
/* 801D663C  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D6640  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D6644  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6648  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D664C  7D 89 03 A6 */	mtctr r12
/* 801D6650  4E 80 04 21 */	bctrl 
/* 801D6654  7F 44 D3 78 */	mr r4, r26
/* 801D6658  81 83 00 00 */	lwz r12, 0(r3)
/* 801D665C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D6660  7D 89 03 A6 */	mtctr r12
/* 801D6664  4E 80 04 21 */	bctrl 
/* 801D6668  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D666C  80 B9 00 00 */	lwz r5, 0(r25)
/* 801D6670  80 D9 00 04 */	lwz r6, 4(r25)
/* 801D6674  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6678  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D667C  7D 89 03 A6 */	mtctr r12
/* 801D6680  4E 80 04 21 */	bctrl 
/* 801D6684  38 80 00 20 */	li r4, 0x20
/* 801D6688  38 BB 00 BB */	addi r5, r27, 0xbb
/* 801D668C  4C C6 31 82 */	crclr 6
/* 801D6690  48 12 A0 BD */	bl setString__10J2DTextBoxFsPCce
/* 801D6694  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D6698  7C DC EA 14 */	add r6, r28, r29
/* 801D669C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801D66A0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801D66A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801D66A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D66AC  7D 89 03 A6 */	mtctr r12
/* 801D66B0  4E 80 04 21 */	bctrl 
/* 801D66B4  38 00 00 00 */	li r0, 0
/* 801D66B8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D66BC  3B 18 00 01 */	addi r24, r24, 1
/* 801D66C0  2C 18 00 05 */	cmpwi r24, 5
/* 801D66C4  3B BD 00 08 */	addi r29, r29, 8
/* 801D66C8  41 80 FF 60 */	blt lbl_801D6628
/* 801D66CC  7F E3 FB 78 */	mr r3, r31
/* 801D66D0  38 80 05 24 */	li r4, 0x524
/* 801D66D4  48 00 0E 19 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801D66D8  7F E3 FB 78 */	mr r3, r31
/* 801D66DC  38 80 00 01 */	li r4, 1
/* 801D66E0  48 00 14 ED */	bl setHIO__17dMenu_Fmap2DTop_cFb
/* 801D66E4  7F E3 FB 78 */	mr r3, r31
/* 801D66E8  39 61 00 30 */	addi r11, r1, 0x30
/* 801D66EC  48 18 BB 29 */	bl _restgpr_24
/* 801D66F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D66F4  7C 08 03 A6 */	mtlr r0
/* 801D66F8  38 21 00 30 */	addi r1, r1, 0x30
/* 801D66FC  4E 80 00 20 */	blr 
