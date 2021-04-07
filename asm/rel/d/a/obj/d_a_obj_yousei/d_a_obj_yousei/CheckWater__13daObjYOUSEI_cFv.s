lbl_804D0988:
/* 804D0988  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804D098C  7C 08 02 A6 */	mflr r0
/* 804D0990  90 01 00 84 */	stw r0, 0x84(r1)
/* 804D0994  39 61 00 80 */	addi r11, r1, 0x80
/* 804D0998  4B E9 18 45 */	bl _savegpr_29
/* 804D099C  7C 7F 1B 78 */	mr r31, r3
/* 804D09A0  3C 60 80 4D */	lis r3, ccSphSrc@ha /* 0x804D15F0@ha */
/* 804D09A4  3B C3 15 F0 */	addi r30, r3, ccSphSrc@l /* 0x804D15F0@l */
/* 804D09A8  3B A1 00 14 */	addi r29, r1, 0x14
/* 804D09AC  7F A3 EB 78 */	mr r3, r29
/* 804D09B0  4B BA 6B CD */	bl __ct__11dBgS_GndChkFv
/* 804D09B4  3C 60 80 4D */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x804D17B4@ha */
/* 804D09B8  38 63 17 B4 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x804D17B4@l */
/* 804D09BC  90 61 00 24 */	stw r3, 0x24(r1)
/* 804D09C0  38 03 00 0C */	addi r0, r3, 0xc
/* 804D09C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D09C8  38 03 00 18 */	addi r0, r3, 0x18
/* 804D09CC  90 01 00 50 */	stw r0, 0x50(r1)
/* 804D09D0  38 03 00 24 */	addi r0, r3, 0x24
/* 804D09D4  90 01 00 60 */	stw r0, 0x60(r1)
/* 804D09D8  38 7D 00 3C */	addi r3, r29, 0x3c
/* 804D09DC  4B BA 84 8D */	bl SetObj__16dBgS_PolyPassChkFv
/* 804D09E0  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_All@ha /* 0x803AB6E8@ha */
/* 804D09E4  38 63 B6 E8 */	addi r3, r3, __vt__18dBgS_ObjGndChk_All@l /* 0x803AB6E8@l */
/* 804D09E8  90 61 00 24 */	stw r3, 0x24(r1)
/* 804D09EC  38 03 00 0C */	addi r0, r3, 0xc
/* 804D09F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D09F4  38 03 00 18 */	addi r0, r3, 0x18
/* 804D09F8  90 01 00 50 */	stw r0, 0x50(r1)
/* 804D09FC  38 03 00 24 */	addi r0, r3, 0x24
/* 804D0A00  90 01 00 60 */	stw r0, 0x60(r1)
/* 804D0A04  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804D0A08  60 00 00 03 */	ori r0, r0, 3
/* 804D0A0C  90 01 00 64 */	stw r0, 0x64(r1)
/* 804D0A10  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 804D0A14  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 804D0A18  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804D0A1C  EC 21 00 2A */	fadds f1, f1, f0
/* 804D0A20  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804D0A24  D0 01 00 08 */	stfs f0, 8(r1)
/* 804D0A28  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804D0A2C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804D0A30  7F A3 EB 78 */	mr r3, r29
/* 804D0A34  38 81 00 08 */	addi r4, r1, 8
/* 804D0A38  4B D9 72 F1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 804D0A3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D0A40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D0A44  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 804D0A48  7F A3 EB 78 */	mr r3, r29
/* 804D0A4C  38 81 00 14 */	addi r4, r1, 0x14
/* 804D0A50  4B BA 3A 51 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804D0A54  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804D0A58  C0 5E 01 24 */	lfs f2, 0x124(r30)
/* 804D0A5C  FC 00 08 18 */	frsp f0, f1
/* 804D0A60  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 804D0A64  41 82 00 44 */	beq lbl_804D0AA8
/* 804D0A68  7F A3 EB 78 */	mr r3, r29
/* 804D0A6C  38 81 00 28 */	addi r4, r1, 0x28
/* 804D0A70  4B BA 43 E1 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 804D0A74  2C 03 00 07 */	cmpwi r3, 7
/* 804D0A78  40 82 00 30 */	bne lbl_804D0AA8
/* 804D0A7C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804D0A80  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804D0A84  EC 21 00 28 */	fsubs f1, f1, f0
/* 804D0A88  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 804D0A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D0A90  40 80 00 18 */	bge lbl_804D0AA8
/* 804D0A94  38 61 00 14 */	addi r3, r1, 0x14
/* 804D0A98  38 80 FF FF */	li r4, -1
/* 804D0A9C  4B BA 6E 4D */	bl __dt__18dBgS_ObjGndChk_AllFv
/* 804D0AA0  38 60 00 01 */	li r3, 1
/* 804D0AA4  48 00 00 14 */	b lbl_804D0AB8
lbl_804D0AA8:
/* 804D0AA8  38 61 00 14 */	addi r3, r1, 0x14
/* 804D0AAC  38 80 FF FF */	li r4, -1
/* 804D0AB0  4B BA 6E 39 */	bl __dt__18dBgS_ObjGndChk_AllFv
/* 804D0AB4  38 60 00 00 */	li r3, 0
lbl_804D0AB8:
/* 804D0AB8  39 61 00 80 */	addi r11, r1, 0x80
/* 804D0ABC  4B E9 17 6D */	bl _restgpr_29
/* 804D0AC0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D0AC4  7C 08 03 A6 */	mtlr r0
/* 804D0AC8  38 21 00 80 */	addi r1, r1, 0x80
/* 804D0ACC  4E 80 00 20 */	blr 
