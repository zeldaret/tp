lbl_80ACC21C:
/* 80ACC21C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACC220  7C 08 02 A6 */	mflr r0
/* 80ACC224  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACC228  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACC22C  4B 89 5F B0 */	b _savegpr_29
/* 80ACC230  7C 7D 1B 78 */	mr r29, r3
/* 80ACC234  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80ACC238  28 1E 00 00 */	cmplwi r30, 0
/* 80ACC23C  41 82 00 30 */	beq lbl_80ACC26C
/* 80ACC240  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80ACC244  80 84 00 04 */	lwz r4, 4(r4)
/* 80ACC248  83 E4 00 04 */	lwz r31, 4(r4)
/* 80ACC24C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80ACC250  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80ACC254  7D 89 03 A6 */	mtctr r12
/* 80ACC258  4E 80 04 21 */	bctrl 
/* 80ACC25C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80ACC260  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80ACC264  7C 64 00 2E */	lwzx r3, r4, r0
/* 80ACC268  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80ACC26C:
/* 80ACC26C  7F A3 EB 78 */	mr r3, r29
/* 80ACC270  38 80 00 00 */	li r4, 0
/* 80ACC274  38 A0 00 00 */	li r5, 0
/* 80ACC278  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80ACC27C  38 C0 00 00 */	li r6, 0
/* 80ACC280  3C E0 80 AD */	lis r7, lit_4064@ha
/* 80ACC284  C0 47 FE 9C */	lfs f2, lit_4064@l(r7)
/* 80ACC288  38 E0 00 00 */	li r7, 0
/* 80ACC28C  39 00 00 00 */	li r8, 0
/* 80ACC290  39 20 00 00 */	li r9, 0
/* 80ACC294  4B 67 C5 D8 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80ACC298  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACC29C  4B 89 5F 8C */	b _restgpr_29
/* 80ACC2A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACC2A4  7C 08 03 A6 */	mtlr r0
/* 80ACC2A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACC2AC  4E 80 00 20 */	blr 
