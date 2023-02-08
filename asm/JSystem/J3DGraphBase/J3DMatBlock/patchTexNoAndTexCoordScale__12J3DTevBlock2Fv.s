lbl_8031C558:
/* 8031C558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031C55C  7C 08 02 A6 */	mflr r0
/* 8031C560  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031C564  39 61 00 20 */	addi r11, r1, 0x20
/* 8031C568  48 04 5C 71 */	bl _savegpr_28
/* 8031C56C  7C 7E 1B 78 */	mr r30, r3
/* 8031C570  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031C574  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C578  80 1E 00 04 */	lwz r0, 4(r30)
/* 8031C57C  7C 03 02 14 */	add r0, r3, r0
/* 8031C580  90 04 00 08 */	stw r0, 8(r4)
/* 8031C584  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C588  83 E3 00 08 */	lwz r31, 8(r3)
/* 8031C58C  3B 80 00 00 */	li r28, 0
/* 8031C590  3B A0 00 00 */	li r29, 0
lbl_8031C594:
/* 8031C594  38 9D 00 08 */	addi r4, r29, 8
/* 8031C598  7C 9E 22 14 */	add r4, r30, r4
/* 8031C59C  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031C5A0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031C5A4  41 82 00 0C */	beq lbl_8031C5B0
/* 8031C5A8  7F 83 E3 78 */	mr r3, r28
/* 8031C5AC  48 00 79 E9 */	bl loadTexNo__FUlRCUs
lbl_8031C5B0:
/* 8031C5B0  3B 9C 00 01 */	addi r28, r28, 1
/* 8031C5B4  28 1C 00 02 */	cmplwi r28, 2
/* 8031C5B8  3B BD 00 02 */	addi r29, r29, 2
/* 8031C5BC  41 80 FF D8 */	blt lbl_8031C594
/* 8031C5C0  38 60 00 00 */	li r3, 0
/* 8031C5C4  88 9E 00 0C */	lbz r4, 0xc(r30)
/* 8031C5C8  88 BE 00 0D */	lbz r5, 0xd(r30)
/* 8031C5CC  88 DE 00 0E */	lbz r6, 0xe(r30)
/* 8031C5D0  88 FE 00 10 */	lbz r7, 0x10(r30)
/* 8031C5D4  89 1E 00 11 */	lbz r8, 0x11(r30)
/* 8031C5D8  89 3E 00 12 */	lbz r9, 0x12(r30)
/* 8031C5DC  4B FF 2B 2D */	bl J3DGDSetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8031C5E0  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 8031C5E4  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031C5E8  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 8031C5EC  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 8031C5F0  7D 00 22 14 */	add r8, r0, r4
/* 8031C5F4  88 7E 00 0C */	lbz r3, 0xc(r30)
/* 8031C5F8  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031C5FC  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031C600  20 00 00 01 */	subfic r0, r0, 1
/* 8031C604  7C 00 00 34 */	cntlzw r0, r0
/* 8031C608  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031C60C  38 C0 00 00 */	li r6, 0
/* 8031C610  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031C614  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031C618  20 00 00 01 */	subfic r0, r0, 1
/* 8031C61C  7C 00 00 34 */	cntlzw r0, r0
/* 8031C620  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031C624  39 20 00 00 */	li r9, 0
/* 8031C628  4B FF 1C 0D */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031C62C  88 1E 00 11 */	lbz r0, 0x11(r30)
/* 8031C630  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031C634  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 8031C638  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 8031C63C  7D 00 22 14 */	add r8, r0, r4
/* 8031C640  88 1E 00 10 */	lbz r0, 0x10(r30)
/* 8031C644  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031C648  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031C64C  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031C650  20 00 00 01 */	subfic r0, r0, 1
/* 8031C654  7C 00 00 34 */	cntlzw r0, r0
/* 8031C658  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031C65C  38 C0 00 00 */	li r6, 0
/* 8031C660  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031C664  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031C668  20 00 00 01 */	subfic r0, r0, 1
/* 8031C66C  7C 00 00 34 */	cntlzw r0, r0
/* 8031C670  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031C674  39 20 00 00 */	li r9, 0
/* 8031C678  4B FF 1B BD */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031C67C  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C680  80 03 00 08 */	lwz r0, 8(r3)
/* 8031C684  7F E3 FB 78 */	mr r3, r31
/* 8031C688  7C 9F 00 50 */	subf r4, r31, r0
/* 8031C68C  48 01 EF 51 */	bl DCStoreRange
/* 8031C690  39 61 00 20 */	addi r11, r1, 0x20
/* 8031C694  48 04 5B 91 */	bl _restgpr_28
/* 8031C698  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031C69C  7C 08 03 A6 */	mtlr r0
/* 8031C6A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8031C6A4  4E 80 00 20 */	blr 
