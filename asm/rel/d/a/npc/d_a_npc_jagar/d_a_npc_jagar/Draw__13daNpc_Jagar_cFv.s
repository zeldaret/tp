lbl_80A14FA0:
/* 80A14FA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A14FA4  7C 08 02 A6 */	mflr r0
/* 80A14FA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A14FAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A14FB0  4B 94 D2 2D */	bl _savegpr_29
/* 80A14FB4  7C 7D 1B 78 */	mr r29, r3
/* 80A14FB8  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80A14FBC  28 1E 00 00 */	cmplwi r30, 0
/* 80A14FC0  41 82 00 30 */	beq lbl_80A14FF0
/* 80A14FC4  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80A14FC8  80 84 00 04 */	lwz r4, 4(r4)
/* 80A14FCC  83 E4 00 04 */	lwz r31, 4(r4)
/* 80A14FD0  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A14FD4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A14FD8  7D 89 03 A6 */	mtctr r12
/* 80A14FDC  4E 80 04 21 */	bctrl 
/* 80A14FE0  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80A14FE4  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80A14FE8  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A14FEC  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80A14FF0:
/* 80A14FF0  7F A3 EB 78 */	mr r3, r29
/* 80A14FF4  38 80 00 00 */	li r4, 0
/* 80A14FF8  38 A0 00 00 */	li r5, 0
/* 80A14FFC  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80A15000  38 C0 00 00 */	li r6, 0
/* 80A15004  3C E0 80 A2 */	lis r7, lit_4524@ha /* 0x80A1A404@ha */
/* 80A15008  C0 47 A4 04 */	lfs f2, lit_4524@l(r7)  /* 0x80A1A404@l */
/* 80A1500C  38 E0 00 00 */	li r7, 0
/* 80A15010  39 00 00 00 */	li r8, 0
/* 80A15014  39 20 00 00 */	li r9, 0
/* 80A15018  4B 73 38 55 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80A1501C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A15020  4B 94 D2 09 */	bl _restgpr_29
/* 80A15024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A15028  7C 08 03 A6 */	mtlr r0
/* 80A1502C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A15030  4E 80 00 20 */	blr 
