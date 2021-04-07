lbl_80CA0180:
/* 80CA0180  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CA0184  7C 08 02 A6 */	mflr r0
/* 80CA0188  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CA018C  39 61 00 60 */	addi r11, r1, 0x60
/* 80CA0190  4B 6C 20 45 */	bl _savegpr_27
/* 80CA0194  3C 80 80 CA */	lis r4, REMOVE_ISU_IDX__14daObjNagaisu_c@ha /* 0x80CA035C@ha */
/* 80CA0198  3B 84 03 5C */	addi r28, r4, REMOVE_ISU_IDX__14daObjNagaisu_c@l /* 0x80CA035C@l */
/* 80CA019C  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 80CA01A0  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 80CA01A4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80CA01A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CA01AC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CA01B0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80CA01B4  38 61 00 20 */	addi r3, r1, 0x20
/* 80CA01B8  38 80 00 00 */	li r4, 0
/* 80CA01BC  38 A0 80 00 */	li r5, -32768
/* 80CA01C0  38 C0 00 00 */	li r6, 0
/* 80CA01C4  4B 5C 72 31 */	bl __ct__5csXyzFsss
/* 80CA01C8  C0 1C 00 A0 */	lfs f0, 0xa0(r28)
/* 80CA01CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CA01D0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CA01D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CA01D8  3B 60 00 00 */	li r27, 0
/* 80CA01DC  3B E0 00 00 */	li r31, 0
/* 80CA01E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA01E4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA01E8  3B DC 00 98 */	addi r30, r28, 0x98
lbl_80CA01EC:
/* 80CA01EC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80CA01F0  38 80 00 00 */	li r4, 0
/* 80CA01F4  90 81 00 08 */	stw r4, 8(r1)
/* 80CA01F8  38 00 FF FF */	li r0, -1
/* 80CA01FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA0200  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CA0204  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CA0208  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CA020C  38 80 00 00 */	li r4, 0
/* 80CA0210  7C BE FA 2E */	lhzx r5, r30, r31
/* 80CA0214  38 C1 00 34 */	addi r6, r1, 0x34
/* 80CA0218  38 E0 00 00 */	li r7, 0
/* 80CA021C  39 01 00 20 */	addi r8, r1, 0x20
/* 80CA0220  39 21 00 28 */	addi r9, r1, 0x28
/* 80CA0224  39 40 00 FF */	li r10, 0xff
/* 80CA0228  C0 3C 00 90 */	lfs f1, 0x90(r28)
/* 80CA022C  4B 3A C8 65 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CA0230  3B 7B 00 01 */	addi r27, r27, 1
/* 80CA0234  2C 1B 00 04 */	cmpwi r27, 4
/* 80CA0238  3B FF 00 02 */	addi r31, r31, 2
/* 80CA023C  41 80 FF B0 */	blt lbl_80CA01EC
/* 80CA0240  39 61 00 60 */	addi r11, r1, 0x60
/* 80CA0244  4B 6C 1F DD */	bl _restgpr_27
/* 80CA0248  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CA024C  7C 08 03 A6 */	mtlr r0
/* 80CA0250  38 21 00 60 */	addi r1, r1, 0x60
/* 80CA0254  4E 80 00 20 */	blr 
