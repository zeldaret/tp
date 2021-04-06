lbl_80039F1C:
/* 80039F1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80039F20  7C 08 02 A6 */	mflr r0
/* 80039F24  90 01 00 34 */	stw r0, 0x34(r1)
/* 80039F28  7C 85 23 78 */	mr r5, r4
/* 80039F2C  C0 02 83 B0 */	lfs f0, lit_4040(r2)
/* 80039F30  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80039F34  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80039F38  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80039F3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80039F40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80039F44  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80039F48  38 80 00 00 */	li r4, 0
/* 80039F4C  90 81 00 08 */	stw r4, 8(r1)
/* 80039F50  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 80039F54  7C 00 07 74 */	extsb r0, r0
/* 80039F58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80039F5C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80039F60  90 81 00 14 */	stw r4, 0x14(r1)
/* 80039F64  90 81 00 18 */	stw r4, 0x18(r1)
/* 80039F68  38 80 00 00 */	li r4, 0
/* 80039F6C  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 80039F70  38 C1 00 20 */	addi r6, r1, 0x20
/* 80039F74  38 E0 00 00 */	li r7, 0
/* 80039F78  39 00 00 00 */	li r8, 0
/* 80039F7C  39 20 00 00 */	li r9, 0
/* 80039F80  39 40 00 FF */	li r10, 0xff
/* 80039F84  C0 22 83 B4 */	lfs f1, lit_4041(r2)
/* 80039F88  48 01 2B 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80039F8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80039F90  7C 08 03 A6 */	mtlr r0
/* 80039F94  38 21 00 30 */	addi r1, r1, 0x30
/* 80039F98  4E 80 00 20 */	blr 
