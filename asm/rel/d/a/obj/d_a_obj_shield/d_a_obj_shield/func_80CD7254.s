lbl_80CD7254:
/* 80CD7254  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CD7258  7C 08 02 A6 */	mflr r0
/* 80CD725C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD7260  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD7264  4B 68 AF 79 */	bl _savegpr_29
/* 80CD7268  7C 7F 1B 78 */	mr r31, r3
/* 80CD726C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CD7270  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CD7274  40 82 00 F8 */	bne lbl_80CD736C
/* 80CD7278  28 1F 00 00 */	cmplwi r31, 0
/* 80CD727C  41 82 00 E4 */	beq lbl_80CD7360
/* 80CD7280  7F FE FB 78 */	mr r30, r31
/* 80CD7284  4B 34 18 E1 */	bl __ct__10fopAc_ac_cFv
/* 80CD7288  3C 60 80 3B */	lis r3, __vt__12daItemBase_c@ha /* 0x803B3610@ha */
/* 80CD728C  38 03 36 10 */	addi r0, r3, __vt__12daItemBase_c@l /* 0x803B3610@l */
/* 80CD7290  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CD7294  3B BE 05 8C */	addi r29, r30, 0x58c
/* 80CD7298  7F A3 EB 78 */	mr r3, r29
/* 80CD729C  4B 39 EE 05 */	bl __ct__9dBgS_AcchFv
/* 80CD72A0  3C 60 80 CE */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80CD84A8@ha */
/* 80CD72A4  38 63 84 A8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80CD84A8@l */
/* 80CD72A8  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80CD72AC  38 03 00 0C */	addi r0, r3, 0xc
/* 80CD72B0  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80CD72B4  38 03 00 18 */	addi r0, r3, 0x18
/* 80CD72B8  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80CD72BC  38 7D 00 14 */	addi r3, r29, 0x14
/* 80CD72C0  4B 3A 1B A9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80CD72C4  38 7E 07 64 */	addi r3, r30, 0x764
/* 80CD72C8  4B 39 EB E5 */	bl __ct__12dBgS_AcchCirFv
/* 80CD72CC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CD72D0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CD72D4  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80CD72D8  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 80CD72DC  4B 3A C4 85 */	bl __ct__10dCcD_GSttsFv
/* 80CD72E0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CD72E4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CD72E8  90 7E 07 BC */	stw r3, 0x7bc(r30)
/* 80CD72EC  38 03 00 20 */	addi r0, r3, 0x20
/* 80CD72F0  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 80CD72F4  3B BE 07 E0 */	addi r29, r30, 0x7e0
/* 80CD72F8  7F A3 EB 78 */	mr r3, r29
/* 80CD72FC  4B 3A C7 2D */	bl __ct__12dCcD_GObjInfFv
/* 80CD7300  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CD7304  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CD7308  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CD730C  3C 60 80 CE */	lis r3, __vt__8cM3dGAab@ha /* 0x80CD849C@ha */
/* 80CD7310  38 03 84 9C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CD849C@l */
/* 80CD7314  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80CD7318  3C 60 80 CE */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CD8490@ha */
/* 80CD731C  38 03 84 90 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CD8490@l */
/* 80CD7320  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CD7324  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CD7328  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CD732C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80CD7330  38 03 00 58 */	addi r0, r3, 0x58
/* 80CD7334  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CD7338  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CD733C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CD7340  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80CD7344  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CD7348  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CD734C  38 03 00 84 */	addi r0, r3, 0x84
/* 80CD7350  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CD7354  3C 60 80 CE */	lis r3, __vt__14daItemShield_c@ha /* 0x80CD84CC@ha */
/* 80CD7358  38 03 84 CC */	addi r0, r3, __vt__14daItemShield_c@l /* 0x80CD84CC@l */
/* 80CD735C  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80CD7360:
/* 80CD7360  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CD7364  60 00 00 08 */	ori r0, r0, 8
/* 80CD7368  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CD736C:
/* 80CD736C  38 00 00 2A */	li r0, 0x2a
/* 80CD7370  98 1F 09 2A */	stb r0, 0x92a(r31)
/* 80CD7374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD7378  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD737C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CD7380  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CD7384  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CD7388  7C 05 07 74 */	extsb r5, r0
/* 80CD738C  4B 35 DF D5 */	bl isSwitch__10dSv_info_cCFii
/* 80CD7390  2C 03 00 00 */	cmpwi r3, 0
/* 80CD7394  41 82 00 0C */	beq lbl_80CD73A0
/* 80CD7398  38 60 00 05 */	li r3, 5
/* 80CD739C  48 00 00 6C */	b lbl_80CD7408
lbl_80CD73A0:
/* 80CD73A0  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 80CD73A4  54 00 20 36 */	slwi r0, r0, 4
/* 80CD73A8  3C 60 80 3B */	lis r3, field_item_res__10dItem_data@ha /* 0x803ADD88@ha */
/* 80CD73AC  38 63 DD 88 */	addi r3, r3, field_item_res__10dItem_data@l /* 0x803ADD88@l */
/* 80CD73B0  7C 83 00 2E */	lwzx r4, r3, r0
/* 80CD73B4  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80CD73B8  4B 35 5B 05 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CD73BC  7C 7E 1B 78 */	mr r30, r3
/* 80CD73C0  2C 1E 00 04 */	cmpwi r30, 4
/* 80CD73C4  40 82 00 40 */	bne lbl_80CD7404
/* 80CD73C8  7F E3 FB 78 */	mr r3, r31
/* 80CD73CC  3C 80 80 03 */	lis r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@ha /* 0x80037B78@ha */
/* 80CD73D0  38 84 7B 78 */	addi r4, r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@l /* 0x80037B78@l */
/* 80CD73D4  38 A0 08 20 */	li r5, 0x820
/* 80CD73D8  4B 34 30 D9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CD73DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CD73E0  40 82 00 0C */	bne lbl_80CD73EC
/* 80CD73E4  38 60 00 05 */	li r3, 5
/* 80CD73E8  48 00 00 20 */	b lbl_80CD7408
lbl_80CD73EC:
/* 80CD73EC  7F E3 FB 78 */	mr r3, r31
/* 80CD73F0  4B FF FC A5 */	bl Create__14daItemShield_cFv
/* 80CD73F4  2C 03 00 00 */	cmpwi r3, 0
/* 80CD73F8  40 82 00 0C */	bne lbl_80CD7404
/* 80CD73FC  38 60 00 05 */	li r3, 5
/* 80CD7400  48 00 00 08 */	b lbl_80CD7408
lbl_80CD7404:
/* 80CD7404  7F C3 F3 78 */	mr r3, r30
lbl_80CD7408:
/* 80CD7408  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD740C  4B 68 AE 1D */	bl _restgpr_29
/* 80CD7410  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CD7414  7C 08 03 A6 */	mtlr r0
/* 80CD7418  38 21 00 20 */	addi r1, r1, 0x20
/* 80CD741C  4E 80 00 20 */	blr 
