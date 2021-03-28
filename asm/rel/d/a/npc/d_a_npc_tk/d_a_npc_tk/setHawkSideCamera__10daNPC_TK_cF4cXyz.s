lbl_80B0A444:
/* 80B0A444  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0A448  7C 08 02 A6 */	mflr r0
/* 80B0A44C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0A450  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0A454  4B 85 7D 88 */	b _savegpr_29
/* 80B0A458  7C 7D 1B 78 */	mr r29, r3
/* 80B0A45C  7C 9E 23 78 */	mr r30, r4
/* 80B0A460  3C 60 80 B1 */	lis r3, lit_3999@ha
/* 80B0A464  3B E3 C1 C4 */	addi r31, r3, lit_3999@l
/* 80B0A468  38 00 00 04 */	li r0, 4
/* 80B0A46C  B0 1D 07 10 */	sth r0, 0x710(r29)
/* 80B0A470  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 80B0A474  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B0A478  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80B0A47C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B0A480  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B0A484  38 61 00 08 */	addi r3, r1, 8
/* 80B0A488  38 A1 00 14 */	addi r5, r1, 0x14
/* 80B0A48C  4B 75 C6 58 */	b __pl__4cXyzCFRC3Vec
/* 80B0A490  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B0A494  D0 1D 06 F0 */	stfs f0, 0x6f0(r29)
/* 80B0A498  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B0A49C  D0 1D 06 F4 */	stfs f0, 0x6f4(r29)
/* 80B0A4A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B0A4A4  D0 1D 06 F8 */	stfs f0, 0x6f8(r29)
/* 80B0A4A8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80B0A4AC  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 80B0A4B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80B0A4B4  D0 1D 07 00 */	stfs f0, 0x700(r29)
/* 80B0A4B8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B0A4BC  D0 1D 07 04 */	stfs f0, 0x704(r29)
/* 80B0A4C0  C0 3D 07 00 */	lfs f1, 0x700(r29)
/* 80B0A4C4  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 80B0A4C8  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0A4CC  D0 1D 07 00 */	stfs f0, 0x700(r29)
/* 80B0A4D0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B0A4D4  D0 1D 07 08 */	stfs f0, 0x708(r29)
/* 80B0A4D8  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80B0A4DC  D0 1D 07 14 */	stfs f0, 0x714(r29)
/* 80B0A4E0  38 00 00 78 */	li r0, 0x78
/* 80B0A4E4  90 1D 07 0C */	stw r0, 0x70c(r29)
/* 80B0A4E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0A4EC  4B 85 7D 3C */	b _restgpr_29
/* 80B0A4F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B0A4F4  7C 08 03 A6 */	mtlr r0
/* 80B0A4F8  38 21 00 30 */	addi r1, r1, 0x30
/* 80B0A4FC  4E 80 00 20 */	blr 
