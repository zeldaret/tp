lbl_80D3FDCC:
/* 80D3FDCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3FDD0  7C 08 02 A6 */	mflr r0
/* 80D3FDD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3FDD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3FDDC  4B 62 24 01 */	bl _savegpr_29
/* 80D3FDE0  7C 7F 1B 78 */	mr r31, r3
/* 80D3FDE4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D3FDE8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D3FDEC  40 82 01 0C */	bne lbl_80D3FEF8
/* 80D3FDF0  7F E0 FB 79 */	or. r0, r31, r31
/* 80D3FDF4  41 82 00 F8 */	beq lbl_80D3FEEC
/* 80D3FDF8  7C 1E 03 78 */	mr r30, r0
/* 80D3FDFC  4B 33 88 29 */	bl __ct__16dBgS_MoveBgActorFv
/* 80D3FE00  3C 60 80 D4 */	lis r3, __vt__9daZdoor_c@ha /* 0x80D40448@ha */
/* 80D3FE04  38 03 04 48 */	addi r0, r3, __vt__9daZdoor_c@l /* 0x80D40448@l */
/* 80D3FE08  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D3FE0C  3B BE 05 AC */	addi r29, r30, 0x5ac
/* 80D3FE10  7F A3 EB 78 */	mr r3, r29
/* 80D3FE14  4B 33 62 8D */	bl __ct__9dBgS_AcchFv
/* 80D3FE18  3C 60 80 D4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D40424@ha */
/* 80D3FE1C  38 63 04 24 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D40424@l */
/* 80D3FE20  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80D3FE24  38 03 00 0C */	addi r0, r3, 0xc
/* 80D3FE28  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80D3FE2C  38 03 00 18 */	addi r0, r3, 0x18
/* 80D3FE30  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80D3FE34  38 7D 00 14 */	addi r3, r29, 0x14
/* 80D3FE38  4B 33 90 31 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D3FE3C  38 7E 07 84 */	addi r3, r30, 0x784
/* 80D3FE40  4B 33 60 6D */	bl __ct__12dBgS_AcchCirFv
/* 80D3FE44  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D3FE48  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D3FE4C  90 1E 07 DC */	stw r0, 0x7dc(r30)
/* 80D3FE50  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80D3FE54  4B 34 39 0D */	bl __ct__10dCcD_GSttsFv
/* 80D3FE58  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D3FE5C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D3FE60  90 7E 07 DC */	stw r3, 0x7dc(r30)
/* 80D3FE64  38 03 00 20 */	addi r0, r3, 0x20
/* 80D3FE68  90 1E 07 E0 */	stw r0, 0x7e0(r30)
/* 80D3FE6C  38 7E 08 00 */	addi r3, r30, 0x800
/* 80D3FE70  3C 80 80 D4 */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80D40074@ha */
/* 80D3FE74  38 84 00 74 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80D40074@l */
/* 80D3FE78  3C A0 80 D4 */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80D3FFA8@ha */
/* 80D3FE7C  38 A5 FF A8 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80D3FFA8@l */
/* 80D3FE80  38 C0 01 3C */	li r6, 0x13c
/* 80D3FE84  38 E0 00 04 */	li r7, 4
/* 80D3FE88  4B 62 1E D9 */	bl __construct_array
/* 80D3FE8C  3B BE 0C F0 */	addi r29, r30, 0xcf0
/* 80D3FE90  7F A3 EB 78 */	mr r3, r29
/* 80D3FE94  4B 34 3B 95 */	bl __ct__12dCcD_GObjInfFv
/* 80D3FE98  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D3FE9C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D3FEA0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D3FEA4  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D40418@ha */
/* 80D3FEA8  38 03 04 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D40418@l */
/* 80D3FEAC  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80D3FEB0  3C 60 80 D4 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D4040C@ha */
/* 80D3FEB4  38 03 04 0C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D4040C@l */
/* 80D3FEB8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D3FEBC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D3FEC0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D3FEC4  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80D3FEC8  38 03 00 58 */	addi r0, r3, 0x58
/* 80D3FECC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D3FED0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D3FED4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D3FED8  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80D3FEDC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D3FEE0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D3FEE4  38 03 00 84 */	addi r0, r3, 0x84
/* 80D3FEE8  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80D3FEEC:
/* 80D3FEEC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D3FEF0  60 00 00 08 */	ori r0, r0, 8
/* 80D3FEF4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D3FEF8:
/* 80D3FEF8  7F E3 FB 78 */	mr r3, r31
/* 80D3FEFC  4B FF FA F5 */	bl create1st__9daZdoor_cFv
/* 80D3FF00  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3FF04  4B 62 23 25 */	bl _restgpr_29
/* 80D3FF08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3FF0C  7C 08 03 A6 */	mtlr r0
/* 80D3FF10  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3FF14  4E 80 00 20 */	blr 
