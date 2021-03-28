lbl_80BA0C88:
/* 80BA0C88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA0C8C  7C 08 02 A6 */	mflr r0
/* 80BA0C90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA0C94  39 61 00 20 */	addi r11, r1, 0x20
/* 80BA0C98  4B 7C 15 44 */	b _savegpr_29
/* 80BA0C9C  7C 7F 1B 78 */	mr r31, r3
/* 80BA0CA0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BA0CA4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BA0CA8  40 82 00 DC */	bne lbl_80BA0D84
/* 80BA0CAC  7F E0 FB 79 */	or. r0, r31, r31
/* 80BA0CB0  41 82 00 C8 */	beq lbl_80BA0D78
/* 80BA0CB4  7C 1E 03 78 */	mr r30, r0
/* 80BA0CB8  4B 4D 79 6C */	b __ct__16dBgS_MoveBgActorFv
/* 80BA0CBC  3C 60 80 BA */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80BA0CC0  38 03 12 B0 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80BA0CC4  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80BA0CC8  93 DE 05 AC */	stw r30, 0x5ac(r30)
/* 80BA0CCC  38 00 00 00 */	li r0, 0
/* 80BA0CD0  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80BA0CD4  3C 60 80 BA */	lis r3, __vt__14daObjYtaihou_c@ha
/* 80BA0CD8  38 63 12 C8 */	addi r3, r3, __vt__14daObjYtaihou_c@l
/* 80BA0CDC  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80BA0CE0  38 03 00 28 */	addi r0, r3, 0x28
/* 80BA0CE4  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80BA0CE8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BA0CEC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BA0CF0  90 1E 06 04 */	stw r0, 0x604(r30)
/* 80BA0CF4  38 7E 06 08 */	addi r3, r30, 0x608
/* 80BA0CF8  4B 4E 2A 68 */	b __ct__10dCcD_GSttsFv
/* 80BA0CFC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BA0D00  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BA0D04  90 7E 06 04 */	stw r3, 0x604(r30)
/* 80BA0D08  38 03 00 20 */	addi r0, r3, 0x20
/* 80BA0D0C  90 1E 06 08 */	stw r0, 0x608(r30)
/* 80BA0D10  3B BE 06 28 */	addi r29, r30, 0x628
/* 80BA0D14  7F A3 EB 78 */	mr r3, r29
/* 80BA0D18  4B 4E 2D 10 */	b __ct__12dCcD_GObjInfFv
/* 80BA0D1C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BA0D20  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BA0D24  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BA0D28  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha
/* 80BA0D2C  38 03 12 A4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BA0D30  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BA0D34  3C 60 80 BA */	lis r3, __vt__8cM3dGCyl@ha
/* 80BA0D38  38 03 12 98 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BA0D3C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BA0D40  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BA0D44  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BA0D48  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BA0D4C  38 03 00 58 */	addi r0, r3, 0x58
/* 80BA0D50  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BA0D54  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BA0D58  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BA0D5C  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BA0D60  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BA0D64  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BA0D68  38 03 00 84 */	addi r0, r3, 0x84
/* 80BA0D6C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BA0D70  38 00 FF FF */	li r0, -1
/* 80BA0D74  90 1E 07 64 */	stw r0, 0x764(r30)
lbl_80BA0D78:
/* 80BA0D78  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BA0D7C  60 00 00 08 */	ori r0, r0, 8
/* 80BA0D80  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BA0D84:
/* 80BA0D84  7F E3 FB 78 */	mr r3, r31
/* 80BA0D88  4B FF F0 61 */	bl create1st__14daObjYtaihou_cFv
/* 80BA0D8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BA0D90  4B 7C 14 98 */	b _restgpr_29
/* 80BA0D94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA0D98  7C 08 03 A6 */	mtlr r0
/* 80BA0D9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA0DA0  4E 80 00 20 */	blr 
