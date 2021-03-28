lbl_80A609FC:
/* 80A609FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A60A00  7C 08 02 A6 */	mflr r0
/* 80A60A04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A60A08  39 61 00 20 */	addi r11, r1, 0x20
/* 80A60A0C  4B 90 17 D0 */	b _savegpr_29
/* 80A60A10  7C 7D 1B 78 */	mr r29, r3
/* 80A60A14  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80A60A18  28 1E 00 00 */	cmplwi r30, 0
/* 80A60A1C  41 82 00 30 */	beq lbl_80A60A4C
/* 80A60A20  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80A60A24  80 84 00 04 */	lwz r4, 4(r4)
/* 80A60A28  83 E4 00 04 */	lwz r31, 4(r4)
/* 80A60A2C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A60A30  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A60A34  7D 89 03 A6 */	mtctr r12
/* 80A60A38  4E 80 04 21 */	bctrl 
/* 80A60A3C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80A60A40  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80A60A44  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A60A48  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80A60A4C:
/* 80A60A4C  7F A3 EB 78 */	mr r3, r29
/* 80A60A50  38 80 00 00 */	li r4, 0
/* 80A60A54  38 A0 00 00 */	li r5, 0
/* 80A60A58  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80A60A5C  38 C0 00 00 */	li r6, 0
/* 80A60A60  3C E0 80 A6 */	lis r7, lit_4419@ha
/* 80A60A64  C0 47 39 64 */	lfs f2, lit_4419@l(r7)
/* 80A60A68  38 E0 00 00 */	li r7, 0
/* 80A60A6C  39 00 00 00 */	li r8, 0
/* 80A60A70  39 20 00 00 */	li r9, 0
/* 80A60A74  4B 6E 7D F8 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80A60A78  39 61 00 20 */	addi r11, r1, 0x20
/* 80A60A7C  4B 90 17 AC */	b _restgpr_29
/* 80A60A80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A60A84  7C 08 03 A6 */	mtlr r0
/* 80A60A88  38 21 00 20 */	addi r1, r1, 0x20
/* 80A60A8C  4E 80 00 20 */	blr 
