lbl_802BBD94:
/* 802BBD94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BBD98  7C 08 02 A6 */	mflr r0
/* 802BBD9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BBDA0  39 61 00 20 */	addi r11, r1, 0x20
/* 802BBDA4  48 0A 64 35 */	bl _savegpr_28
/* 802BBDA8  7C 7C 1B 78 */	mr r28, r3
/* 802BBDAC  7C 9D 23 78 */	mr r29, r4
/* 802BBDB0  7C BE 2B 78 */	mr r30, r5
/* 802BBDB4  7C DF 33 78 */	mr r31, r6
/* 802BBDB8  3C 60 80 3D */	lis r3, __vt__10JAIAudible@ha /* 0x803C9820@ha */
/* 802BBDBC  38 03 98 20 */	addi r0, r3, __vt__10JAIAudible@l /* 0x803C9820@l */
/* 802BBDC0  90 1C 00 00 */	stw r0, 0(r28)
/* 802BBDC4  3C 60 80 3D */	lis r3, __vt__9Z2Audible@ha /* 0x803CACB8@ha */
/* 802BBDC8  38 03 AC B8 */	addi r0, r3, __vt__9Z2Audible@l /* 0x803CACB8@l */
/* 802BBDCC  90 1C 00 00 */	stw r0, 0(r28)
/* 802BBDD0  38 7C 00 2C */	addi r3, r28, 0x2c
/* 802BBDD4  3C 80 80 2C */	lis r4, __ct__16Z2AudibleChannelFv@ha /* 0x802BBE74@ha */
/* 802BBDD8  38 84 BE 74 */	addi r4, r4, __ct__16Z2AudibleChannelFv@l /* 0x802BBE74@l */
/* 802BBDDC  38 A0 00 00 */	li r5, 0
/* 802BBDE0  38 C0 00 38 */	li r6, 0x38
/* 802BBDE4  38 E0 00 01 */	li r7, 1
/* 802BBDE8  48 0A 5F 79 */	bl __construct_array
/* 802BBDEC  38 00 FF FF */	li r0, -1
/* 802BBDF0  90 1C 00 10 */	stw r0, 0x10(r28)
/* 802BBDF4  38 7C 00 14 */	addi r3, r28, 0x14
/* 802BBDF8  38 9C 00 04 */	addi r4, r28, 4
/* 802BBDFC  7F A5 EB 78 */	mr r5, r29
/* 802BBE00  7F C6 F3 78 */	mr r6, r30
/* 802BBE04  4B FF FF 15 */	bl func_802BBD18
/* 802BBE08  38 60 00 00 */	li r3, 0
/* 802BBE0C  38 00 00 01 */	li r0, 1
/* 802BBE10  7C 00 18 30 */	slw r0, r0, r3
/* 802BBE14  7F E0 00 39 */	and. r0, r31, r0
/* 802BBE18  40 82 00 38 */	bne lbl_802BBE50
/* 802BBE1C  C0 62 C0 A4 */	lfs f3, lit_894(r2)
/* 802BBE20  D0 7C 00 2C */	stfs f3, 0x2c(r28)
/* 802BBE24  D0 7C 00 34 */	stfs f3, 0x34(r28)
/* 802BBE28  C0 42 C0 A0 */	lfs f2, lit_848(r2)
/* 802BBE2C  D0 5C 00 30 */	stfs f2, 0x30(r28)
/* 802BBE30  C0 22 C0 A8 */	lfs f1, lit_895(r2)
/* 802BBE34  D0 3C 00 38 */	stfs f1, 0x38(r28)
/* 802BBE38  D0 5C 00 3C */	stfs f2, 0x3c(r28)
/* 802BBE3C  C0 02 C0 AC */	lfs f0, lit_896(r2)
/* 802BBE40  D0 1C 00 54 */	stfs f0, 0x54(r28)
/* 802BBE44  D0 3C 00 58 */	stfs f1, 0x58(r28)
/* 802BBE48  D0 5C 00 5C */	stfs f2, 0x5c(r28)
/* 802BBE4C  D0 7C 00 60 */	stfs f3, 0x60(r28)
lbl_802BBE50:
/* 802BBE50  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BBE54  D0 1C 00 64 */	stfs f0, 0x64(r28)
/* 802BBE58  7F 83 E3 78 */	mr r3, r28
/* 802BBE5C  39 61 00 20 */	addi r11, r1, 0x20
/* 802BBE60  48 0A 63 C5 */	bl _restgpr_28
/* 802BBE64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BBE68  7C 08 03 A6 */	mtlr r0
/* 802BBE6C  38 21 00 20 */	addi r1, r1, 0x20
/* 802BBE70  4E 80 00 20 */	blr 
