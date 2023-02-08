lbl_807BE99C:
/* 807BE99C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807BE9A0  7C 08 02 A6 */	mflr r0
/* 807BE9A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 807BE9A8  39 61 00 50 */	addi r11, r1, 0x50
/* 807BE9AC  4B BA 38 31 */	bl _savegpr_29
/* 807BE9B0  7C 7D 1B 78 */	mr r29, r3
/* 807BE9B4  3C 60 80 7C */	lis r3, lit_1109@ha /* 0x807C23A0@ha */
/* 807BE9B8  3B C3 23 A0 */	addi r30, r3, lit_1109@l /* 0x807C23A0@l */
/* 807BE9BC  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 807BE9C0  7C 00 07 75 */	extsb. r0, r0
/* 807BE9C4  40 82 00 34 */	bne lbl_807BE9F8
/* 807BE9C8  3C 60 80 7C */	lis r3, lit_3929@ha /* 0x807C1FE4@ha */
/* 807BE9CC  C0 03 1F E4 */	lfs f0, lit_3929@l(r3)  /* 0x807C1FE4@l */
/* 807BE9D0  D0 1E 00 E8 */	stfs f0, 0xe8(r30)
/* 807BE9D4  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 807BE9D8  D0 03 00 04 */	stfs f0, 4(r3)
/* 807BE9DC  D0 03 00 08 */	stfs f0, 8(r3)
/* 807BE9E0  3C 80 80 7C */	lis r4, __dt__4cXyzFv@ha /* 0x807C1F68@ha */
/* 807BE9E4  38 84 1F 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807C1F68@l */
/* 807BE9E8  38 BE 00 D8 */	addi r5, r30, 0xd8
/* 807BE9EC  4B FF ED 4D */	bl __register_global_object
/* 807BE9F0  38 00 00 01 */	li r0, 1
/* 807BE9F4  98 1E 00 E4 */	stb r0, 0xe4(r30)
lbl_807BE9F8:
/* 807BE9F8  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 807BE9FC  80 63 00 04 */	lwz r3, 4(r3)
/* 807BEA00  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807BEA04  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807BEA08  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BEA0C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BEA10  4B B8 7A A1 */	bl PSMTXCopy
/* 807BEA14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BEA18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BEA1C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807BEA20  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807BEA24  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807BEA28  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807BEA2C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807BEA30  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807BEA34  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 807BEA38  80 63 00 04 */	lwz r3, 4(r3)
/* 807BEA3C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807BEA40  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807BEA44  38 81 00 20 */	addi r4, r1, 0x20
/* 807BEA48  4B 84 E1 B9 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 807BEA4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BEA50  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BEA54  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807BEA58  38 00 00 FF */	li r0, 0xff
/* 807BEA5C  90 01 00 08 */	stw r0, 8(r1)
/* 807BEA60  38 80 00 00 */	li r4, 0
/* 807BEA64  90 81 00 0C */	stw r4, 0xc(r1)
/* 807BEA68  38 00 FF FF */	li r0, -1
/* 807BEA6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BEA70  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BEA74  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BEA78  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807BEA7C  80 9D 0A BC */	lwz r4, 0xabc(r29)
/* 807BEA80  38 A0 00 00 */	li r5, 0
/* 807BEA84  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084D5@ha */
/* 807BEA88  38 C6 84 D5 */	addi r6, r6, 0x84D5 /* 0x000084D5@l */
/* 807BEA8C  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 807BEA90  39 1D 01 0C */	addi r8, r29, 0x10c
/* 807BEA94  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 807BEA98  39 5E 00 E8 */	addi r10, r30, 0xe8
/* 807BEA9C  3D 60 80 7C */	lis r11, lit_3910@ha /* 0x807C1FC0@ha */
/* 807BEAA0  C0 2B 1F C0 */	lfs f1, lit_3910@l(r11)  /* 0x807C1FC0@l */
/* 807BEAA4  4B 88 EA 29 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BEAA8  90 7D 0A BC */	stw r3, 0xabc(r29)
/* 807BEAAC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807BEAB0  38 00 00 FF */	li r0, 0xff
/* 807BEAB4  90 01 00 08 */	stw r0, 8(r1)
/* 807BEAB8  38 80 00 00 */	li r4, 0
/* 807BEABC  90 81 00 0C */	stw r4, 0xc(r1)
/* 807BEAC0  38 00 FF FF */	li r0, -1
/* 807BEAC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BEAC8  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BEACC  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BEAD0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807BEAD4  80 9D 0A C0 */	lwz r4, 0xac0(r29)
/* 807BEAD8  38 A0 00 00 */	li r5, 0
/* 807BEADC  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084D7@ha */
/* 807BEAE0  38 C6 84 D7 */	addi r6, r6, 0x84D7 /* 0x000084D7@l */
/* 807BEAE4  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 807BEAE8  39 1D 01 0C */	addi r8, r29, 0x10c
/* 807BEAEC  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 807BEAF0  39 5E 00 E8 */	addi r10, r30, 0xe8
/* 807BEAF4  3D 60 80 7C */	lis r11, lit_3910@ha /* 0x807C1FC0@ha */
/* 807BEAF8  C0 2B 1F C0 */	lfs f1, lit_3910@l(r11)  /* 0x807C1FC0@l */
/* 807BEAFC  4B 88 E9 D1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BEB00  90 7D 0A C0 */	stw r3, 0xac0(r29)
/* 807BEB04  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807BEB08  38 63 02 10 */	addi r3, r3, 0x210
/* 807BEB0C  80 9D 0A BC */	lwz r4, 0xabc(r29)
/* 807BEB10  4B 88 CE 09 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807BEB14  7C 7E 1B 79 */	or. r30, r3, r3
/* 807BEB18  41 82 00 34 */	beq lbl_807BEB4C
/* 807BEB1C  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 807BEB20  80 63 00 04 */	lwz r3, 4(r3)
/* 807BEB24  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807BEB28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807BEB2C  38 9E 00 68 */	addi r4, r30, 0x68
/* 807BEB30  38 BE 00 98 */	addi r5, r30, 0x98
/* 807BEB34  38 DE 00 A4 */	addi r6, r30, 0xa4
/* 807BEB38  4B AC 1C D1 */	bl func_80280808
/* 807BEB3C  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 807BEB40  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 807BEB44  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 807BEB48  D0 3E 00 B4 */	stfs f1, 0xb4(r30)
lbl_807BEB4C:
/* 807BEB4C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807BEB50  38 63 02 10 */	addi r3, r3, 0x210
/* 807BEB54  80 9D 0A C0 */	lwz r4, 0xac0(r29)
/* 807BEB58  4B 88 CD C1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807BEB5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 807BEB60  41 82 00 34 */	beq lbl_807BEB94
/* 807BEB64  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 807BEB68  80 63 00 04 */	lwz r3, 4(r3)
/* 807BEB6C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807BEB70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807BEB74  38 9E 00 68 */	addi r4, r30, 0x68
/* 807BEB78  38 BE 00 98 */	addi r5, r30, 0x98
/* 807BEB7C  38 DE 00 A4 */	addi r6, r30, 0xa4
/* 807BEB80  4B AC 1C 89 */	bl func_80280808
/* 807BEB84  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 807BEB88  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 807BEB8C  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 807BEB90  D0 3E 00 B4 */	stfs f1, 0xb4(r30)
lbl_807BEB94:
/* 807BEB94  39 61 00 50 */	addi r11, r1, 0x50
/* 807BEB98  4B BA 36 91 */	bl _restgpr_29
/* 807BEB9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807BEBA0  7C 08 03 A6 */	mtlr r0
/* 807BEBA4  38 21 00 50 */	addi r1, r1, 0x50
/* 807BEBA8  4E 80 00 20 */	blr 
