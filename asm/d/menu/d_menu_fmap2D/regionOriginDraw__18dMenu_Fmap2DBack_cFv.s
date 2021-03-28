lbl_801D3AF8:
/* 801D3AF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D3AFC  7C 08 02 A6 */	mflr r0
/* 801D3B00  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D3B04  39 61 00 30 */	addi r11, r1, 0x30
/* 801D3B08  48 18 E6 D5 */	bl _savegpr_29
/* 801D3B0C  7C 7D 1B 78 */	mr r29, r3
/* 801D3B10  3B C0 00 00 */	li r30, 0
/* 801D3B14  3B E0 00 00 */	li r31, 0
lbl_801D3B18:
/* 801D3B18  7C 9D FA 14 */	add r4, r29, r31
/* 801D3B1C  80 04 0C B4 */	lwz r0, 0xcb4(r4)
/* 801D3B20  28 00 00 00 */	cmplwi r0, 0
/* 801D3B24  41 82 00 70 */	beq lbl_801D3B94
/* 801D3B28  7F A3 EB 78 */	mr r3, r29
/* 801D3B2C  C0 24 10 04 */	lfs f1, 0x1004(r4)
/* 801D3B30  C0 1D 0F C8 */	lfs f0, 0xfc8(r29)
/* 801D3B34  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D3B38  C0 44 10 24 */	lfs f2, 0x1024(r4)
/* 801D3B3C  C0 1D 0F CC */	lfs f0, 0xfcc(r29)
/* 801D3B40  EC 42 00 28 */	fsubs f2, f2, f0
/* 801D3B44  38 81 00 14 */	addi r4, r1, 0x14
/* 801D3B48  38 A1 00 10 */	addi r5, r1, 0x10
/* 801D3B4C  4B FF D1 CD */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D3B50  38 60 00 FF */	li r3, 0xff
/* 801D3B54  98 61 00 08 */	stb r3, 8(r1)
/* 801D3B58  38 00 00 00 */	li r0, 0
/* 801D3B5C  98 01 00 09 */	stb r0, 9(r1)
/* 801D3B60  98 01 00 0A */	stb r0, 0xa(r1)
/* 801D3B64  98 61 00 0B */	stb r3, 0xb(r1)
/* 801D3B68  80 01 00 08 */	lwz r0, 8(r1)
/* 801D3B6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D3B70  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801D3B74  C0 42 A7 F0 */	lfs f2, lit_4204(r2)
/* 801D3B78  EC 20 10 28 */	fsubs f1, f0, f2
/* 801D3B7C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801D3B80  EC 40 10 28 */	fsubs f2, f0, f2
/* 801D3B84  C0 62 A7 F4 */	lfs f3, lit_4205(r2)
/* 801D3B88  FC 80 18 90 */	fmr f4, f3
/* 801D3B8C  38 61 00 0C */	addi r3, r1, 0xc
/* 801D3B90  48 11 5F 35 */	bl J2DFillBox__FffffQ28JUtility6TColor
lbl_801D3B94:
/* 801D3B94  3B DE 00 01 */	addi r30, r30, 1
/* 801D3B98  2C 1E 00 08 */	cmpwi r30, 8
/* 801D3B9C  3B FF 00 04 */	addi r31, r31, 4
/* 801D3BA0  41 80 FF 78 */	blt lbl_801D3B18
/* 801D3BA4  39 61 00 30 */	addi r11, r1, 0x30
/* 801D3BA8  48 18 E6 81 */	bl _restgpr_29
/* 801D3BAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D3BB0  7C 08 03 A6 */	mtlr r0
/* 801D3BB4  38 21 00 30 */	addi r1, r1, 0x30
/* 801D3BB8  4E 80 00 20 */	blr 
