lbl_80A9E778:
/* 80A9E778  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9E77C  7C 08 02 A6 */	mflr r0
/* 80A9E780  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9E784  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9E788  4B 8C 3A 54 */	b _savegpr_29
/* 80A9E78C  7C 7D 1B 78 */	mr r29, r3
/* 80A9E790  7C 9E 23 78 */	mr r30, r4
/* 80A9E794  38 7D 0F 8C */	addi r3, r29, 0xf8c
/* 80A9E798  4B 6A 6F 70 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9E79C  7C 7F 1B 78 */	mr r31, r3
/* 80A9E7A0  38 7D 0F 94 */	addi r3, r29, 0xf94
/* 80A9E7A4  4B 6A 6F 64 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9E7A8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80A9E7AC  D0 5D 0F EC */	stfs f2, 0xfec(r29)
/* 80A9E7B0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80A9E7B4  D0 3D 0F F0 */	stfs f1, 0xff0(r29)
/* 80A9E7B8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80A9E7BC  D0 1D 0F F4 */	stfs f0, 0xff4(r29)
/* 80A9E7C0  28 1F 00 00 */	cmplwi r31, 0
/* 80A9E7C4  41 82 00 10 */	beq lbl_80A9E7D4
/* 80A9E7C8  D0 5F 0F 88 */	stfs f2, 0xf88(r31)
/* 80A9E7CC  D0 3F 0F 8C */	stfs f1, 0xf8c(r31)
/* 80A9E7D0  D0 1F 0F 90 */	stfs f0, 0xf90(r31)
lbl_80A9E7D4:
/* 80A9E7D4  28 03 00 00 */	cmplwi r3, 0
/* 80A9E7D8  41 82 00 1C */	beq lbl_80A9E7F4
/* 80A9E7DC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80A9E7E0  D0 03 0F 84 */	stfs f0, 0xf84(r3)
/* 80A9E7E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80A9E7E8  D0 03 0F 88 */	stfs f0, 0xf88(r3)
/* 80A9E7EC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80A9E7F0  D0 03 0F 8C */	stfs f0, 0xf8c(r3)
lbl_80A9E7F4:
/* 80A9E7F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9E7F8  4B 8C 3A 30 */	b _restgpr_29
/* 80A9E7FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9E800  7C 08 03 A6 */	mtlr r0
/* 80A9E804  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9E808  4E 80 00 20 */	blr 
