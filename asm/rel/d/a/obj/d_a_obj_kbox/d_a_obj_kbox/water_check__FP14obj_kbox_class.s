lbl_80C3DBE4:
/* 80C3DBE4  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80C3DBE8  7C 08 02 A6 */	mflr r0
/* 80C3DBEC  90 01 01 64 */	stw r0, 0x164(r1)
/* 80C3DBF0  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80C3DBF4  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 80C3DBF8  39 61 01 50 */	addi r11, r1, 0x150
/* 80C3DBFC  4B 72 45 D5 */	bl _savegpr_26
/* 80C3DC00  7C 7B 1B 78 */	mr r27, r3
/* 80C3DC04  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80C3DC08  4B 43 A0 61 */	bl __ct__11dBgS_LinChkFv
/* 80C3DC0C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C3DC10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C3DC14  3C 60 80 C4 */	lis r3, lit_3829@ha /* 0x80C3F090@ha */
/* 80C3DC18  C0 23 F0 90 */	lfs f1, lit_3829@l(r3)  /* 0x80C3F090@l */
/* 80C3DC1C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80C3DC20  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3DC24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C3DC28  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C3DC2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C3DC30  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80C3DC34  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80C3DC38  38 A1 00 14 */	addi r5, r1, 0x14
/* 80C3DC3C  7F 66 DB 78 */	mr r6, r27
/* 80C3DC40  4B 43 A1 25 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C3DC44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3DC48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3DC4C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80C3DC50  7F E3 FB 78 */	mr r3, r31
/* 80C3DC54  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80C3DC58  4B 43 67 5D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C3DC5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3DC60  41 82 00 18 */	beq lbl_80C3DC78
/* 80C3DC64  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 80C3DC68  3C 60 80 C4 */	lis r3, lit_3794@ha /* 0x80C3F080@ha */
/* 80C3DC6C  C0 03 F0 80 */	lfs f0, lit_3794@l(r3)  /* 0x80C3F080@l */
/* 80C3DC70  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C3DC74  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80C3DC78:
/* 80C3DC78  38 61 00 74 */	addi r3, r1, 0x74
/* 80C3DC7C  4B 43 9B 35 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80C3DC80  3B 41 00 20 */	addi r26, r1, 0x20
/* 80C3DC84  7F 43 D3 78 */	mr r3, r26
/* 80C3DC88  4B 43 98 F5 */	bl __ct__11dBgS_GndChkFv
/* 80C3DC8C  3C 60 80 C4 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80C3F200@ha */
/* 80C3DC90  38 63 F2 00 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x80C3F200@l */
/* 80C3DC94  90 61 00 30 */	stw r3, 0x30(r1)
/* 80C3DC98  3B C3 00 0C */	addi r30, r3, 0xc
/* 80C3DC9C  93 C1 00 40 */	stw r30, 0x40(r1)
/* 80C3DCA0  3B A3 00 18 */	addi r29, r3, 0x18
/* 80C3DCA4  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 80C3DCA8  3B 83 00 24 */	addi r28, r3, 0x24
/* 80C3DCAC  93 81 00 6C */	stw r28, 0x6c(r1)
/* 80C3DCB0  38 7A 00 3C */	addi r3, r26, 0x3c
/* 80C3DCB4  4B 43 B1 B5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C3DCB8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C3DCBC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C3DCC0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C3DCC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C3DCC8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C3DCCC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C3DCD0  38 61 00 74 */	addi r3, r1, 0x74
/* 80C3DCD4  38 81 00 08 */	addi r4, r1, 8
/* 80C3DCD8  4B 62 A0 35 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 80C3DCDC  7F E3 FB 78 */	mr r3, r31
/* 80C3DCE0  38 81 00 74 */	addi r4, r1, 0x74
/* 80C3DCE4  4B 43 67 BD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80C3DCE8  FF E0 08 90 */	fmr f31, f1
/* 80C3DCEC  7F 43 D3 78 */	mr r3, r26
/* 80C3DCF0  38 81 00 08 */	addi r4, r1, 8
/* 80C3DCF4  4B 62 A0 19 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 80C3DCF8  7F E3 FB 78 */	mr r3, r31
/* 80C3DCFC  7F 44 D3 78 */	mr r4, r26
/* 80C3DD00  4B 43 67 A1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80C3DD04  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C3DD08  40 81 00 5C */	ble lbl_80C3DD64
/* 80C3DD0C  D3 FB 05 88 */	stfs f31, 0x588(r27)
/* 80C3DD10  C0 3B 05 88 */	lfs f1, 0x588(r27)
/* 80C3DD14  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80C3DD18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3DD1C  40 81 00 48 */	ble lbl_80C3DD64
/* 80C3DD20  3C 60 80 C4 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80C3F200@ha */
/* 80C3DD24  38 03 F2 00 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x80C3F200@l */
/* 80C3DD28  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C3DD2C  93 C1 00 40 */	stw r30, 0x40(r1)
/* 80C3DD30  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 80C3DD34  93 81 00 6C */	stw r28, 0x6c(r1)
/* 80C3DD38  7F 43 D3 78 */	mr r3, r26
/* 80C3DD3C  38 80 00 00 */	li r4, 0
/* 80C3DD40  4B 43 98 B1 */	bl __dt__11dBgS_GndChkFv
/* 80C3DD44  38 61 00 74 */	addi r3, r1, 0x74
/* 80C3DD48  38 80 FF FF */	li r4, -1
/* 80C3DD4C  4B 43 9A FD */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80C3DD50  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80C3DD54  38 80 FF FF */	li r4, -1
/* 80C3DD58  4B 43 9F 85 */	bl __dt__11dBgS_LinChkFv
/* 80C3DD5C  38 60 00 01 */	li r3, 1
/* 80C3DD60  48 00 00 44 */	b lbl_80C3DDA4
lbl_80C3DD64:
/* 80C3DD64  3C 60 80 C4 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80C3F200@ha */
/* 80C3DD68  38 03 F2 00 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x80C3F200@l */
/* 80C3DD6C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C3DD70  93 C1 00 40 */	stw r30, 0x40(r1)
/* 80C3DD74  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 80C3DD78  93 81 00 6C */	stw r28, 0x6c(r1)
/* 80C3DD7C  38 61 00 20 */	addi r3, r1, 0x20
/* 80C3DD80  38 80 00 00 */	li r4, 0
/* 80C3DD84  4B 43 98 6D */	bl __dt__11dBgS_GndChkFv
/* 80C3DD88  38 61 00 74 */	addi r3, r1, 0x74
/* 80C3DD8C  38 80 FF FF */	li r4, -1
/* 80C3DD90  4B 43 9A B9 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80C3DD94  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80C3DD98  38 80 FF FF */	li r4, -1
/* 80C3DD9C  4B 43 9F 41 */	bl __dt__11dBgS_LinChkFv
/* 80C3DDA0  38 60 00 00 */	li r3, 0
lbl_80C3DDA4:
/* 80C3DDA4  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 80C3DDA8  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 80C3DDAC  39 61 01 50 */	addi r11, r1, 0x150
/* 80C3DDB0  4B 72 44 6D */	bl _restgpr_26
/* 80C3DDB4  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80C3DDB8  7C 08 03 A6 */	mtlr r0
/* 80C3DDBC  38 21 01 60 */	addi r1, r1, 0x160
/* 80C3DDC0  4E 80 00 20 */	blr 
