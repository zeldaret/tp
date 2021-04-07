lbl_80150230:
/* 80150230  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80150234  7C 08 02 A6 */	mflr r0
/* 80150238  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015023C  39 61 00 30 */	addi r11, r1, 0x30
/* 80150240  48 21 1F 9D */	bl _savegpr_29
/* 80150244  7C 7D 1B 78 */	mr r29, r3
/* 80150248  7C 9E 23 78 */	mr r30, r4
/* 8015024C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80150250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80150254  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80150258  7F E3 FB 78 */	mr r3, r31
/* 8015025C  7F A4 EB 78 */	mr r4, r29
/* 80150260  4B F2 44 01 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 80150264  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80150268  41 82 00 68 */	beq lbl_801502D0
/* 8015026C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80150270  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80150274  90 01 00 18 */	stw r0, 0x18(r1)
/* 80150278  7F E3 FB 78 */	mr r3, r31
/* 8015027C  7F A4 EB 78 */	mr r4, r29
/* 80150280  38 A1 00 08 */	addi r5, r1, 8
/* 80150284  4B F2 44 C1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80150288  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015028C  41 82 00 14 */	beq lbl_801502A0
/* 80150290  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80150294  48 11 7F 51 */	bl cBgW_CheckBGround__Ff
/* 80150298  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015029C  40 82 00 18 */	bne lbl_801502B4
lbl_801502A0:
/* 801502A0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 801502A4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 801502A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 801502AC  38 60 00 00 */	li r3, 0
/* 801502B0  48 00 00 24 */	b lbl_801502D4
lbl_801502B4:
/* 801502B4  38 61 00 08 */	addi r3, r1, 8
/* 801502B8  7F C4 F3 78 */	mr r4, r30
/* 801502BC  4B EC D9 1D */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 801502C0  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 801502C4  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 801502C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 801502CC  48 00 00 08 */	b lbl_801502D4
lbl_801502D0:
/* 801502D0  38 60 00 00 */	li r3, 0
lbl_801502D4:
/* 801502D4  39 61 00 30 */	addi r11, r1, 0x30
/* 801502D8  48 21 1F 51 */	bl _restgpr_29
/* 801502DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801502E0  7C 08 03 A6 */	mtlr r0
/* 801502E4  38 21 00 30 */	addi r1, r1, 0x30
/* 801502E8  4E 80 00 20 */	blr 
