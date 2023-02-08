lbl_802FC050:
/* 802FC050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FC054  7C 08 02 A6 */	mflr r0
/* 802FC058  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FC05C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FC060  7C 7F 1B 78 */	mr r31, r3
/* 802FC064  4B FF 9B 95 */	bl __ct__7J2DPaneFv
/* 802FC068  3C 60 80 3D */	lis r3, __vt__10J2DPicture@ha /* 0x803CD1D8@ha */
/* 802FC06C  38 03 D1 D8 */	addi r0, r3, __vt__10J2DPicture@l /* 0x803CD1D8@l */
/* 802FC070  90 1F 00 00 */	stw r0, 0(r31)
/* 802FC074  38 7F 01 0A */	addi r3, r31, 0x10a
/* 802FC078  3C 80 80 30 */	lis r4, func_802FF204@ha /* 0x802FF204@ha */
/* 802FC07C  38 84 F2 04 */	addi r4, r4, func_802FF204@l /* 0x802FF204@l */
/* 802FC080  38 A0 00 00 */	li r5, 0
/* 802FC084  38 C0 00 04 */	li r6, 4
/* 802FC088  38 E0 00 04 */	li r7, 4
/* 802FC08C  48 06 5C D5 */	bl __construct_array
/* 802FC090  38 00 00 00 */	li r0, 0
/* 802FC094  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 802FC098  38 00 FF FF */	li r0, -1
/* 802FC09C  90 1F 01 30 */	stw r0, 0x130(r31)
/* 802FC0A0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 802FC0A4  38 7F 01 38 */	addi r3, r31, 0x138
/* 802FC0A8  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 802FC0AC  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 802FC0B0  38 A0 00 00 */	li r5, 0
/* 802FC0B4  38 C0 00 04 */	li r6, 4
/* 802FC0B8  38 E0 00 04 */	li r7, 4
/* 802FC0BC  48 06 5C A5 */	bl __construct_array
/* 802FC0C0  38 00 FF FF */	li r0, -1
/* 802FC0C4  90 1F 01 48 */	stw r0, 0x148(r31)
/* 802FC0C8  90 1F 01 4C */	stw r0, 0x14c(r31)
/* 802FC0CC  38 60 00 00 */	li r3, 0
/* 802FC0D0  7C 64 1B 78 */	mr r4, r3
/* 802FC0D4  38 00 00 02 */	li r0, 2
/* 802FC0D8  7C 09 03 A6 */	mtctr r0
lbl_802FC0DC:
/* 802FC0DC  38 03 01 00 */	addi r0, r3, 0x100
/* 802FC0E0  7C 9F 01 2E */	stwx r4, r31, r0
/* 802FC0E4  38 63 00 04 */	addi r3, r3, 4
/* 802FC0E8  42 00 FF F4 */	bdnz lbl_802FC0DC
/* 802FC0EC  38 00 00 00 */	li r0, 0
/* 802FC0F0  98 1F 01 09 */	stb r0, 0x109(r31)
/* 802FC0F4  98 1F 01 08 */	stb r0, 0x108(r31)
/* 802FC0F8  7F E3 FB 78 */	mr r3, r31
/* 802FC0FC  48 00 0D A1 */	bl initinfo__10J2DPictureFv
/* 802FC100  7F E3 FB 78 */	mr r3, r31
/* 802FC104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FC108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FC10C  7C 08 03 A6 */	mtlr r0
/* 802FC110  38 21 00 10 */	addi r1, r1, 0x10
/* 802FC114  4E 80 00 20 */	blr 
