lbl_80C10BF8:
/* 80C10BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C10BFC  7C 08 02 A6 */	mflr r0
/* 80C10C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C10C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C10C08  93 C1 00 08 */	stw r30, 8(r1)
/* 80C10C0C  7C 7F 1B 78 */	mr r31, r3
/* 80C10C10  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C10C14  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C10C18  40 82 00 A8 */	bne lbl_80C10CC0
/* 80C10C1C  7F E0 FB 79 */	or. r0, r31, r31
/* 80C10C20  41 82 00 94 */	beq lbl_80C10CB4
/* 80C10C24  7C 1E 03 78 */	mr r30, r0
/* 80C10C28  4B 40 7F 3D */	bl __ct__10fopAc_ac_cFv
/* 80C10C2C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C10C30  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C10C34  90 1E 05 80 */	stw r0, 0x580(r30)
/* 80C10C38  38 7E 05 84 */	addi r3, r30, 0x584
/* 80C10C3C  4B 47 2B 25 */	bl __ct__10dCcD_GSttsFv
/* 80C10C40  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C10C44  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C10C48  90 7E 05 80 */	stw r3, 0x580(r30)
/* 80C10C4C  38 03 00 20 */	addi r0, r3, 0x20
/* 80C10C50  90 1E 05 84 */	stw r0, 0x584(r30)
/* 80C10C54  3B DE 05 A4 */	addi r30, r30, 0x5a4
/* 80C10C58  7F C3 F3 78 */	mr r3, r30
/* 80C10C5C  4B 47 2D CD */	bl __ct__12dCcD_GObjInfFv
/* 80C10C60  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C10C64  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C10C68  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C10C6C  3C 60 80 C1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C11058@ha */
/* 80C10C70  38 03 10 58 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C11058@l */
/* 80C10C74  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80C10C78  3C 60 80 C1 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C1104C@ha */
/* 80C10C7C  38 03 10 4C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C1104C@l */
/* 80C10C80  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C10C84  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C10C88  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C10C8C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C10C90  38 03 00 58 */	addi r0, r3, 0x58
/* 80C10C94  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C10C98  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C10C9C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C10CA0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C10CA4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C10CA8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C10CAC  38 03 00 84 */	addi r0, r3, 0x84
/* 80C10CB0  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C10CB4:
/* 80C10CB4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C10CB8  60 00 00 08 */	ori r0, r0, 8
/* 80C10CBC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C10CC0:
/* 80C10CC0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C10CC4  98 1F 06 E0 */	stb r0, 0x6e0(r31)
/* 80C10CC8  88 9F 06 E0 */	lbz r4, 0x6e0(r31)
/* 80C10CCC  28 04 00 FF */	cmplwi r4, 0xff
/* 80C10CD0  41 82 00 28 */	beq lbl_80C10CF8
/* 80C10CD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C10CD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C10CDC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C10CE0  7C 05 07 74 */	extsb r5, r0
/* 80C10CE4  4B 42 46 7D */	bl isSwitch__10dSv_info_cCFii
/* 80C10CE8  2C 03 00 00 */	cmpwi r3, 0
/* 80C10CEC  41 82 00 38 */	beq lbl_80C10D24
/* 80C10CF0  38 60 00 05 */	li r3, 5
/* 80C10CF4  48 00 00 3C */	b lbl_80C10D30
lbl_80C10CF8:
/* 80C10CF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C10CFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C10D00  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C10D04  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C10D08  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C10D0C  A0 84 00 7C */	lhz r4, 0x7c(r4)
/* 80C10D10  4B 42 3C AD */	bl isEventBit__11dSv_event_cCFUs
/* 80C10D14  2C 03 00 00 */	cmpwi r3, 0
/* 80C10D18  41 82 00 0C */	beq lbl_80C10D24
/* 80C10D1C  38 60 00 05 */	li r3, 5
/* 80C10D20  48 00 00 10 */	b lbl_80C10D30
lbl_80C10D24:
/* 80C10D24  7F E3 FB 78 */	mr r3, r31
/* 80C10D28  48 00 01 59 */	bl col_init__14daObjGraWall_cFv
/* 80C10D2C  38 60 00 04 */	li r3, 4
lbl_80C10D30:
/* 80C10D30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C10D34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C10D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C10D3C  7C 08 03 A6 */	mtlr r0
/* 80C10D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80C10D44  4E 80 00 20 */	blr 
