lbl_80150444:
/* 80150444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80150448  7C 08 02 A6 */	mflr r0
/* 8015044C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80150450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80150454  93 C1 00 08 */	stw r30, 8(r1)
/* 80150458  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015045C  7C 9F 23 78 */	mr r31, r4
/* 80150460  41 82 00 A8 */	beq lbl_80150508
/* 80150464  3C 60 80 3B */	lis r3, __vt__18daBaseNpc_matAnm_c@ha
/* 80150468  38 03 3A 5C */	addi r0, r3, __vt__18daBaseNpc_matAnm_c@l
/* 8015046C  90 1E 00 00 */	stw r0, 0(r30)
/* 80150470  41 82 00 88 */	beq lbl_801504F8
/* 80150474  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80150478  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 8015047C  90 1E 00 00 */	stw r0, 0(r30)
/* 80150480  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80150484  3C 80 80 04 */	lis r4, __dt__15J3DTevKColorAnmFv@ha
/* 80150488  38 84 B1 50 */	addi r4, r4, __dt__15J3DTevKColorAnmFv@l
/* 8015048C  38 A0 00 08 */	li r5, 8
/* 80150490  38 C0 00 04 */	li r6, 4
/* 80150494  48 21 18 55 */	bl __destroy_arr
/* 80150498  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8015049C  3C 80 80 04 */	lis r4, __dt__14J3DTevColorAnmFv@ha
/* 801504A0  38 84 B1 A4 */	addi r4, r4, __dt__14J3DTevColorAnmFv@l
/* 801504A4  38 A0 00 08 */	li r5, 8
/* 801504A8  38 C0 00 04 */	li r6, 4
/* 801504AC  48 21 18 3D */	bl __destroy_arr
/* 801504B0  38 7E 00 54 */	addi r3, r30, 0x54
/* 801504B4  3C 80 80 04 */	lis r4, __dt__11J3DTexNoAnmFv@ha
/* 801504B8  38 84 B1 F8 */	addi r4, r4, __dt__11J3DTexNoAnmFv@l
/* 801504BC  38 A0 00 0C */	li r5, 0xc
/* 801504C0  38 C0 00 08 */	li r6, 8
/* 801504C4  48 21 18 25 */	bl __destroy_arr
/* 801504C8  38 7E 00 14 */	addi r3, r30, 0x14
/* 801504CC  3C 80 80 04 */	lis r4, __dt__12J3DTexMtxAnmFv@ha
/* 801504D0  38 84 B2 64 */	addi r4, r4, __dt__12J3DTexMtxAnmFv@l
/* 801504D4  38 A0 00 08 */	li r5, 8
/* 801504D8  38 C0 00 08 */	li r6, 8
/* 801504DC  48 21 18 0D */	bl __destroy_arr
/* 801504E0  38 7E 00 04 */	addi r3, r30, 4
/* 801504E4  3C 80 80 04 */	lis r4, __dt__14J3DMatColorAnmFv@ha
/* 801504E8  38 84 B2 B8 */	addi r4, r4, __dt__14J3DMatColorAnmFv@l
/* 801504EC  38 A0 00 08 */	li r5, 8
/* 801504F0  38 C0 00 02 */	li r6, 2
/* 801504F4  48 21 17 F5 */	bl __destroy_arr
lbl_801504F8:
/* 801504F8  7F E0 07 35 */	extsh. r0, r31
/* 801504FC  40 81 00 0C */	ble lbl_80150508
/* 80150500  7F C3 F3 78 */	mr r3, r30
/* 80150504  48 17 E8 39 */	bl __dl__FPv
lbl_80150508:
/* 80150508  7F C3 F3 78 */	mr r3, r30
/* 8015050C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80150510  83 C1 00 08 */	lwz r30, 8(r1)
/* 80150514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80150518  7C 08 03 A6 */	mtlr r0
/* 8015051C  38 21 00 10 */	addi r1, r1, 0x10
/* 80150520  4E 80 00 20 */	blr 
