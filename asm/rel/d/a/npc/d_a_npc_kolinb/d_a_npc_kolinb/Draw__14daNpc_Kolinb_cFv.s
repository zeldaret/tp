lbl_80A46090:
/* 80A46090  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A46094  7C 08 02 A6 */	mflr r0
/* 80A46098  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A4609C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A460A0  4B 91 C1 3C */	b _savegpr_29
/* 80A460A4  7C 7D 1B 78 */	mr r29, r3
/* 80A460A8  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80A460AC  28 1E 00 00 */	cmplwi r30, 0
/* 80A460B0  41 82 00 30 */	beq lbl_80A460E0
/* 80A460B4  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80A460B8  80 84 00 04 */	lwz r4, 4(r4)
/* 80A460BC  83 E4 00 04 */	lwz r31, 4(r4)
/* 80A460C0  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A460C4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A460C8  7D 89 03 A6 */	mtctr r12
/* 80A460CC  4E 80 04 21 */	bctrl 
/* 80A460D0  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80A460D4  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80A460D8  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A460DC  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80A460E0:
/* 80A460E0  7F A3 EB 78 */	mr r3, r29
/* 80A460E4  38 80 00 00 */	li r4, 0
/* 80A460E8  38 A0 00 00 */	li r5, 0
/* 80A460EC  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80A460F0  38 C0 00 00 */	li r6, 0
/* 80A460F4  3C E0 80 A5 */	lis r7, lit_4403@ha
/* 80A460F8  C0 47 87 CC */	lfs f2, lit_4403@l(r7)
/* 80A460FC  38 E0 00 00 */	li r7, 0
/* 80A46100  39 00 00 00 */	li r8, 0
/* 80A46104  39 20 00 00 */	li r9, 0
/* 80A46108  4B 70 27 64 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80A4610C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A46110  4B 91 C1 18 */	b _restgpr_29
/* 80A46114  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A46118  7C 08 03 A6 */	mtlr r0
/* 80A4611C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A46120  4E 80 00 20 */	blr 
