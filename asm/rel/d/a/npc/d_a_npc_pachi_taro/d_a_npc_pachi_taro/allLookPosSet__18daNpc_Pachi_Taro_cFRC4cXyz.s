lbl_80A9E80C:
/* 80A9E80C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9E810  7C 08 02 A6 */	mflr r0
/* 80A9E814  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9E818  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9E81C  4B 8C 39 C1 */	bl _savegpr_29
/* 80A9E820  7C 7D 1B 78 */	mr r29, r3
/* 80A9E824  7C 9E 23 78 */	mr r30, r4
/* 80A9E828  38 7D 0F 8C */	addi r3, r29, 0xf8c
/* 80A9E82C  4B 6A 6E DD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9E830  7C 7F 1B 78 */	mr r31, r3
/* 80A9E834  38 7D 0F 94 */	addi r3, r29, 0xf94
/* 80A9E838  4B 6A 6E D1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9E83C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80A9E840  D0 5D 0F F8 */	stfs f2, 0xff8(r29)
/* 80A9E844  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80A9E848  D0 3D 0F FC */	stfs f1, 0xffc(r29)
/* 80A9E84C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80A9E850  D0 1D 10 00 */	stfs f0, 0x1000(r29)
/* 80A9E854  28 1F 00 00 */	cmplwi r31, 0
/* 80A9E858  41 82 00 10 */	beq lbl_80A9E868
/* 80A9E85C  D0 5F 0F 94 */	stfs f2, 0xf94(r31)
/* 80A9E860  D0 3F 0F 98 */	stfs f1, 0xf98(r31)
/* 80A9E864  D0 1F 0F 9C */	stfs f0, 0xf9c(r31)
lbl_80A9E868:
/* 80A9E868  28 03 00 00 */	cmplwi r3, 0
/* 80A9E86C  41 82 00 1C */	beq lbl_80A9E888
/* 80A9E870  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80A9E874  D0 03 0F 90 */	stfs f0, 0xf90(r3)
/* 80A9E878  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80A9E87C  D0 03 0F 94 */	stfs f0, 0xf94(r3)
/* 80A9E880  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80A9E884  D0 03 0F 98 */	stfs f0, 0xf98(r3)
lbl_80A9E888:
/* 80A9E888  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9E88C  4B 8C 39 9D */	bl _restgpr_29
/* 80A9E890  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9E894  7C 08 03 A6 */	mtlr r0
/* 80A9E898  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9E89C  4E 80 00 20 */	blr 
