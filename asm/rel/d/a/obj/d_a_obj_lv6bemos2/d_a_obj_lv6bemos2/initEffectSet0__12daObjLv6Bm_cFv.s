lbl_80C7FD90:
/* 80C7FD90  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C7FD94  7C 08 02 A6 */	mflr r0
/* 80C7FD98  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C7FD9C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C7FDA0  4B 6E 24 31 */	bl _savegpr_26
/* 80C7FDA4  7C 7F 1B 78 */	mr r31, r3
/* 80C7FDA8  80 03 04 B4 */	lwz r0, 0x4b4(r3)
/* 80C7FDAC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C7FDB0  A0 03 04 B8 */	lhz r0, 0x4b8(r3)
/* 80C7FDB4  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80C7FDB8  A8 61 00 22 */	lha r3, 0x22(r1)
/* 80C7FDBC  A8 1F 09 C2 */	lha r0, 0x9c2(r31)
/* 80C7FDC0  7C 03 02 14 */	add r0, r3, r0
/* 80C7FDC4  B0 01 00 22 */	sth r0, 0x22(r1)
/* 80C7FDC8  3B 40 00 00 */	li r26, 0
/* 80C7FDCC  3B C0 00 00 */	li r30, 0
/* 80C7FDD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7FDD4  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7FDD8  3C 60 80 C8 */	lis r3, eff_id_4596@ha /* 0x80C81CAC@ha */
/* 80C7FDDC  3B 83 1C AC */	addi r28, r3, eff_id_4596@l /* 0x80C81CAC@l */
/* 80C7FDE0  3C 60 80 C8 */	lis r3, lit_3855@ha /* 0x80C81C48@ha */
/* 80C7FDE4  3B A3 1C 48 */	addi r29, r3, lit_3855@l /* 0x80C81C48@l */
lbl_80C7FDE8:
/* 80C7FDE8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C7FDEC  38 80 00 00 */	li r4, 0
/* 80C7FDF0  90 81 00 08 */	stw r4, 8(r1)
/* 80C7FDF4  38 00 FF FF */	li r0, -1
/* 80C7FDF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7FDFC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C7FE00  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C7FE04  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C7FE08  38 80 00 00 */	li r4, 0
/* 80C7FE0C  7C BC F2 2E */	lhzx r5, r28, r30
/* 80C7FE10  38 DF 05 38 */	addi r6, r31, 0x538
/* 80C7FE14  38 E0 00 00 */	li r7, 0
/* 80C7FE18  39 01 00 20 */	addi r8, r1, 0x20
/* 80C7FE1C  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80C7FE20  39 40 00 FF */	li r10, 0xff
/* 80C7FE24  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80C7FE28  4B 3C CC 69 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C7FE2C  3B 5A 00 01 */	addi r26, r26, 1
/* 80C7FE30  2C 1A 00 02 */	cmpwi r26, 2
/* 80C7FE34  3B DE 00 02 */	addi r30, r30, 2
/* 80C7FE38  41 80 FF B0 */	blt lbl_80C7FDE8
/* 80C7FE3C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C7FE40  38 80 00 00 */	li r4, 0
/* 80C7FE44  90 81 00 08 */	stw r4, 8(r1)
/* 80C7FE48  38 00 FF FF */	li r0, -1
/* 80C7FE4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7FE50  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C7FE54  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C7FE58  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C7FE5C  38 80 00 00 */	li r4, 0
/* 80C7FE60  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000890C@ha */
/* 80C7FE64  38 A5 89 0C */	addi r5, r5, 0x890C /* 0x0000890C@l */
/* 80C7FE68  38 DF 05 38 */	addi r6, r31, 0x538
/* 80C7FE6C  38 E0 00 00 */	li r7, 0
/* 80C7FE70  39 01 00 20 */	addi r8, r1, 0x20
/* 80C7FE74  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80C7FE78  39 40 00 FF */	li r10, 0xff
/* 80C7FE7C  3D 60 80 C8 */	lis r11, lit_3855@ha /* 0x80C81C48@ha */
/* 80C7FE80  C0 2B 1C 48 */	lfs f1, lit_3855@l(r11)  /* 0x80C81C48@l */
/* 80C7FE84  4B 3C CC 0D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C7FE88  90 7F 0A 24 */	stw r3, 0xa24(r31)
/* 80C7FE8C  80 7F 0A 24 */	lwz r3, 0xa24(r31)
/* 80C7FE90  28 03 00 00 */	cmplwi r3, 0
/* 80C7FE94  41 82 00 10 */	beq lbl_80C7FEA4
/* 80C7FE98  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80C7FE9C  60 00 00 40 */	ori r0, r0, 0x40
/* 80C7FEA0  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80C7FEA4:
/* 80C7FEA4  38 00 00 01 */	li r0, 1
/* 80C7FEA8  98 1F 0A 1A */	stb r0, 0xa1a(r31)
/* 80C7FEAC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C7FEB0  4B 6E 23 6D */	bl _restgpr_26
/* 80C7FEB4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C7FEB8  7C 08 03 A6 */	mtlr r0
/* 80C7FEBC  38 21 00 40 */	addi r1, r1, 0x40
/* 80C7FEC0  4E 80 00 20 */	blr 
