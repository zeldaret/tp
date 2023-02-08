lbl_80B6F6B8:
/* 80B6F6B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6F6BC  7C 08 02 A6 */	mflr r0
/* 80B6F6C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6F6C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6F6C8  4B 7F 2B 15 */	bl _savegpr_29
/* 80B6F6CC  7C 7D 1B 78 */	mr r29, r3
/* 80B6F6D0  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80B6F6D4  80 84 00 04 */	lwz r4, 4(r4)
/* 80B6F6D8  83 E4 00 04 */	lwz r31, 4(r4)
/* 80B6F6DC  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80B6F6E0  28 1E 00 00 */	cmplwi r30, 0
/* 80B6F6E4  41 82 00 24 */	beq lbl_80B6F708
/* 80B6F6E8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B6F6EC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B6F6F0  7D 89 03 A6 */	mtctr r12
/* 80B6F6F4  4E 80 04 21 */	bctrl 
/* 80B6F6F8  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B6F6FC  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B6F700  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B6F704  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B6F708:
/* 80B6F708  83 DD 09 70 */	lwz r30, 0x970(r29)
/* 80B6F70C  28 1E 00 00 */	cmplwi r30, 0
/* 80B6F710  41 82 00 28 */	beq lbl_80B6F738
/* 80B6F714  7F A3 EB 78 */	mr r3, r29
/* 80B6F718  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B6F71C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B6F720  7D 89 03 A6 */	mtctr r12
/* 80B6F724  4E 80 04 21 */	bctrl 
/* 80B6F728  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B6F72C  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B6F730  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B6F734  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B6F738:
/* 80B6F738  7F A3 EB 78 */	mr r3, r29
/* 80B6F73C  38 80 00 00 */	li r4, 0
/* 80B6F740  38 A0 00 01 */	li r5, 1
/* 80B6F744  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80B6F748  38 C0 00 00 */	li r6, 0
/* 80B6F74C  3C E0 80 B7 */	lis r7, lit_4399@ha /* 0x80B71B8C@ha */
/* 80B6F750  C0 47 1B 8C */	lfs f2, lit_4399@l(r7)  /* 0x80B71B8C@l */
/* 80B6F754  38 E0 00 00 */	li r7, 0
/* 80B6F758  39 00 00 00 */	li r8, 0
/* 80B6F75C  39 20 00 00 */	li r9, 0
/* 80B6F760  4B 5D 91 0D */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80B6F764  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6F768  4B 7F 2A C1 */	bl _restgpr_29
/* 80B6F76C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6F770  7C 08 03 A6 */	mtlr r0
/* 80B6F774  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6F778  4E 80 00 20 */	blr 
