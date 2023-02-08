lbl_8015556C:
/* 8015556C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80155570  7C 08 02 A6 */	mflr r0
/* 80155574  90 01 00 34 */	stw r0, 0x34(r1)
/* 80155578  39 61 00 30 */	addi r11, r1, 0x30
/* 8015557C  48 20 CC 61 */	bl _savegpr_29
/* 80155580  7C 7D 1B 78 */	mr r29, r3
/* 80155584  7C 9E 23 78 */	mr r30, r4
/* 80155588  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8015558C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80155590  90 01 00 18 */	stw r0, 0x18(r1)
/* 80155594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80155598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015559C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 801555A0  7F E3 FB 78 */	mr r3, r31
/* 801555A4  7F A4 EB 78 */	mr r4, r29
/* 801555A8  4B F1 F0 B9 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 801555AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801555B0  41 82 00 5C */	beq lbl_8015560C
/* 801555B4  7F E3 FB 78 */	mr r3, r31
/* 801555B8  7F A4 EB 78 */	mr r4, r29
/* 801555BC  38 A1 00 08 */	addi r5, r1, 8
/* 801555C0  4B F1 F1 85 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 801555C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801555C8  41 82 00 14 */	beq lbl_801555DC
/* 801555CC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801555D0  48 11 2C 15 */	bl cBgW_CheckBGround__Ff
/* 801555D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801555D8  40 82 00 18 */	bne lbl_801555F0
lbl_801555DC:
/* 801555DC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 801555E0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 801555E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 801555E8  38 60 00 00 */	li r3, 0
/* 801555EC  48 00 00 30 */	b lbl_8015561C
lbl_801555F0:
/* 801555F0  38 61 00 08 */	addi r3, r1, 8
/* 801555F4  7F C4 F3 78 */	mr r4, r30
/* 801555F8  4B EC 85 E1 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 801555FC  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80155600  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80155604  90 01 00 18 */	stw r0, 0x18(r1)
/* 80155608  48 00 00 14 */	b lbl_8015561C
lbl_8015560C:
/* 8015560C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80155610  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80155614  90 01 00 18 */	stw r0, 0x18(r1)
/* 80155618  38 60 00 00 */	li r3, 0
lbl_8015561C:
/* 8015561C  39 61 00 30 */	addi r11, r1, 0x30
/* 80155620  48 20 CC 09 */	bl _restgpr_29
/* 80155624  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80155628  7C 08 03 A6 */	mtlr r0
/* 8015562C  38 21 00 30 */	addi r1, r1, 0x30
/* 80155630  4E 80 00 20 */	blr 
