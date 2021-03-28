lbl_802FC708:
/* 802FC708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FC70C  7C 08 02 A6 */	mflr r0
/* 802FC710  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FC714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FC718  93 C1 00 08 */	stw r30, 8(r1)
/* 802FC71C  7C 7E 1B 78 */	mr r30, r3
/* 802FC720  7C 9F 23 78 */	mr r31, r4
/* 802FC724  4B FF 94 D5 */	bl __ct__7J2DPaneFv
/* 802FC728  3C 60 80 3D */	lis r3, __vt__10J2DPicture@ha
/* 802FC72C  38 03 D1 D8 */	addi r0, r3, __vt__10J2DPicture@l
/* 802FC730  90 1E 00 00 */	stw r0, 0(r30)
/* 802FC734  38 7E 01 0A */	addi r3, r30, 0x10a
/* 802FC738  3C 80 80 30 */	lis r4, func_802FF204@ha
/* 802FC73C  38 84 F2 04 */	addi r4, r4, func_802FF204@l
/* 802FC740  38 A0 00 00 */	li r5, 0
/* 802FC744  38 C0 00 04 */	li r6, 4
/* 802FC748  38 E0 00 04 */	li r7, 4
/* 802FC74C  48 06 56 15 */	bl __construct_array
/* 802FC750  38 00 FF FF */	li r0, -1
/* 802FC754  90 1E 01 30 */	stw r0, 0x130(r30)
/* 802FC758  90 1E 01 34 */	stw r0, 0x134(r30)
/* 802FC75C  38 7E 01 38 */	addi r3, r30, 0x138
/* 802FC760  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha
/* 802FC764  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l
/* 802FC768  38 A0 00 00 */	li r5, 0
/* 802FC76C  38 C0 00 04 */	li r6, 4
/* 802FC770  38 E0 00 04 */	li r7, 4
/* 802FC774  48 06 55 ED */	bl __construct_array
/* 802FC778  38 00 FF FF */	li r0, -1
/* 802FC77C  90 1E 01 48 */	stw r0, 0x148(r30)
/* 802FC780  90 1E 01 4C */	stw r0, 0x14c(r30)
/* 802FC784  38 60 00 00 */	li r3, 0
/* 802FC788  7C 64 1B 78 */	mr r4, r3
/* 802FC78C  38 00 00 02 */	li r0, 2
/* 802FC790  7C 09 03 A6 */	mtctr r0
lbl_802FC794:
/* 802FC794  38 03 01 00 */	addi r0, r3, 0x100
/* 802FC798  7C 9E 01 2E */	stwx r4, r30, r0
/* 802FC79C  38 63 00 04 */	addi r3, r3, 4
/* 802FC7A0  42 00 FF F4 */	bdnz lbl_802FC794
/* 802FC7A4  38 00 00 00 */	li r0, 0
/* 802FC7A8  98 1E 01 09 */	stb r0, 0x109(r30)
/* 802FC7AC  98 1E 01 08 */	stb r0, 0x108(r30)
/* 802FC7B0  28 1F 00 00 */	cmplwi r31, 0
/* 802FC7B4  41 82 00 20 */	beq lbl_802FC7D4
/* 802FC7B8  7F C3 F3 78 */	mr r3, r30
/* 802FC7BC  7F E4 FB 78 */	mr r4, r31
/* 802FC7C0  C0 22 C8 68 */	lfs f1, lit_1767(r2)
/* 802FC7C4  81 9E 00 00 */	lwz r12, 0(r30)
/* 802FC7C8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 802FC7CC  7D 89 03 A6 */	mtctr r12
/* 802FC7D0  4E 80 04 21 */	bctrl 
lbl_802FC7D4:
/* 802FC7D4  38 00 00 00 */	li r0, 0
/* 802FC7D8  90 1E 01 2C */	stw r0, 0x12c(r30)
/* 802FC7DC  7F C3 F3 78 */	mr r3, r30
/* 802FC7E0  48 00 06 BD */	bl initinfo__10J2DPictureFv
/* 802FC7E4  7F C3 F3 78 */	mr r3, r30
/* 802FC7E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FC7EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FC7F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FC7F4  7C 08 03 A6 */	mtlr r0
/* 802FC7F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802FC7FC  4E 80 00 20 */	blr 
