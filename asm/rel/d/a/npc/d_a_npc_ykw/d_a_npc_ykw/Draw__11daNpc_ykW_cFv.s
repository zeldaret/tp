lbl_80B5F7D8:
/* 80B5F7D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B5F7DC  7C 08 02 A6 */	mflr r0
/* 80B5F7E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B5F7E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5F7E8  4B 80 29 F5 */	bl _savegpr_29
/* 80B5F7EC  7C 7D 1B 78 */	mr r29, r3
/* 80B5F7F0  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80B5F7F4  28 1E 00 00 */	cmplwi r30, 0
/* 80B5F7F8  41 82 00 30 */	beq lbl_80B5F828
/* 80B5F7FC  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80B5F800  80 84 00 04 */	lwz r4, 4(r4)
/* 80B5F804  83 E4 00 04 */	lwz r31, 4(r4)
/* 80B5F808  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B5F80C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B5F810  7D 89 03 A6 */	mtctr r12
/* 80B5F814  4E 80 04 21 */	bctrl 
/* 80B5F818  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B5F81C  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B5F820  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B5F824  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B5F828:
/* 80B5F828  7F A3 EB 78 */	mr r3, r29
/* 80B5F82C  38 80 00 00 */	li r4, 0
/* 80B5F830  38 A0 00 00 */	li r5, 0
/* 80B5F834  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80B5F838  38 C0 00 00 */	li r6, 0
/* 80B5F83C  3C E0 80 B6 */	lis r7, lit_4729@ha /* 0x80B67D2C@ha */
/* 80B5F840  C0 47 7D 2C */	lfs f2, lit_4729@l(r7)  /* 0x80B67D2C@l */
/* 80B5F844  38 E0 00 00 */	li r7, 0
/* 80B5F848  39 00 00 00 */	li r8, 0
/* 80B5F84C  39 20 00 00 */	li r9, 0
/* 80B5F850  4B 5E 90 1D */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80B5F854  7C 7E 1B 78 */	mr r30, r3
/* 80B5F858  88 1D 10 69 */	lbz r0, 0x1069(r29)
/* 80B5F85C  28 00 00 00 */	cmplwi r0, 0
/* 80B5F860  41 82 00 30 */	beq lbl_80B5F890
/* 80B5F864  38 7D 0F 9C */	addi r3, r29, 0xf9c
/* 80B5F868  4B 5E 5E A1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5F86C  28 03 00 00 */	cmplwi r3, 0
/* 80B5F870  41 82 00 20 */	beq lbl_80B5F890
/* 80B5F874  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80B5F878  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B5F87C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5F880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5F884  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80B5F888  80 9D 0D 94 */	lwz r4, 0xd94(r29)
/* 80B5F88C  4B 4F 66 91 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80B5F890:
/* 80B5F890  7F C3 F3 78 */	mr r3, r30
/* 80B5F894  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5F898  4B 80 29 91 */	bl _restgpr_29
/* 80B5F89C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B5F8A0  7C 08 03 A6 */	mtlr r0
/* 80B5F8A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B5F8A8  4E 80 00 20 */	blr 
