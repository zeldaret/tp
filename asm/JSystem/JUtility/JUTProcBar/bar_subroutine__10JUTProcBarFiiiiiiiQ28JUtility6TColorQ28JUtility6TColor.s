lbl_802E5B30:
/* 802E5B30  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802E5B34  7C 08 02 A6 */	mflr r0
/* 802E5B38  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E5B3C  39 61 00 50 */	addi r11, r1, 0x50
/* 802E5B40  48 07 C6 95 */	bl _savegpr_27
/* 802E5B44  7C 9D 23 78 */	mr r29, r4
/* 802E5B48  7C BE 2B 78 */	mr r30, r5
/* 802E5B4C  7C DF 33 78 */	mr r31, r6
/* 802E5B50  80 61 00 58 */	lwz r3, 0x58(r1)
/* 802E5B54  83 61 00 5C */	lwz r27, 0x5c(r1)
/* 802E5B58  7C 0A 39 D6 */	mullw r0, r10, r7
/* 802E5B5C  7F 80 43 D6 */	divw r28, r0, r8
/* 802E5B60  80 03 00 00 */	lwz r0, 0(r3)
/* 802E5B64  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E5B68  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E5B6C  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 802E5B70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E5B74  3C 60 43 30 */	lis r3, 0x4330
/* 802E5B78  90 61 00 18 */	stw r3, 0x18(r1)
/* 802E5B7C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802E5B80  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E5B84  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802E5B88  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E5B8C  90 61 00 20 */	stw r3, 0x20(r1)
/* 802E5B90  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802E5B94  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E5B98  7C 09 39 D6 */	mullw r0, r9, r7
/* 802E5B9C  7C 00 43 D6 */	divw r0, r0, r8
/* 802E5BA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E5BA4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802E5BA8  90 61 00 28 */	stw r3, 0x28(r1)
/* 802E5BAC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802E5BB0  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E5BB4  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 802E5BB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E5BBC  90 61 00 30 */	stw r3, 0x30(r1)
/* 802E5BC0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802E5BC4  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E5BC8  38 61 00 10 */	addi r3, r1, 0x10
/* 802E5BCC  48 00 3E F9 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E5BD0  2C 1C 00 00 */	cmpwi r28, 0
/* 802E5BD4  41 80 00 D8 */	blt lbl_802E5CAC
/* 802E5BD8  2C 1C 00 06 */	cmpwi r28, 6
/* 802E5BDC  40 80 00 70 */	bge lbl_802E5C4C
/* 802E5BE0  80 1B 00 00 */	lwz r0, 0(r27)
/* 802E5BE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E5BE8  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E5BEC  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 802E5BF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E5BF4  3C 60 43 30 */	lis r3, 0x4330
/* 802E5BF8  90 61 00 30 */	stw r3, 0x30(r1)
/* 802E5BFC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802E5C00  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E5C04  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802E5C08  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802E5C0C  90 61 00 28 */	stw r3, 0x28(r1)
/* 802E5C10  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802E5C14  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E5C18  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 802E5C1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E5C20  90 61 00 20 */	stw r3, 0x20(r1)
/* 802E5C24  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802E5C28  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E5C2C  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 802E5C30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E5C34  90 61 00 18 */	stw r3, 0x18(r1)
/* 802E5C38  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802E5C3C  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E5C40  38 61 00 0C */	addi r3, r1, 0xc
/* 802E5C44  48 00 3E 81 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E5C48  48 00 00 64 */	b lbl_802E5CAC
lbl_802E5C4C:
/* 802E5C4C  80 1B 00 00 */	lwz r0, 0(r27)
/* 802E5C50  90 01 00 08 */	stw r0, 8(r1)
/* 802E5C54  38 1C FF FA */	addi r0, r28, -6
/* 802E5C58  7C 1D 02 14 */	add r0, r29, r0
/* 802E5C5C  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E5C60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E5C64  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E5C68  3C 60 43 30 */	lis r3, 0x4330
/* 802E5C6C  90 61 00 30 */	stw r3, 0x30(r1)
/* 802E5C70  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802E5C74  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E5C78  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802E5C7C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802E5C80  90 61 00 28 */	stw r3, 0x28(r1)
/* 802E5C84  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802E5C88  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E5C8C  C0 62 C6 E0 */	lfs f3, lit_2279(r2)
/* 802E5C90  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 802E5C94  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E5C98  90 61 00 20 */	stw r3, 0x20(r1)
/* 802E5C9C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802E5CA0  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E5CA4  38 61 00 08 */	addi r3, r1, 8
/* 802E5CA8  48 00 3E 1D */	bl J2DFillBox__FffffQ28JUtility6TColor
lbl_802E5CAC:
/* 802E5CAC  39 61 00 50 */	addi r11, r1, 0x50
/* 802E5CB0  48 07 C5 71 */	bl _restgpr_27
/* 802E5CB4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802E5CB8  7C 08 03 A6 */	mtlr r0
/* 802E5CBC  38 21 00 50 */	addi r1, r1, 0x50
/* 802E5CC0  4E 80 00 20 */	blr 
