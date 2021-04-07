lbl_8031DDD8:
/* 8031DDD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031DDDC  7C 08 02 A6 */	mflr r0
/* 8031DDE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031DDE4  39 61 00 20 */	addi r11, r1, 0x20
/* 8031DDE8  48 04 43 ED */	bl _savegpr_27
/* 8031DDEC  7C 7C 1B 78 */	mr r28, r3
/* 8031DDF0  8B C3 00 58 */	lbz r30, 0x58(r3)
/* 8031DDF4  3B A0 00 00 */	li r29, 0
/* 8031DDF8  3B 60 00 00 */	li r27, 0
/* 8031DDFC  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 8031DE00  3B E3 4C 2C */	addi r31, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 8031DE04  48 00 00 AC */	b lbl_8031DEB0
lbl_8031DE08:
/* 8031DE08  7C 7C DA 14 */	add r3, r28, r27
/* 8031DE0C  88 03 00 19 */	lbz r0, 0x19(r3)
/* 8031DE10  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031DE14  7D 1F 02 14 */	add r8, r31, r0
/* 8031DE18  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8031DE1C  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031DE20  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031DE24  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031DE28  20 00 00 01 */	subfic r0, r0, 1
/* 8031DE2C  7C 00 00 34 */	cntlzw r0, r0
/* 8031DE30  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031DE34  38 C0 00 00 */	li r6, 0
/* 8031DE38  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031DE3C  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031DE40  20 00 00 01 */	subfic r0, r0, 1
/* 8031DE44  7C 00 00 34 */	cntlzw r0, r0
/* 8031DE48  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031DE4C  39 20 00 00 */	li r9, 0
/* 8031DE50  4B FF 03 E5 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031DE54  38 1D 00 01 */	addi r0, r29, 1
/* 8031DE58  54 00 10 3A */	slwi r0, r0, 2
/* 8031DE5C  7C 7C 02 14 */	add r3, r28, r0
/* 8031DE60  88 03 00 19 */	lbz r0, 0x19(r3)
/* 8031DE64  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031DE68  7D 1F 02 14 */	add r8, r31, r0
/* 8031DE6C  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8031DE70  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031DE74  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031DE78  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031DE7C  20 00 00 01 */	subfic r0, r0, 1
/* 8031DE80  7C 00 00 34 */	cntlzw r0, r0
/* 8031DE84  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031DE88  38 C0 00 00 */	li r6, 0
/* 8031DE8C  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031DE90  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031DE94  20 00 00 01 */	subfic r0, r0, 1
/* 8031DE98  7C 00 00 34 */	cntlzw r0, r0
/* 8031DE9C  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031DEA0  39 20 00 00 */	li r9, 0
/* 8031DEA4  4B FF 03 91 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031DEA8  3B BD 00 02 */	addi r29, r29, 2
/* 8031DEAC  3B 7B 00 08 */	addi r27, r27, 8
lbl_8031DEB0:
/* 8031DEB0  7C 1D F0 40 */	cmplw r29, r30
/* 8031DEB4  41 80 FF 54 */	blt lbl_8031DE08
/* 8031DEB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8031DEBC  48 04 43 65 */	bl _restgpr_27
/* 8031DEC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031DEC4  7C 08 03 A6 */	mtlr r0
/* 8031DEC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8031DECC  4E 80 00 20 */	blr 
