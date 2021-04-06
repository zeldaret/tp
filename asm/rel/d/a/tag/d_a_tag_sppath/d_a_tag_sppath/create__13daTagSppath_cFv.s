lbl_80D61C18:
/* 80D61C18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D61C1C  7C 08 02 A6 */	mflr r0
/* 80D61C20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D61C24  39 61 00 20 */	addi r11, r1, 0x20
/* 80D61C28  4B 60 05 B5 */	bl _savegpr_29
/* 80D61C2C  7C 7F 1B 78 */	mr r31, r3
/* 80D61C30  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D61C34  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D61C38  40 82 00 A8 */	bne lbl_80D61CE0
/* 80D61C3C  7F E0 FB 79 */	or. r0, r31, r31
/* 80D61C40  41 82 00 94 */	beq lbl_80D61CD4
/* 80D61C44  7C 1E 03 78 */	mr r30, r0
/* 80D61C48  4B 2B 6F 1D */	bl __ct__10fopAc_ac_cFv
/* 80D61C4C  3B BE 05 70 */	addi r29, r30, 0x570
/* 80D61C50  7F A3 EB 78 */	mr r3, r29
/* 80D61C54  4B 32 1D D5 */	bl __ct__12dCcD_GObjInfFv
/* 80D61C58  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D61C5C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D61C60  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D61C64  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D62D18@ha */
/* 80D61C68  38 03 2D 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D62D18@l */
/* 80D61C6C  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80D61C70  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D62D0C@ha */
/* 80D61C74  38 03 2D 0C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D62D0C@l */
/* 80D61C78  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D61C7C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D61C80  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D61C84  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80D61C88  38 03 00 58 */	addi r0, r3, 0x58
/* 80D61C8C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D61C90  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D61C94  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D61C98  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80D61C9C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D61CA0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D61CA4  38 03 00 84 */	addi r0, r3, 0x84
/* 80D61CA8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D61CAC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D61CB0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D61CB4  90 1E 06 C4 */	stw r0, 0x6c4(r30)
/* 80D61CB8  38 7E 06 C8 */	addi r3, r30, 0x6c8
/* 80D61CBC  4B 32 1A A5 */	bl __ct__10dCcD_GSttsFv
/* 80D61CC0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D61CC4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D61CC8  90 7E 06 C4 */	stw r3, 0x6c4(r30)
/* 80D61CCC  38 03 00 20 */	addi r0, r3, 0x20
/* 80D61CD0  90 1E 06 C8 */	stw r0, 0x6c8(r30)
lbl_80D61CD4:
/* 80D61CD4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D61CD8  60 00 00 08 */	ori r0, r0, 8
/* 80D61CDC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D61CE0:
/* 80D61CE0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D61CE4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D61CE8  98 1F 06 E9 */	stb r0, 0x6e9(r31)
/* 80D61CEC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D61CF0  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D61CF4  98 1F 06 EA */	stb r0, 0x6ea(r31)
/* 80D61CF8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D61CFC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80D61D00  2C 03 00 FF */	cmpwi r3, 0xff
/* 80D61D04  41 82 00 1C */	beq lbl_80D61D20
/* 80D61D08  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D61D0C  7C 04 07 74 */	extsb r4, r0
/* 80D61D10  4B 2E FA DD */	bl dPath_GetRoomPath__Fii
/* 80D61D14  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80D61D18  28 03 00 00 */	cmplwi r3, 0
/* 80D61D1C  40 82 00 0C */	bne lbl_80D61D28
lbl_80D61D20:
/* 80D61D20  38 60 00 05 */	li r3, 5
/* 80D61D24  48 00 00 7C */	b lbl_80D61DA0
lbl_80D61D28:
/* 80D61D28  38 7F 06 AC */	addi r3, r31, 0x6ac
/* 80D61D2C  38 80 00 00 */	li r4, 0
/* 80D61D30  38 A0 00 FF */	li r5, 0xff
/* 80D61D34  7F E6 FB 78 */	mr r6, r31
/* 80D61D38  4B 32 1B 29 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D61D3C  38 7F 05 70 */	addi r3, r31, 0x570
/* 80D61D40  3C 80 80 D6 */	lis r4, l_cylSrc@ha /* 0x80D62C54@ha */
/* 80D61D44  38 84 2C 54 */	addi r4, r4, l_cylSrc@l /* 0x80D62C54@l */
/* 80D61D48  4B 32 2B 6D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D61D4C  38 1F 06 AC */	addi r0, r31, 0x6ac
/* 80D61D50  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80D61D54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D61D58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D61D5C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80D61D60  3C 80 80 D6 */	lis r4, d_a_tag_sppath__stringBase0@ha /* 0x80D62C4C@ha */
/* 80D61D64  38 84 2C 4C */	addi r4, r4, d_a_tag_sppath__stringBase0@l /* 0x80D62C4C@l */
/* 80D61D68  4B 60 6C 2D */	bl strcmp
/* 80D61D6C  2C 03 00 00 */	cmpwi r3, 0
/* 80D61D70  40 82 00 20 */	bne lbl_80D61D90
/* 80D61D74  3C 60 80 D6 */	lis r3, lit_3694@ha /* 0x80D62C18@ha */
/* 80D61D78  C0 03 2C 18 */	lfs f0, lit_3694@l(r3)  /* 0x80D62C18@l */
/* 80D61D7C  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 80D61D80  38 7F 06 94 */	addi r3, r31, 0x694
/* 80D61D84  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 80D61D88  4B 50 D4 71 */	bl SetH__8cM3dGCylFf
/* 80D61D8C  48 00 00 10 */	b lbl_80D61D9C
lbl_80D61D90:
/* 80D61D90  3C 60 80 D6 */	lis r3, lit_3695@ha /* 0x80D62C1C@ha */
/* 80D61D94  C0 03 2C 1C */	lfs f0, lit_3695@l(r3)  /* 0x80D62C1C@l */
/* 80D61D98  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
lbl_80D61D9C:
/* 80D61D9C  38 60 00 04 */	li r3, 4
lbl_80D61DA0:
/* 80D61DA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D61DA4  4B 60 04 85 */	bl _restgpr_29
/* 80D61DA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D61DAC  7C 08 03 A6 */	mtlr r0
/* 80D61DB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D61DB4  4E 80 00 20 */	blr 
