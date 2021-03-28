lbl_8031DA1C:
/* 8031DA1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031DA20  7C 08 02 A6 */	mflr r0
/* 8031DA24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031DA28  39 61 00 20 */	addi r11, r1, 0x20
/* 8031DA2C  48 04 47 A9 */	bl _savegpr_27
/* 8031DA30  7C 7C 1B 78 */	mr r28, r3
/* 8031DA34  8B C3 00 20 */	lbz r30, 0x20(r3)
/* 8031DA38  3B A0 00 00 */	li r29, 0
/* 8031DA3C  3B 60 00 00 */	li r27, 0
/* 8031DA40  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha
/* 8031DA44  3B E3 4C 2C */	addi r31, r3, sTexCoordScaleTable__6J3DSys@l
/* 8031DA48  48 00 00 AC */	b lbl_8031DAF4
lbl_8031DA4C:
/* 8031DA4C  7C 7C DA 14 */	add r3, r28, r27
/* 8031DA50  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8031DA54  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031DA58  7D 1F 02 14 */	add r8, r31, r0
/* 8031DA5C  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8031DA60  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031DA64  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031DA68  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031DA6C  20 00 00 01 */	subfic r0, r0, 1
/* 8031DA70  7C 00 00 34 */	cntlzw r0, r0
/* 8031DA74  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031DA78  38 C0 00 00 */	li r6, 0
/* 8031DA7C  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031DA80  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031DA84  20 00 00 01 */	subfic r0, r0, 1
/* 8031DA88  7C 00 00 34 */	cntlzw r0, r0
/* 8031DA8C  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031DA90  39 20 00 00 */	li r9, 0
/* 8031DA94  4B FF 07 A1 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031DA98  38 1D 00 01 */	addi r0, r29, 1
/* 8031DA9C  54 00 10 3A */	slwi r0, r0, 2
/* 8031DAA0  7C 7C 02 14 */	add r3, r28, r0
/* 8031DAA4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8031DAA8  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031DAAC  7D 1F 02 14 */	add r8, r31, r0
/* 8031DAB0  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8031DAB4  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031DAB8  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031DABC  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031DAC0  20 00 00 01 */	subfic r0, r0, 1
/* 8031DAC4  7C 00 00 34 */	cntlzw r0, r0
/* 8031DAC8  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031DACC  38 C0 00 00 */	li r6, 0
/* 8031DAD0  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031DAD4  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031DAD8  20 00 00 01 */	subfic r0, r0, 1
/* 8031DADC  7C 00 00 34 */	cntlzw r0, r0
/* 8031DAE0  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031DAE4  39 20 00 00 */	li r9, 0
/* 8031DAE8  4B FF 07 4D */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031DAEC  3B BD 00 02 */	addi r29, r29, 2
/* 8031DAF0  3B 7B 00 08 */	addi r27, r27, 8
lbl_8031DAF4:
/* 8031DAF4  7C 1D F0 40 */	cmplw r29, r30
/* 8031DAF8  41 80 FF 54 */	blt lbl_8031DA4C
/* 8031DAFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8031DB00  48 04 47 21 */	bl _restgpr_27
/* 8031DB04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031DB08  7C 08 03 A6 */	mtlr r0
/* 8031DB0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8031DB10  4E 80 00 20 */	blr 
