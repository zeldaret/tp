lbl_80A79D94:
/* 80A79D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A79D98  7C 08 02 A6 */	mflr r0
/* 80A79D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A79DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A79DA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A79DA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A79DAC  7C 9F 23 78 */	mr r31, r4
/* 80A79DB0  41 82 00 94 */	beq lbl_80A79E44
/* 80A79DB4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A79DB8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A79DBC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A79DC0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A79DC4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A79DC8  38 03 00 84 */	addi r0, r3, 0x84
/* 80A79DCC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A79DD0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80A79DD4  41 82 00 54 */	beq lbl_80A79E28
/* 80A79DD8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A79DDC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A79DE0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A79DE4  38 03 00 58 */	addi r0, r3, 0x58
/* 80A79DE8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A79DEC  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80A79DF0  41 82 00 10 */	beq lbl_80A79E00
/* 80A79DF4  3C 60 80 A8 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A7BEA0@ha */
/* 80A79DF8  38 03 BE A0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A7BEA0@l */
/* 80A79DFC  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80A79E00:
/* 80A79E00  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80A79E04  41 82 00 24 */	beq lbl_80A79E28
/* 80A79E08  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A79E0C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A79E10  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A79E14  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80A79E18  41 82 00 10 */	beq lbl_80A79E28
/* 80A79E1C  3C 60 80 A8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A7BEAC@ha */
/* 80A79E20  38 03 BE AC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A7BEAC@l */
/* 80A79E24  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80A79E28:
/* 80A79E28  7F C3 F3 78 */	mr r3, r30
/* 80A79E2C  38 80 00 00 */	li r4, 0
/* 80A79E30  4B 60 A2 B5 */	bl __dt__12dCcD_GObjInfFv
/* 80A79E34  7F E0 07 35 */	extsh. r0, r31
/* 80A79E38  40 81 00 0C */	ble lbl_80A79E44
/* 80A79E3C  7F C3 F3 78 */	mr r3, r30
/* 80A79E40  4B 85 4E FD */	bl __dl__FPv
lbl_80A79E44:
/* 80A79E44  7F C3 F3 78 */	mr r3, r30
/* 80A79E48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A79E4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A79E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A79E54  7C 08 03 A6 */	mtlr r0
/* 80A79E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80A79E5C  4E 80 00 20 */	blr 
