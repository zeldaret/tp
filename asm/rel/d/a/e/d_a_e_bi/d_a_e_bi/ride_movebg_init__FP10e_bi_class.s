lbl_8068C1E8:
/* 8068C1E8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8068C1EC  7C 08 02 A6 */	mflr r0
/* 8068C1F0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8068C1F4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8068C1F8  4B CD 5F DD */	bl _savegpr_27
/* 8068C1FC  7C 7C 1B 78 */	mr r28, r3
/* 8068C200  3B 61 00 2C */	addi r27, r1, 0x2c
/* 8068C204  7F 63 DB 78 */	mr r3, r27
/* 8068C208  4B 9E B3 75 */	bl __ct__11dBgS_GndChkFv
/* 8068C20C  3C 60 80 69 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x8068DA98@ha */
/* 8068C210  38 63 DA 98 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x8068DA98@l */
/* 8068C214  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8068C218  3B E3 00 0C */	addi r31, r3, 0xc
/* 8068C21C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8068C220  3B C3 00 18 */	addi r30, r3, 0x18
/* 8068C224  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8068C228  3B A3 00 24 */	addi r29, r3, 0x24
/* 8068C22C  93 A1 00 78 */	stw r29, 0x78(r1)
/* 8068C230  38 7B 00 3C */	addi r3, r27, 0x3c
/* 8068C234  4B 9E CC 35 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8068C238  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8068C23C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8068C240  3C 60 80 69 */	lis r3, lit_4738@ha /* 0x8068D890@ha */
/* 8068C244  C0 23 D8 90 */	lfs f1, lit_4738@l(r3)  /* 0x8068D890@l */
/* 8068C248  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8068C24C  EC 01 00 2A */	fadds f0, f1, f0
/* 8068C250  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8068C254  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8068C258  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8068C25C  7F 63 DB 78 */	mr r3, r27
/* 8068C260  38 81 00 14 */	addi r4, r1, 0x14
/* 8068C264  4B BD BA A9 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 8068C268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068C26C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068C270  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8068C274  7F 64 DB 78 */	mr r4, r27
/* 8068C278  4B 9E 82 29 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8068C27C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8068C280  FC 00 08 18 */	frsp f0, f1
/* 8068C284  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8068C288  3C 60 80 69 */	lis r3, s_fw_sub__FPvPv@ha /* 0x8068C068@ha */
/* 8068C28C  38 63 C0 68 */	addi r3, r3, s_fw_sub__FPvPv@l /* 0x8068C068@l */
/* 8068C290  7F 84 E3 78 */	mr r4, r28
/* 8068C294  4B 99 50 A5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8068C298  7C 7B 1B 79 */	or. r27, r3, r3
/* 8068C29C  41 82 00 78 */	beq lbl_8068C314
/* 8068C2A0  38 61 00 08 */	addi r3, r1, 8
/* 8068C2A4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8068C2A8  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8068C2AC  4B BD A8 89 */	bl __mi__4cXyzCFRC3Vec
/* 8068C2B0  C0 01 00 08 */	lfs f0, 8(r1)
/* 8068C2B4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8068C2B8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8068C2BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8068C2C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8068C2C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8068C2C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8068C2CC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8068C2D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8068C2D4  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8068C2D8  7C 00 00 D0 */	neg r0, r0
/* 8068C2DC  7C 04 07 34 */	extsh r4, r0
/* 8068C2E0  4B 98 00 FD */	bl mDoMtx_YrotS__FPA4_fs
/* 8068C2E4  38 61 00 20 */	addi r3, r1, 0x20
/* 8068C2E8  38 9C 0B B0 */	addi r4, r28, 0xbb0
/* 8068C2EC  4B BE 4C 01 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8068C2F0  28 1B 00 00 */	cmplwi r27, 0
/* 8068C2F4  41 82 00 0C */	beq lbl_8068C300
/* 8068C2F8  80 1B 00 04 */	lwz r0, 4(r27)
/* 8068C2FC  48 00 00 08 */	b lbl_8068C304
lbl_8068C300:
/* 8068C300  38 00 FF FF */	li r0, -1
lbl_8068C304:
/* 8068C304  90 1C 0B A8 */	stw r0, 0xba8(r28)
/* 8068C308  88 7C 0B AD */	lbz r3, 0xbad(r28)
/* 8068C30C  38 03 00 01 */	addi r0, r3, 1
/* 8068C310  98 1C 0B AD */	stb r0, 0xbad(r28)
lbl_8068C314:
/* 8068C314  3C 60 80 69 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x8068DA98@ha */
/* 8068C318  38 03 DA 98 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x8068DA98@l */
/* 8068C31C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8068C320  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8068C324  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8068C328  93 A1 00 78 */	stw r29, 0x78(r1)
/* 8068C32C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8068C330  38 80 00 00 */	li r4, 0
/* 8068C334  4B 9E B2 BD */	bl __dt__11dBgS_GndChkFv
/* 8068C338  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8068C33C  4B CD 5E E5 */	bl _restgpr_27
/* 8068C340  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8068C344  7C 08 03 A6 */	mtlr r0
/* 8068C348  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8068C34C  4E 80 00 20 */	blr 
