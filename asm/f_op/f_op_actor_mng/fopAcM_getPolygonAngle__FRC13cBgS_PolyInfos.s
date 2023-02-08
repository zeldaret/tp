lbl_8001DAE4:
/* 8001DAE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001DAE8  7C 08 02 A6 */	mflr r0
/* 8001DAEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001DAF0  39 61 00 30 */	addi r11, r1, 0x30
/* 8001DAF4  48 34 46 E9 */	bl _savegpr_29
/* 8001DAF8  7C 7D 1B 78 */	mr r29, r3
/* 8001DAFC  7C 9E 23 78 */	mr r30, r4
/* 8001DB00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001DB04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001DB08  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8001DB0C  7F E3 FB 78 */	mr r3, r31
/* 8001DB10  7F A4 EB 78 */	mr r4, r29
/* 8001DB14  48 05 6B 4D */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8001DB18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001DB1C  40 82 00 0C */	bne lbl_8001DB28
/* 8001DB20  38 60 00 00 */	li r3, 0
/* 8001DB24  48 00 00 54 */	b lbl_8001DB78
lbl_8001DB28:
/* 8001DB28  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8001DB2C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8001DB30  90 01 00 18 */	stw r0, 0x18(r1)
/* 8001DB34  7F E3 FB 78 */	mr r3, r31
/* 8001DB38  7F A4 EB 78 */	mr r4, r29
/* 8001DB3C  38 A1 00 08 */	addi r5, r1, 8
/* 8001DB40  48 05 6C 05 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8001DB44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001DB48  40 82 00 18 */	bne lbl_8001DB60
/* 8001DB4C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8001DB50  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8001DB54  90 01 00 18 */	stw r0, 0x18(r1)
/* 8001DB58  38 60 00 00 */	li r3, 0
/* 8001DB5C  48 00 00 1C */	b lbl_8001DB78
lbl_8001DB60:
/* 8001DB60  38 61 00 08 */	addi r3, r1, 8
/* 8001DB64  7F C4 F3 78 */	mr r4, r30
/* 8001DB68  48 00 00 71 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 8001DB6C  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8001DB70  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8001DB74  90 01 00 18 */	stw r0, 0x18(r1)
lbl_8001DB78:
/* 8001DB78  39 61 00 30 */	addi r11, r1, 0x30
/* 8001DB7C  48 34 46 AD */	bl _restgpr_29
/* 8001DB80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001DB84  7C 08 03 A6 */	mtlr r0
/* 8001DB88  38 21 00 30 */	addi r1, r1, 0x30
/* 8001DB8C  4E 80 00 20 */	blr 
