lbl_807819DC:
/* 807819DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807819E0  7C 08 02 A6 */	mflr r0
/* 807819E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807819E8  7C 68 1B 78 */	mr r8, r3
/* 807819EC  7C 85 23 78 */	mr r5, r4
/* 807819F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807819F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807819F8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807819FC  38 80 00 00 */	li r4, 0
/* 80781A00  90 81 00 08 */	stw r4, 8(r1)
/* 80781A04  38 00 FF FF */	li r0, -1
/* 80781A08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80781A0C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80781A10  90 81 00 14 */	stw r4, 0x14(r1)
/* 80781A14  90 81 00 18 */	stw r4, 0x18(r1)
/* 80781A18  38 80 00 00 */	li r4, 0
/* 80781A1C  38 C8 04 D0 */	addi r6, r8, 0x4d0
/* 80781A20  38 E8 01 0C */	addi r7, r8, 0x10c
/* 80781A24  39 08 04 E4 */	addi r8, r8, 0x4e4
/* 80781A28  39 20 00 00 */	li r9, 0
/* 80781A2C  39 40 00 FF */	li r10, 0xff
/* 80781A30  3D 60 80 78 */	lis r11, lit_3665@ha /* 0x80784D84@ha */
/* 80781A34  C0 2B 4D 84 */	lfs f1, lit_3665@l(r11)  /* 0x80784D84@l */
/* 80781A38  4B 8C B0 59 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80781A3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80781A40  7C 08 03 A6 */	mtlr r0
/* 80781A44  38 21 00 20 */	addi r1, r1, 0x20
/* 80781A48  4E 80 00 20 */	blr 
