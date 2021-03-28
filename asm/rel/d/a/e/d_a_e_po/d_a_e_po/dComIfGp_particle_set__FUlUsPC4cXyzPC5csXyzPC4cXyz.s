lbl_807549F4:
/* 807549F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807549F8  7C 08 02 A6 */	mflr r0
/* 807549FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80754A00  7C 6C 1B 78 */	mr r12, r3
/* 80754A04  7C 8B 23 78 */	mr r11, r4
/* 80754A08  7C A8 2B 78 */	mr r8, r5
/* 80754A0C  7C C9 33 78 */	mr r9, r6
/* 80754A10  7C EA 3B 78 */	mr r10, r7
/* 80754A14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80754A18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80754A1C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80754A20  38 00 00 FF */	li r0, 0xff
/* 80754A24  90 01 00 08 */	stw r0, 8(r1)
/* 80754A28  38 80 00 00 */	li r4, 0
/* 80754A2C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80754A30  38 00 FF FF */	li r0, -1
/* 80754A34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80754A38  90 81 00 14 */	stw r4, 0x14(r1)
/* 80754A3C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80754A40  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80754A44  7D 84 63 78 */	mr r4, r12
/* 80754A48  38 A0 00 00 */	li r5, 0
/* 80754A4C  7D 66 5B 78 */	mr r6, r11
/* 80754A50  7D 07 43 78 */	mr r7, r8
/* 80754A54  39 00 00 00 */	li r8, 0
/* 80754A58  3D 60 80 75 */	lis r11, lit_3919@ha
/* 80754A5C  C0 2B 77 04 */	lfs f1, lit_3919@l(r11)
/* 80754A60  4B 8F 8A 6C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80754A64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80754A68  7C 08 03 A6 */	mtlr r0
/* 80754A6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80754A70  4E 80 00 20 */	blr 
