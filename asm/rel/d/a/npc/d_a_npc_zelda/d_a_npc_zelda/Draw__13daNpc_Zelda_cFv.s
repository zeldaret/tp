lbl_80B759CC:
/* 80B759CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B759D0  7C 08 02 A6 */	mflr r0
/* 80B759D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B759D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B759DC  4B 7E C8 01 */	bl _savegpr_29
/* 80B759E0  7C 7D 1B 78 */	mr r29, r3
/* 80B759E4  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80B759E8  80 84 00 04 */	lwz r4, 4(r4)
/* 80B759EC  83 E4 00 04 */	lwz r31, 4(r4)
/* 80B759F0  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80B759F4  28 1E 00 00 */	cmplwi r30, 0
/* 80B759F8  41 82 00 24 */	beq lbl_80B75A1C
/* 80B759FC  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B75A00  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B75A04  7D 89 03 A6 */	mtctr r12
/* 80B75A08  4E 80 04 21 */	bctrl 
/* 80B75A0C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B75A10  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B75A14  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B75A18  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B75A1C:
/* 80B75A1C  83 DD 09 70 */	lwz r30, 0x970(r29)
/* 80B75A20  28 1E 00 00 */	cmplwi r30, 0
/* 80B75A24  41 82 00 28 */	beq lbl_80B75A4C
/* 80B75A28  7F A3 EB 78 */	mr r3, r29
/* 80B75A2C  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B75A30  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B75A34  7D 89 03 A6 */	mtctr r12
/* 80B75A38  4E 80 04 21 */	bctrl 
/* 80B75A3C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B75A40  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B75A44  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B75A48  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B75A4C:
/* 80B75A4C  7F A3 EB 78 */	mr r3, r29
/* 80B75A50  38 80 00 00 */	li r4, 0
/* 80B75A54  38 A0 00 01 */	li r5, 1
/* 80B75A58  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80B75A5C  38 C0 00 00 */	li r6, 0
/* 80B75A60  3C E0 80 B8 */	lis r7, lit_4402@ha /* 0x80B78080@ha */
/* 80B75A64  C0 47 80 80 */	lfs f2, lit_4402@l(r7)  /* 0x80B78080@l */
/* 80B75A68  38 E0 00 00 */	li r7, 0
/* 80B75A6C  39 00 00 00 */	li r8, 0
/* 80B75A70  39 20 00 00 */	li r9, 0
/* 80B75A74  4B 5D 2D F9 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80B75A78  39 61 00 20 */	addi r11, r1, 0x20
/* 80B75A7C  4B 7E C7 AD */	bl _restgpr_29
/* 80B75A80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B75A84  7C 08 03 A6 */	mtlr r0
/* 80B75A88  38 21 00 20 */	addi r1, r1, 0x20
/* 80B75A8C  4E 80 00 20 */	blr 
