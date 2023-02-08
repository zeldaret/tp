lbl_8077FE38:
/* 8077FE38  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8077FE3C  7C 08 02 A6 */	mflr r0
/* 8077FE40  90 01 00 54 */	stw r0, 0x54(r1)
/* 8077FE44  39 61 00 50 */	addi r11, r1, 0x50
/* 8077FE48  4B BE 23 7D */	bl _savegpr_23
/* 8077FE4C  7C 7F 1B 78 */	mr r31, r3
/* 8077FE50  3C 80 80 78 */	lis r4, lit_1109@ha /* 0x80781340@ha */
/* 8077FE54  3B A4 13 40 */	addi r29, r4, lit_1109@l /* 0x80781340@l */
/* 8077FE58  3C 80 80 78 */	lis r4, lit_3903@ha /* 0x80780DC4@ha */
/* 8077FE5C  3B C4 0D C4 */	addi r30, r4, lit_3903@l /* 0x80780DC4@l */
/* 8077FE60  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8077FE64  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8077FE68  40 82 01 48 */	bne lbl_8077FFB0
/* 8077FE6C  7F E0 FB 79 */	or. r0, r31, r31
/* 8077FE70  41 82 01 34 */	beq lbl_8077FFA4
/* 8077FE74  7C 1B 03 78 */	mr r27, r0
/* 8077FE78  4B 89 8C ED */	bl __ct__10fopAc_ac_cFv
/* 8077FE7C  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 8077FE80  4B B4 10 E5 */	bl __ct__15Z2CreatureEnemyFv
/* 8077FE84  38 7B 06 84 */	addi r3, r27, 0x684
/* 8077FE88  4B 8B 5E 05 */	bl __ct__9dJntCol_cFv
/* 8077FE8C  38 7B 06 BC */	addi r3, r27, 0x6bc
/* 8077FE90  4B 8F 60 1D */	bl __ct__12dBgS_AcchCirFv
/* 8077FE94  3A FB 06 FC */	addi r23, r27, 0x6fc
/* 8077FE98  7E E3 BB 78 */	mr r3, r23
/* 8077FE9C  4B 8F 62 05 */	bl __ct__9dBgS_AcchFv
/* 8077FEA0  3C 60 80 78 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80781304@ha */
/* 8077FEA4  38 63 13 04 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80781304@l */
/* 8077FEA8  90 77 00 10 */	stw r3, 0x10(r23)
/* 8077FEAC  38 03 00 0C */	addi r0, r3, 0xc
/* 8077FEB0  90 17 00 14 */	stw r0, 0x14(r23)
/* 8077FEB4  38 03 00 18 */	addi r0, r3, 0x18
/* 8077FEB8  90 17 00 24 */	stw r0, 0x24(r23)
/* 8077FEBC  38 77 00 14 */	addi r3, r23, 0x14
/* 8077FEC0  4B 8F 8F A9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8077FEC4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8077FEC8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8077FECC  90 1B 08 EC */	stw r0, 0x8ec(r27)
/* 8077FED0  38 7B 08 F0 */	addi r3, r27, 0x8f0
/* 8077FED4  4B 90 38 8D */	bl __ct__10dCcD_GSttsFv
/* 8077FED8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8077FEDC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8077FEE0  90 7B 08 EC */	stw r3, 0x8ec(r27)
/* 8077FEE4  38 03 00 20 */	addi r0, r3, 0x20
/* 8077FEE8  90 1B 08 F0 */	stw r0, 0x8f0(r27)
/* 8077FEEC  38 7B 09 10 */	addi r3, r27, 0x910
/* 8077FEF0  3C 80 80 78 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80780638@ha */
/* 8077FEF4  38 84 06 38 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80780638@l */
/* 8077FEF8  3C A0 80 78 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8078056C@ha */
/* 8077FEFC  38 A5 05 6C */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8078056C@l */
/* 8077FF00  38 C0 01 38 */	li r6, 0x138
/* 8077FF04  38 E0 00 03 */	li r7, 3
/* 8077FF08  4B BE 1E 59 */	bl __construct_array
/* 8077FF0C  3B 9B 0C B8 */	addi r28, r27, 0xcb8
/* 8077FF10  7F 83 E3 78 */	mr r3, r28
/* 8077FF14  4B 90 3B 15 */	bl __ct__12dCcD_GObjInfFv
/* 8077FF18  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8077FF1C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8077FF20  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8077FF24  3C 60 80 78 */	lis r3, __vt__8cM3dGAab@ha /* 0x807812F8@ha */
/* 8077FF28  38 03 12 F8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807812F8@l */
/* 8077FF2C  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8077FF30  3C 60 80 78 */	lis r3, __vt__8cM3dGSph@ha /* 0x807812EC@ha */
/* 8077FF34  38 03 12 EC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807812EC@l */
/* 8077FF38  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8077FF3C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8077FF40  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8077FF44  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8077FF48  38 03 00 58 */	addi r0, r3, 0x58
/* 8077FF4C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8077FF50  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8077FF54  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8077FF58  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8077FF5C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8077FF60  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8077FF64  38 03 00 84 */	addi r0, r3, 0x84
/* 8077FF68  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8077FF6C  38 7B 0E 14 */	addi r3, r27, 0xe14
/* 8077FF70  3C 80 80 78 */	lis r4, __ct__7s1_ke_sFv@ha /* 0x80780470@ha */
/* 8077FF74  38 84 04 70 */	addi r4, r4, __ct__7s1_ke_sFv@l /* 0x80780470@l */
/* 8077FF78  3C A0 80 78 */	lis r5, __dt__7s1_ke_sFv@ha /* 0x807803F4@ha */
/* 8077FF7C  38 A5 03 F4 */	addi r5, r5, __dt__7s1_ke_sFv@l /* 0x807803F4@l */
/* 8077FF80  38 C0 01 8C */	li r6, 0x18c
/* 8077FF84  38 E0 00 16 */	li r7, 0x16
/* 8077FF88  4B BE 1D D9 */	bl __construct_array
/* 8077FF8C  3C 60 80 78 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x807812D8@ha */
/* 8077FF90  38 03 12 D8 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x807812D8@l */
/* 8077FF94  90 1B 30 1C */	stw r0, 0x301c(r27)
/* 8077FF98  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha /* 0x803A325C@ha */
/* 8077FF9C  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l /* 0x803A325C@l */
/* 8077FFA0  90 1B 30 1C */	stw r0, 0x301c(r27)
lbl_8077FFA4:
/* 8077FFA4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8077FFA8  60 00 00 08 */	ori r0, r0, 8
/* 8077FFAC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8077FFB0:
/* 8077FFB0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8077FFB4  3C 80 80 78 */	lis r4, d_a_e_s1__stringBase0@ha /* 0x80780F74@ha */
/* 8077FFB8  38 84 0F 74 */	addi r4, r4, d_a_e_s1__stringBase0@l /* 0x80780F74@l */
/* 8077FFBC  4B 8A CF 01 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8077FFC0  7C 7B 1B 78 */	mr r27, r3
/* 8077FFC4  2C 1B 00 04 */	cmpwi r27, 4
/* 8077FFC8  40 82 04 10 */	bne lbl_807803D8
/* 8077FFCC  38 00 00 00 */	li r0, 0
/* 8077FFD0  98 1D 00 3D */	stb r0, 0x3d(r29)
/* 8077FFD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077FFD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077FFDC  3B 83 4E 00 */	addi r28, r3, 0x4e00
/* 8077FFE0  7F 83 E3 78 */	mr r3, r28
/* 8077FFE4  3C 80 80 78 */	lis r4, d_a_e_s1__stringBase0@ha /* 0x80780F74@ha */
/* 8077FFE8  38 84 0F 74 */	addi r4, r4, d_a_e_s1__stringBase0@l /* 0x80780F74@l */
/* 8077FFEC  38 84 00 05 */	addi r4, r4, 5
/* 8077FFF0  4B BE 89 A5 */	bl strcmp
/* 8077FFF4  2C 03 00 00 */	cmpwi r3, 0
/* 8077FFF8  41 82 00 3C */	beq lbl_80780034
/* 8077FFFC  7F 83 E3 78 */	mr r3, r28
/* 80780000  3C 80 80 78 */	lis r4, d_a_e_s1__stringBase0@ha /* 0x80780F74@ha */
/* 80780004  38 84 0F 74 */	addi r4, r4, d_a_e_s1__stringBase0@l /* 0x80780F74@l */
/* 80780008  38 84 00 1C */	addi r4, r4, 0x1c
/* 8078000C  4B BE 89 89 */	bl strcmp
/* 80780010  2C 03 00 00 */	cmpwi r3, 0
/* 80780014  41 82 00 20 */	beq lbl_80780034
/* 80780018  7F 83 E3 78 */	mr r3, r28
/* 8078001C  3C 80 80 78 */	lis r4, d_a_e_s1__stringBase0@ha /* 0x80780F74@ha */
/* 80780020  38 84 0F 74 */	addi r4, r4, d_a_e_s1__stringBase0@l /* 0x80780F74@l */
/* 80780024  38 84 00 24 */	addi r4, r4, 0x24
/* 80780028  4B BE 89 6D */	bl strcmp
/* 8078002C  2C 03 00 00 */	cmpwi r3, 0
/* 80780030  40 82 00 2C */	bne lbl_8078005C
lbl_80780034:
/* 80780034  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80780038  7C 00 07 74 */	extsb r0, r0
/* 8078003C  2C 00 00 33 */	cmpwi r0, 0x33
/* 80780040  41 82 00 14 */	beq lbl_80780054
/* 80780044  2C 00 00 09 */	cmpwi r0, 9
/* 80780048  41 82 00 0C */	beq lbl_80780054
/* 8078004C  2C 00 00 34 */	cmpwi r0, 0x34
/* 80780050  40 82 00 0C */	bne lbl_8078005C
lbl_80780054:
/* 80780054  38 00 00 01 */	li r0, 1
/* 80780058  98 1D 00 3D */	stb r0, 0x3d(r29)
lbl_8078005C:
/* 8078005C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80780060  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80780064  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 80780068  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8078006C  28 00 00 0F */	cmplwi r0, 0xf
/* 80780070  40 82 00 0C */	bne lbl_8078007C
/* 80780074  38 00 00 00 */	li r0, 0
/* 80780078  98 1F 05 B4 */	stb r0, 0x5b4(r31)
lbl_8078007C:
/* 8078007C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80780080  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80780084  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 80780088  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 8078008C  28 00 00 0F */	cmplwi r0, 0xf
/* 80780090  40 82 00 0C */	bne lbl_8078009C
/* 80780094  38 00 00 FF */	li r0, 0xff
/* 80780098  98 1F 05 B6 */	stb r0, 0x5b6(r31)
lbl_8078009C:
/* 8078009C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807800A0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 807800A4  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 807800A8  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 807800AC  28 00 00 FF */	cmplwi r0, 0xff
/* 807800B0  40 82 00 24 */	bne lbl_807800D4
/* 807800B4  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807800B8  28 00 00 00 */	cmplwi r0, 0
/* 807800BC  41 82 00 10 */	beq lbl_807800CC
/* 807800C0  38 00 00 03 */	li r0, 3
/* 807800C4  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 807800C8  48 00 00 0C */	b lbl_807800D4
lbl_807800CC:
/* 807800CC  38 00 00 14 */	li r0, 0x14
/* 807800D0  98 1F 05 B5 */	stb r0, 0x5b5(r31)
lbl_807800D4:
/* 807800D4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807800D8  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 807800DC  C8 3E 00 68 */	lfd f1, 0x68(r30)
/* 807800E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807800E4  3C 60 43 30 */	lis r3, 0x4330
/* 807800E8  90 61 00 10 */	stw r3, 0x10(r1)
/* 807800EC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 807800F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 807800F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 807800F8  D0 1F 30 64 */	stfs f0, 0x3064(r31)
/* 807800FC  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80780100  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80780104  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 80780108  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8078010C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80780110  90 61 00 18 */	stw r3, 0x18(r1)
/* 80780114  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80780118  EC 00 08 28 */	fsubs f0, f0, f1
/* 8078011C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80780120  D0 1F 30 68 */	stfs f0, 0x3068(r31)
/* 80780124  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80780128  C0 1F 30 68 */	lfs f0, 0x3068(r31)
/* 8078012C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80780130  40 82 00 0C */	bne lbl_8078013C
/* 80780134  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80780138  D0 1F 30 68 */	stfs f0, 0x3068(r31)
lbl_8078013C:
/* 8078013C  38 00 00 00 */	li r0, 0
/* 80780140  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80780144  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80780148  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8078014C  54 19 86 3E */	rlwinm r25, r0, 0x10, 0x18, 0x1f
/* 80780150  54 00 46 3E */	srwi r0, r0, 0x18
/* 80780154  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 80780158  88 9F 05 B7 */	lbz r4, 0x5b7(r31)
/* 8078015C  28 04 00 FF */	cmplwi r4, 0xff
/* 80780160  41 82 00 28 */	beq lbl_80780188
/* 80780164  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80780168  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078016C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80780170  7C 05 07 74 */	extsb r5, r0
/* 80780174  4B 8B 51 ED */	bl isSwitch__10dSv_info_cCFii
/* 80780178  2C 03 00 00 */	cmpwi r3, 0
/* 8078017C  41 82 00 0C */	beq lbl_80780188
/* 80780180  38 60 00 05 */	li r3, 5
/* 80780184  48 00 02 58 */	b lbl_807803DC
lbl_80780188:
/* 80780188  7F E3 FB 78 */	mr r3, r31
/* 8078018C  3C 80 80 78 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8077FCF8@ha */
/* 80780190  38 84 FC F8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8077FCF8@l */
/* 80780194  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008EA0@ha */
/* 80780198  38 A5 8E A0 */	addi r5, r5, 0x8EA0 /* 0x00008EA0@l */
/* 8078019C  4B 89 A3 15 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807801A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807801A4  40 82 00 0C */	bne lbl_807801B0
/* 807801A8  38 60 00 05 */	li r3, 5
/* 807801AC  48 00 02 30 */	b lbl_807803DC
lbl_807801B0:
/* 807801B0  28 19 00 FF */	cmplwi r25, 0xff
/* 807801B4  41 82 00 2C */	beq lbl_807801E0
/* 807801B8  7F 23 CB 78 */	mr r3, r25
/* 807801BC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807801C0  7C 04 07 74 */	extsb r4, r0
/* 807801C4  4B 8D 16 29 */	bl dPath_GetRoomPath__Fii
/* 807801C8  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 807801CC  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 807801D0  28 00 00 00 */	cmplwi r0, 0
/* 807801D4  40 82 00 0C */	bne lbl_807801E0
/* 807801D8  38 60 00 05 */	li r3, 5
/* 807801DC  48 00 02 00 */	b lbl_807803DC
lbl_807801E0:
/* 807801E0  88 1D 00 3E */	lbz r0, 0x3e(r29)
/* 807801E4  28 00 00 00 */	cmplwi r0, 0
/* 807801E8  40 82 00 1C */	bne lbl_80780204
/* 807801EC  38 00 00 01 */	li r0, 1
/* 807801F0  98 1F 30 80 */	stb r0, 0x3080(r31)
/* 807801F4  98 1D 00 3E */	stb r0, 0x3e(r29)
/* 807801F8  38 00 FF FF */	li r0, -1
/* 807801FC  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80780200  98 03 00 04 */	stb r0, 4(r3)
lbl_80780204:
/* 80780204  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80780208  60 00 01 00 */	ori r0, r0, 0x100
/* 8078020C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80780210  38 00 00 04 */	li r0, 4
/* 80780214  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80780218  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8078021C  28 00 00 00 */	cmplwi r0, 0
/* 80780220  40 82 00 18 */	bne lbl_80780238
/* 80780224  38 00 00 00 */	li r0, 0
/* 80780228  B0 1F 06 96 */	sth r0, 0x696(r31)
/* 8078022C  38 00 00 01 */	li r0, 1
/* 80780230  98 1F 06 9A */	stb r0, 0x69a(r31)
/* 80780234  48 00 00 0C */	b lbl_80780240
lbl_80780238:
/* 80780238  38 00 00 01 */	li r0, 1
/* 8078023C  B0 1F 06 96 */	sth r0, 0x696(r31)
lbl_80780240:
/* 80780240  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80780244  80 63 00 04 */	lwz r3, 4(r3)
/* 80780248  38 03 00 24 */	addi r0, r3, 0x24
/* 8078024C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80780250  7F E3 FB 78 */	mr r3, r31
/* 80780254  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 80780258  FC 40 08 90 */	fmr f2, f1
/* 8078025C  FC 60 08 90 */	fmr f3, f1
/* 80780260  4B 89 A2 C9 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80780264  7F E3 FB 78 */	mr r3, r31
/* 80780268  C0 3E 01 98 */	lfs f1, 0x198(r30)
/* 8078026C  FC 40 08 90 */	fmr f2, f1
/* 80780270  FC 60 08 90 */	fmr f3, f1
/* 80780274  4B 89 A2 C5 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80780278  38 00 00 00 */	li r0, 0
/* 8078027C  90 01 00 08 */	stw r0, 8(r1)
/* 80780280  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 80780284  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80780288  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8078028C  7F E6 FB 78 */	mr r6, r31
/* 80780290  38 E0 00 01 */	li r7, 1
/* 80780294  39 1F 06 BC */	addi r8, r31, 0x6bc
/* 80780298  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 8078029C  39 40 00 00 */	li r10, 0
/* 807802A0  4B 8F 5F A9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807802A4  38 7F 06 BC */	addi r3, r31, 0x6bc
/* 807802A8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 807802AC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807802B0  4B 8F 5C A9 */	bl SetWall__12dBgS_AcchCirFff
/* 807802B4  38 00 00 32 */	li r0, 0x32
/* 807802B8  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807802BC  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 807802C0  38 7F 08 D4 */	addi r3, r31, 0x8d4
/* 807802C4  38 80 00 FA */	li r4, 0xfa
/* 807802C8  38 A0 00 00 */	li r5, 0
/* 807802CC  7F E6 FB 78 */	mr r6, r31
/* 807802D0  4B 90 35 91 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807802D4  3A E0 00 00 */	li r23, 0
/* 807802D8  3B A0 00 00 */	li r29, 0
/* 807802DC  3C 60 80 78 */	lis r3, cc_sph_src@ha /* 0x807811E4@ha */
/* 807802E0  3B 23 11 E4 */	addi r25, r3, cc_sph_src@l /* 0x807811E4@l */
/* 807802E4  3B 5F 08 D4 */	addi r26, r31, 0x8d4
lbl_807802E8:
/* 807802E8  7F 1F EA 14 */	add r24, r31, r29
/* 807802EC  38 78 09 10 */	addi r3, r24, 0x910
/* 807802F0  7F 24 CB 78 */	mr r4, r25
/* 807802F4  4B 90 47 41 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807802F8  93 58 09 54 */	stw r26, 0x954(r24)
/* 807802FC  3A F7 00 01 */	addi r23, r23, 1
/* 80780300  2C 17 00 02 */	cmpwi r23, 2
/* 80780304  3B BD 01 38 */	addi r29, r29, 0x138
/* 80780308  40 81 FF E0 */	ble lbl_807802E8
/* 8078030C  38 7F 0C B8 */	addi r3, r31, 0xcb8
/* 80780310  3C 80 80 78 */	lis r4, at_sph_src@ha /* 0x80781224@ha */
/* 80780314  38 84 12 24 */	addi r4, r4, at_sph_src@l /* 0x80781224@l */
/* 80780318  4B 90 47 1D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8078031C  38 1F 08 D4 */	addi r0, r31, 0x8d4
/* 80780320  90 1F 0C FC */	stw r0, 0xcfc(r31)
/* 80780324  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80780328  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8078032C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80780330  38 C0 00 03 */	li r6, 3
/* 80780334  38 E0 00 01 */	li r7, 1
/* 80780338  4B B4 0D 5D */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8078033C  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80780340  3C 80 80 78 */	lis r4, d_a_e_s1__stringBase0@ha /* 0x80780F74@ha */
/* 80780344  38 84 0F 74 */	addi r4, r4, d_a_e_s1__stringBase0@l /* 0x80780F74@l */
/* 80780348  38 84 00 2C */	addi r4, r4, 0x2c
/* 8078034C  4B B4 18 45 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80780350  38 1F 05 E0 */	addi r0, r31, 0x5e0
/* 80780354  90 1F 0D F8 */	stw r0, 0xdf8(r31)
/* 80780358  38 00 00 1E */	li r0, 0x1e
/* 8078035C  B0 1F 06 AA */	sth r0, 0x6aa(r31)
/* 80780360  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80780364  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80780368  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8078036C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80780370  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80780374  A0 84 00 A6 */	lhz r4, 0xa6(r4)
/* 80780378  4B 8B 46 45 */	bl isEventBit__11dSv_event_cCFUs
/* 8078037C  2C 03 00 00 */	cmpwi r3, 0
/* 80780380  40 82 00 48 */	bne lbl_807803C8
/* 80780384  7F 83 E3 78 */	mr r3, r28
/* 80780388  3C 80 80 78 */	lis r4, d_a_e_s1__stringBase0@ha /* 0x80780F74@ha */
/* 8078038C  38 84 0F 74 */	addi r4, r4, d_a_e_s1__stringBase0@l /* 0x80780F74@l */
/* 80780390  38 84 00 14 */	addi r4, r4, 0x14
/* 80780394  4B BE 86 01 */	bl strcmp
/* 80780398  2C 03 00 00 */	cmpwi r3, 0
/* 8078039C  40 82 00 2C */	bne lbl_807803C8
/* 807803A0  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 807803A4  28 00 00 FE */	cmplwi r0, 0xfe
/* 807803A8  40 82 00 20 */	bne lbl_807803C8
/* 807803AC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807803B0  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 807803B4  EC 00 08 2A */	fadds f0, f0, f1
/* 807803B8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807803BC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807803C0  EC 00 08 2A */	fadds f0, f0, f1
/* 807803C4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
lbl_807803C8:
/* 807803C8  7F E3 FB 78 */	mr r3, r31
/* 807803CC  4B FF EF 49 */	bl daE_S1_Execute__FP10e_s1_class
/* 807803D0  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 807803D4  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_807803D8:
/* 807803D8  7F 63 DB 78 */	mr r3, r27
lbl_807803DC:
/* 807803DC  39 61 00 50 */	addi r11, r1, 0x50
/* 807803E0  4B BE 1E 31 */	bl _restgpr_23
/* 807803E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807803E8  7C 08 03 A6 */	mtlr r0
/* 807803EC  38 21 00 50 */	addi r1, r1, 0x50
/* 807803F0  4E 80 00 20 */	blr 
