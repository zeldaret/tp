lbl_802FF660:
/* 802FF660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF664  7C 08 02 A6 */	mflr r0
/* 802FF668  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FF670  7C 7F 1B 78 */	mr r31, r3
/* 802FF674  4B FF 65 85 */	bl __ct__7J2DPaneFv
/* 802FF678  3C 60 80 3D */	lis r3, __vt__10J2DTextBox@ha
/* 802FF67C  38 03 D3 28 */	addi r0, r3, __vt__10J2DTextBox@l
/* 802FF680  90 1F 00 00 */	stw r0, 0(r31)
/* 802FF684  38 60 00 00 */	li r3, 0
/* 802FF688  90 7F 01 00 */	stw r3, 0x100(r31)
/* 802FF68C  38 00 FF FF */	li r0, -1
/* 802FF690  90 1F 01 04 */	stw r0, 0x104(r31)
/* 802FF694  90 1F 01 08 */	stw r0, 0x108(r31)
/* 802FF698  90 7F 01 24 */	stw r3, 0x124(r31)
/* 802FF69C  90 1F 01 28 */	stw r0, 0x128(r31)
/* 802FF6A0  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 802FF6A4  7F E3 FB 78 */	mr r3, r31
/* 802FF6A8  38 80 00 00 */	li r4, 0
/* 802FF6AC  38 A0 00 00 */	li r5, 0
/* 802FF6B0  38 C0 00 00 */	li r6, 0
/* 802FF6B4  38 E0 00 02 */	li r7, 2
/* 802FF6B8  39 00 00 02 */	li r8, 2
/* 802FF6BC  48 00 05 9D */	bl initiate__10J2DTextBoxFPC7ResFONTPCcs18J2DTextBoxHBinding18J2DTextBoxVBinding
/* 802FF6C0  7F E3 FB 78 */	mr r3, r31
/* 802FF6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FF6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF6CC  7C 08 03 A6 */	mtlr r0
/* 802FF6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF6D4  4E 80 00 20 */	blr 
