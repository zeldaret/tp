lbl_80B6C754:
/* 80B6C754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6C758  7C 08 02 A6 */	mflr r0
/* 80B6C75C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6C760  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6C764  4B 7F 5A 78 */	b _savegpr_29
/* 80B6C768  7C 7D 1B 78 */	mr r29, r3
/* 80B6C76C  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80B6C770  28 1E 00 00 */	cmplwi r30, 0
/* 80B6C774  41 82 00 30 */	beq lbl_80B6C7A4
/* 80B6C778  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80B6C77C  80 84 00 04 */	lwz r4, 4(r4)
/* 80B6C780  83 E4 00 04 */	lwz r31, 4(r4)
/* 80B6C784  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B6C788  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B6C78C  7D 89 03 A6 */	mtctr r12
/* 80B6C790  4E 80 04 21 */	bctrl 
/* 80B6C794  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B6C798  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B6C79C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B6C7A0  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B6C7A4:
/* 80B6C7A4  7F A3 EB 78 */	mr r3, r29
/* 80B6C7A8  38 80 00 00 */	li r4, 0
/* 80B6C7AC  38 A0 00 00 */	li r5, 0
/* 80B6C7B0  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80B6C7B4  38 C0 00 00 */	li r6, 0
/* 80B6C7B8  3C E0 80 B7 */	lis r7, lit_4176@ha
/* 80B6C7BC  C0 47 EA 48 */	lfs f2, lit_4176@l(r7)
/* 80B6C7C0  38 E0 00 01 */	li r7, 1
/* 80B6C7C4  39 00 00 00 */	li r8, 0
/* 80B6C7C8  39 20 00 00 */	li r9, 0
/* 80B6C7CC  4B 5D C0 A0 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80B6C7D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6C7D4  4B 7F 5A 54 */	b _restgpr_29
/* 80B6C7D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6C7DC  7C 08 03 A6 */	mtlr r0
/* 80B6C7E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6C7E4  4E 80 00 20 */	blr 
