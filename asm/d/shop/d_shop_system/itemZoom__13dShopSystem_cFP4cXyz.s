lbl_80198A2C:
/* 80198A2C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80198A30  7C 08 02 A6 */	mflr r0
/* 80198A34  90 01 00 64 */	stw r0, 0x64(r1)
/* 80198A38  39 61 00 60 */	addi r11, r1, 0x60
/* 80198A3C  48 1C 97 9D */	bl _savegpr_28
/* 80198A40  7C 7C 1B 78 */	mr r28, r3
/* 80198A44  7C 9D 23 78 */	mr r29, r4
/* 80198A48  80 03 0F 60 */	lwz r0, 0xf60(r3)
/* 80198A4C  2C 00 00 00 */	cmpwi r0, 0
/* 80198A50  41 80 00 9C */	blt lbl_80198AEC
/* 80198A54  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80198A58  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80198A5C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80198A60  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80198A64  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80198A68  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80198A6C  38 8D 81 68 */	la r4, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 80198A70  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 80198A74  7C 84 02 14 */	add r4, r4, r0
/* 80198A78  88 04 FF FF */	lbz r0, -1(r4)
/* 80198A7C  28 00 00 66 */	cmplwi r0, 0x66
/* 80198A80  40 82 00 3C */	bne lbl_80198ABC
/* 80198A84  38 80 00 08 */	li r4, 8
/* 80198A88  4B FF EB 71 */	bl isFlag__13dShopSystem_cFi
/* 80198A8C  30 03 FF FF */	addic r0, r3, -1
/* 80198A90  7C E0 19 10 */	subfe r7, r0, r3
/* 80198A94  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 80198A98  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80198A9C  38 A1 00 44 */	addi r5, r1, 0x44
/* 80198AA0  3C C0 80 43 */	lis r6, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198AA4  38 C6 01 10 */	addi r6, r6, g_cursorHIO@l /* 0x80430110@l */
/* 80198AA8  A8 C6 00 3C */	lha r6, 0x3c(r6)
/* 80198AAC  38 06 EC 78 */	addi r0, r6, -5000
/* 80198AB0  7C 06 07 34 */	extsh r6, r0
/* 80198AB4  4B FF E0 F1 */	bl setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb
/* 80198AB8  48 00 05 DC */	b lbl_80199094
lbl_80198ABC:
/* 80198ABC  38 80 00 08 */	li r4, 8
/* 80198AC0  4B FF EB 39 */	bl isFlag__13dShopSystem_cFi
/* 80198AC4  30 03 FF FF */	addic r0, r3, -1
/* 80198AC8  7C E0 19 10 */	subfe r7, r0, r3
/* 80198ACC  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 80198AD0  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80198AD4  38 A1 00 44 */	addi r5, r1, 0x44
/* 80198AD8  3C C0 80 43 */	lis r6, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198ADC  38 C6 01 10 */	addi r6, r6, g_cursorHIO@l /* 0x80430110@l */
/* 80198AE0  A8 C6 00 3C */	lha r6, 0x3c(r6)
/* 80198AE4  4B FF E0 C1 */	bl setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb
/* 80198AE8  48 00 05 AC */	b lbl_80199094
lbl_80198AEC:
/* 80198AEC  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha /* 0x803BB8A4@ha */
/* 80198AF0  38 63 B8 A4 */	addi r3, r3, dShopSystem_itemActor@l /* 0x803BB8A4@l */
/* 80198AF4  80 83 00 04 */	lwz r4, 4(r3)
/* 80198AF8  28 04 00 00 */	cmplwi r4, 0
/* 80198AFC  41 82 02 F0 */	beq lbl_80198DEC
/* 80198B00  3B ED 81 70 */	la r31, dShopSystem_cameraActor(r13) /* 804506F0-_SDA_BASE_ */
/* 80198B04  80 DF 00 04 */	lwz r6, 4(r31)
/* 80198B08  28 06 00 00 */	cmplwi r6, 0
/* 80198B0C  41 82 02 E0 */	beq lbl_80198DEC
/* 80198B10  C0 04 04 A8 */	lfs f0, 0x4a8(r4)
/* 80198B14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80198B18  C0 04 04 AC */	lfs f0, 0x4ac(r4)
/* 80198B1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80198B20  C0 04 04 B0 */	lfs f0, 0x4b0(r4)
/* 80198B24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80198B28  88 0D 8A D8 */	lbz r0, data_80451058(r13)
/* 80198B2C  28 00 00 04 */	cmplwi r0, 4
/* 80198B30  40 82 00 54 */	bne lbl_80198B84
/* 80198B34  80 63 00 08 */	lwz r3, 8(r3)
/* 80198B38  28 03 00 00 */	cmplwi r3, 0
/* 80198B3C  41 82 00 90 */	beq lbl_80198BCC
/* 80198B40  C0 23 04 A8 */	lfs f1, 0x4a8(r3)
/* 80198B44  C0 04 04 A8 */	lfs f0, 0x4a8(r4)
/* 80198B48  EC 01 00 2A */	fadds f0, f1, f0
/* 80198B4C  C0 42 A1 04 */	lfs f2, lit_4098(r2)
/* 80198B50  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80198B54  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80198B58  C0 23 04 AC */	lfs f1, 0x4ac(r3)
/* 80198B5C  C0 04 04 AC */	lfs f0, 0x4ac(r4)
/* 80198B60  EC 01 00 2A */	fadds f0, f1, f0
/* 80198B64  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80198B68  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80198B6C  C0 23 04 B0 */	lfs f1, 0x4b0(r3)
/* 80198B70  C0 04 04 B0 */	lfs f0, 0x4b0(r4)
/* 80198B74  EC 01 00 2A */	fadds f0, f1, f0
/* 80198B78  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80198B7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80198B80  48 00 00 4C */	b lbl_80198BCC
lbl_80198B84:
/* 80198B84  28 00 00 05 */	cmplwi r0, 5
/* 80198B88  40 82 00 44 */	bne lbl_80198BCC
/* 80198B8C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80198B90  C0 25 04 A8 */	lfs f1, 0x4a8(r5)
/* 80198B94  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80198B98  C0 04 04 A8 */	lfs f0, 0x4a8(r4)
/* 80198B9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80198BA0  C0 42 A1 04 */	lfs f2, lit_4098(r2)
/* 80198BA4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80198BA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80198BAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80198BB0  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80198BB4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80198BB8  C0 25 04 B0 */	lfs f1, 0x4b0(r5)
/* 80198BBC  C0 04 04 B0 */	lfs f0, 0x4b0(r4)
/* 80198BC0  EC 01 00 2A */	fadds f0, f1, f0
/* 80198BC4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80198BC8  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80198BCC:
/* 80198BCC  38 61 00 08 */	addi r3, r1, 8
/* 80198BD0  38 81 00 20 */	addi r4, r1, 0x20
/* 80198BD4  38 A6 04 D0 */	addi r5, r6, 0x4d0
/* 80198BD8  48 0C DF 5D */	bl __mi__4cXyzCFRC3Vec
/* 80198BDC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80198BE0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80198BE4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80198BE8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80198BEC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80198BF0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80198BF4  48 0C EA 81 */	bl cM_atan2s__Fff
/* 80198BF8  7C 7E 1B 78 */	mr r30, r3
/* 80198BFC  3C 60 80 39 */	lis r3, d_shop_d_shop_system__stringBase0@ha /* 0x80394C10@ha */
/* 80198C00  38 63 4C 10 */	addi r3, r3, d_shop_d_shop_system__stringBase0@l /* 0x80394C10@l */
/* 80198C04  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80198C08  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80198C0C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80198C10  48 1C FD 85 */	bl strcmp
/* 80198C14  2C 03 00 00 */	cmpwi r3, 0
/* 80198C18  40 82 00 38 */	bne lbl_80198C50
/* 80198C1C  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198C20  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 80198C24  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80198C28  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80198C2C  C0 22 A1 24 */	lfs f1, lit_5000(r2)
/* 80198C30  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80198C34  EC 01 00 2A */	fadds f0, f1, f0
/* 80198C38  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80198C3C  C0 22 A1 28 */	lfs f1, lit_5001(r2)
/* 80198C40  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80198C44  EC 01 00 2A */	fadds f0, f1, f0
/* 80198C48  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80198C4C  48 00 01 30 */	b lbl_80198D7C
lbl_80198C50:
/* 80198C50  88 1C 0F 77 */	lbz r0, 0xf77(r28)
/* 80198C54  28 00 00 05 */	cmplwi r0, 5
/* 80198C58  40 82 00 B4 */	bne lbl_80198D0C
/* 80198C5C  38 6D 81 68 */	la r3, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 80198C60  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 80198C64  7C 63 02 14 */	add r3, r3, r0
/* 80198C68  88 03 FF FF */	lbz r0, -1(r3)
/* 80198C6C  28 00 00 0E */	cmplwi r0, 0xe
/* 80198C70  41 82 00 14 */	beq lbl_80198C84
/* 80198C74  28 00 00 0F */	cmplwi r0, 0xf
/* 80198C78  41 82 00 0C */	beq lbl_80198C84
/* 80198C7C  28 00 00 10 */	cmplwi r0, 0x10
/* 80198C80  40 82 00 48 */	bne lbl_80198CC8
lbl_80198C84:
/* 80198C84  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198C88  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 80198C8C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80198C90  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80198C94  C0 42 A1 20 */	lfs f2, lit_4496(r2)
/* 80198C98  C0 22 A1 2C */	lfs f1, lit_5002(r2)
/* 80198C9C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80198CA0  EC 01 00 2A */	fadds f0, f1, f0
/* 80198CA4  EC 02 00 2A */	fadds f0, f2, f0
/* 80198CA8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80198CAC  C0 22 A1 30 */	lfs f1, lit_5003(r2)
/* 80198CB0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80198CB4  EC 21 00 2A */	fadds f1, f1, f0
/* 80198CB8  C0 02 A1 34 */	lfs f0, lit_5004(r2)
/* 80198CBC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80198CC0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80198CC4  48 00 00 B8 */	b lbl_80198D7C
lbl_80198CC8:
/* 80198CC8  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198CCC  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 80198CD0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80198CD4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80198CD8  C0 42 A1 1C */	lfs f2, lit_4495(r2)
/* 80198CDC  C0 22 A1 2C */	lfs f1, lit_5002(r2)
/* 80198CE0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80198CE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80198CE8  EC 02 00 2A */	fadds f0, f2, f0
/* 80198CEC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80198CF0  C0 22 A1 30 */	lfs f1, lit_5003(r2)
/* 80198CF4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80198CF8  EC 21 00 2A */	fadds f1, f1, f0
/* 80198CFC  C0 02 A1 34 */	lfs f0, lit_5004(r2)
/* 80198D00  EC 01 00 28 */	fsubs f0, f1, f0
/* 80198D04  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80198D08  48 00 00 74 */	b lbl_80198D7C
lbl_80198D0C:
/* 80198D0C  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 80198D10  28 00 00 07 */	cmplwi r0, 7
/* 80198D14  40 82 00 38 */	bne lbl_80198D4C
/* 80198D18  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198D1C  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 80198D20  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80198D24  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80198D28  C0 22 A1 38 */	lfs f1, lit_5005(r2)
/* 80198D2C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80198D30  EC 01 00 2A */	fadds f0, f1, f0
/* 80198D34  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80198D38  C0 22 A1 3C */	lfs f1, lit_5006(r2)
/* 80198D3C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80198D40  EC 01 00 2A */	fadds f0, f1, f0
/* 80198D44  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80198D48  48 00 00 34 */	b lbl_80198D7C
lbl_80198D4C:
/* 80198D4C  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198D50  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 80198D54  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80198D58  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80198D5C  C0 22 A1 2C */	lfs f1, lit_5002(r2)
/* 80198D60  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80198D64  EC 01 00 2A */	fadds f0, f1, f0
/* 80198D68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80198D6C  C0 22 A1 30 */	lfs f1, lit_5003(r2)
/* 80198D70  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80198D74  EC 01 00 2A */	fadds f0, f1, f0
/* 80198D78  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_80198D7C:
/* 80198D7C  38 61 00 38 */	addi r3, r1, 0x38
/* 80198D80  80 9F 00 04 */	lwz r4, 4(r31)
/* 80198D84  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80198D88  7F C5 F3 78 */	mr r5, r30
/* 80198D8C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80198D90  48 0D 80 31 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80198D94  88 0D 8A D8 */	lbz r0, data_80451058(r13)
/* 80198D98  28 00 00 06 */	cmplwi r0, 6
/* 80198D9C  41 82 00 0C */	beq lbl_80198DA8
/* 80198DA0  28 00 00 05 */	cmplwi r0, 5
/* 80198DA4  40 82 00 14 */	bne lbl_80198DB8
lbl_80198DA8:
/* 80198DA8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80198DAC  C0 02 A1 40 */	lfs f0, lit_5007(r2)
/* 80198DB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80198DB4  D0 1D 00 04 */	stfs f0, 4(r29)
lbl_80198DB8:
/* 80198DB8  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80198DBC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80198DC0  EC 61 00 2A */	fadds f3, f1, f0
/* 80198DC4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80198DC8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80198DCC  EC 41 00 2A */	fadds f2, f1, f0
/* 80198DD0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80198DD4  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80198DD8  EC 01 00 2A */	fadds f0, f1, f0
/* 80198DDC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80198DE0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80198DE4  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80198DE8  48 00 00 28 */	b lbl_80198E10
lbl_80198DEC:
/* 80198DEC  C0 5D 00 00 */	lfs f2, 0(r29)
/* 80198DF0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80198DF4  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80198DF8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80198DFC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80198E00  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80198E04  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80198E08  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80198E0C  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_80198E10:
/* 80198E10  88 1C 0F 77 */	lbz r0, 0xf77(r28)
/* 80198E14  28 00 00 01 */	cmplwi r0, 1
/* 80198E18  40 82 00 8C */	bne lbl_80198EA4
/* 80198E1C  38 6D 81 68 */	la r3, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 80198E20  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 80198E24  7C 63 02 14 */	add r3, r3, r0
/* 80198E28  88 03 FF FF */	lbz r0, -1(r3)
/* 80198E2C  28 00 00 66 */	cmplwi r0, 0x66
/* 80198E30  40 82 00 40 */	bne lbl_80198E70
/* 80198E34  7F 83 E3 78 */	mr r3, r28
/* 80198E38  38 80 00 08 */	li r4, 8
/* 80198E3C  4B FF E7 BD */	bl isFlag__13dShopSystem_cFi
/* 80198E40  30 03 FF FF */	addic r0, r3, -1
/* 80198E44  7C E0 19 10 */	subfe r7, r0, r3
/* 80198E48  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 80198E4C  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80198E50  38 A1 00 44 */	addi r5, r1, 0x44
/* 80198E54  3C C0 80 43 */	lis r6, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198E58  38 C6 01 10 */	addi r6, r6, g_cursorHIO@l /* 0x80430110@l */
/* 80198E5C  A8 C6 00 3E */	lha r6, 0x3e(r6)
/* 80198E60  38 06 E4 A8 */	addi r0, r6, -7000
/* 80198E64  7C 06 07 34 */	extsh r6, r0
/* 80198E68  4B FF DD 3D */	bl setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb
/* 80198E6C  48 00 02 28 */	b lbl_80199094
lbl_80198E70:
/* 80198E70  7F 83 E3 78 */	mr r3, r28
/* 80198E74  38 80 00 08 */	li r4, 8
/* 80198E78  4B FF E7 81 */	bl isFlag__13dShopSystem_cFi
/* 80198E7C  30 03 FF FF */	addic r0, r3, -1
/* 80198E80  7C E0 19 10 */	subfe r7, r0, r3
/* 80198E84  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 80198E88  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80198E8C  38 A1 00 44 */	addi r5, r1, 0x44
/* 80198E90  3C C0 80 43 */	lis r6, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198E94  38 C6 01 10 */	addi r6, r6, g_cursorHIO@l /* 0x80430110@l */
/* 80198E98  A8 C6 00 3E */	lha r6, 0x3e(r6)
/* 80198E9C  4B FF DD 09 */	bl setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb
/* 80198EA0  48 00 01 F4 */	b lbl_80199094
lbl_80198EA4:
/* 80198EA4  28 00 00 02 */	cmplwi r0, 2
/* 80198EA8  40 82 00 8C */	bne lbl_80198F34
/* 80198EAC  38 6D 81 68 */	la r3, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 80198EB0  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 80198EB4  7C 63 02 14 */	add r3, r3, r0
/* 80198EB8  88 03 FF FF */	lbz r0, -1(r3)
/* 80198EBC  28 00 00 61 */	cmplwi r0, 0x61
/* 80198EC0  40 82 00 40 */	bne lbl_80198F00
/* 80198EC4  7F 83 E3 78 */	mr r3, r28
/* 80198EC8  38 80 00 08 */	li r4, 8
/* 80198ECC  4B FF E7 2D */	bl isFlag__13dShopSystem_cFi
/* 80198ED0  30 03 FF FF */	addic r0, r3, -1
/* 80198ED4  7C E0 19 10 */	subfe r7, r0, r3
/* 80198ED8  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 80198EDC  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80198EE0  38 A1 00 44 */	addi r5, r1, 0x44
/* 80198EE4  3C C0 80 43 */	lis r6, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198EE8  38 C6 01 10 */	addi r6, r6, g_cursorHIO@l /* 0x80430110@l */
/* 80198EEC  A8 C6 00 3E */	lha r6, 0x3e(r6)
/* 80198EF0  38 06 F4 48 */	addi r0, r6, -3000
/* 80198EF4  7C 06 07 34 */	extsh r6, r0
/* 80198EF8  4B FF DC AD */	bl setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb
/* 80198EFC  48 00 01 98 */	b lbl_80199094
lbl_80198F00:
/* 80198F00  7F 83 E3 78 */	mr r3, r28
/* 80198F04  38 80 00 08 */	li r4, 8
/* 80198F08  4B FF E6 F1 */	bl isFlag__13dShopSystem_cFi
/* 80198F0C  30 03 FF FF */	addic r0, r3, -1
/* 80198F10  7C E0 19 10 */	subfe r7, r0, r3
/* 80198F14  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 80198F18  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80198F1C  38 A1 00 44 */	addi r5, r1, 0x44
/* 80198F20  3C C0 80 43 */	lis r6, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198F24  38 C6 01 10 */	addi r6, r6, g_cursorHIO@l /* 0x80430110@l */
/* 80198F28  A8 C6 00 3E */	lha r6, 0x3e(r6)
/* 80198F2C  4B FF DC 79 */	bl setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb
/* 80198F30  48 00 01 64 */	b lbl_80199094
lbl_80198F34:
/* 80198F34  28 00 00 05 */	cmplwi r0, 5
/* 80198F38  40 82 00 A4 */	bne lbl_80198FDC
/* 80198F3C  38 6D 81 68 */	la r3, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 80198F40  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 80198F44  7C 63 02 14 */	add r3, r3, r0
/* 80198F48  88 03 FF FF */	lbz r0, -1(r3)
/* 80198F4C  28 00 00 0E */	cmplwi r0, 0xe
/* 80198F50  41 82 00 14 */	beq lbl_80198F64
/* 80198F54  28 00 00 0F */	cmplwi r0, 0xf
/* 80198F58  41 82 00 0C */	beq lbl_80198F64
/* 80198F5C  28 00 00 10 */	cmplwi r0, 0x10
/* 80198F60  40 82 00 40 */	bne lbl_80198FA0
lbl_80198F64:
/* 80198F64  7F 83 E3 78 */	mr r3, r28
/* 80198F68  38 80 00 08 */	li r4, 8
/* 80198F6C  4B FF E6 8D */	bl isFlag__13dShopSystem_cFi
/* 80198F70  30 03 FF FF */	addic r0, r3, -1
/* 80198F74  7C E0 19 10 */	subfe r7, r0, r3
/* 80198F78  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 80198F7C  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80198F80  38 A1 00 44 */	addi r5, r1, 0x44
/* 80198F84  3C C0 80 43 */	lis r6, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198F88  38 C6 01 10 */	addi r6, r6, g_cursorHIO@l /* 0x80430110@l */
/* 80198F8C  A8 C6 00 3E */	lha r6, 0x3e(r6)
/* 80198F90  38 06 F0 60 */	addi r0, r6, -4000
/* 80198F94  7C 06 07 34 */	extsh r6, r0
/* 80198F98  4B FF DC 0D */	bl setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb
/* 80198F9C  48 00 00 F8 */	b lbl_80199094
lbl_80198FA0:
/* 80198FA0  7F 83 E3 78 */	mr r3, r28
/* 80198FA4  38 80 00 08 */	li r4, 8
/* 80198FA8  4B FF E6 51 */	bl isFlag__13dShopSystem_cFi
/* 80198FAC  30 03 FF FF */	addic r0, r3, -1
/* 80198FB0  7C E0 19 10 */	subfe r7, r0, r3
/* 80198FB4  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 80198FB8  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80198FBC  38 A1 00 44 */	addi r5, r1, 0x44
/* 80198FC0  3C C0 80 43 */	lis r6, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198FC4  38 C6 01 10 */	addi r6, r6, g_cursorHIO@l /* 0x80430110@l */
/* 80198FC8  A8 C6 00 3E */	lha r6, 0x3e(r6)
/* 80198FCC  38 06 F8 30 */	addi r0, r6, -2000
/* 80198FD0  7C 06 07 34 */	extsh r6, r0
/* 80198FD4  4B FF DB D1 */	bl setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb
/* 80198FD8  48 00 00 BC */	b lbl_80199094
lbl_80198FDC:
/* 80198FDC  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 80198FE0  28 00 00 07 */	cmplwi r0, 7
/* 80198FE4  40 82 00 38 */	bne lbl_8019901C
/* 80198FE8  7F 83 E3 78 */	mr r3, r28
/* 80198FEC  38 80 00 08 */	li r4, 8
/* 80198FF0  4B FF E6 09 */	bl isFlag__13dShopSystem_cFi
/* 80198FF4  30 03 FF FF */	addic r0, r3, -1
/* 80198FF8  7C E0 19 10 */	subfe r7, r0, r3
/* 80198FFC  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 80199000  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80199004  38 A1 00 44 */	addi r5, r1, 0x44
/* 80199008  3C C0 80 43 */	lis r6, g_cursorHIO@ha /* 0x80430110@ha */
/* 8019900C  38 C6 01 10 */	addi r6, r6, g_cursorHIO@l /* 0x80430110@l */
/* 80199010  A8 C6 00 40 */	lha r6, 0x40(r6)
/* 80199014  4B FF DB 91 */	bl setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb
/* 80199018  48 00 00 7C */	b lbl_80199094
lbl_8019901C:
/* 8019901C  88 0D 8A D8 */	lbz r0, data_80451058(r13)
/* 80199020  28 00 00 07 */	cmplwi r0, 7
/* 80199024  40 82 00 40 */	bne lbl_80199064
/* 80199028  7F 83 E3 78 */	mr r3, r28
/* 8019902C  38 80 00 08 */	li r4, 8
/* 80199030  4B FF E5 C9 */	bl isFlag__13dShopSystem_cFi
/* 80199034  30 03 FF FF */	addic r0, r3, -1
/* 80199038  7C E0 19 10 */	subfe r7, r0, r3
/* 8019903C  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 80199040  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80199044  38 A1 00 44 */	addi r5, r1, 0x44
/* 80199048  3C C0 80 43 */	lis r6, g_cursorHIO@ha /* 0x80430110@ha */
/* 8019904C  38 C6 01 10 */	addi r6, r6, g_cursorHIO@l /* 0x80430110@l */
/* 80199050  A8 C6 00 3E */	lha r6, 0x3e(r6)
/* 80199054  38 06 F4 48 */	addi r0, r6, -3000
/* 80199058  7C 06 07 34 */	extsh r6, r0
/* 8019905C  4B FF DB 49 */	bl setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb
/* 80199060  48 00 00 34 */	b lbl_80199094
lbl_80199064:
/* 80199064  7F 83 E3 78 */	mr r3, r28
/* 80199068  38 80 00 08 */	li r4, 8
/* 8019906C  4B FF E5 8D */	bl isFlag__13dShopSystem_cFi
/* 80199070  30 03 FF FF */	addic r0, r3, -1
/* 80199074  7C E0 19 10 */	subfe r7, r0, r3
/* 80199078  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 8019907C  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80199080  38 A1 00 44 */	addi r5, r1, 0x44
/* 80199084  3C C0 80 43 */	lis r6, g_cursorHIO@ha /* 0x80430110@ha */
/* 80199088  38 C6 01 10 */	addi r6, r6, g_cursorHIO@l /* 0x80430110@l */
/* 8019908C  A8 C6 00 3E */	lha r6, 0x3e(r6)
/* 80199090  4B FF DB 15 */	bl setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb
lbl_80199094:
/* 80199094  38 60 00 01 */	li r3, 1
/* 80199098  39 61 00 60 */	addi r11, r1, 0x60
/* 8019909C  48 1C 91 89 */	bl _restgpr_28
/* 801990A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801990A4  7C 08 03 A6 */	mtlr r0
/* 801990A8  38 21 00 60 */	addi r1, r1, 0x60
/* 801990AC  4E 80 00 20 */	blr 
