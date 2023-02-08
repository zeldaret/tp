lbl_80817E7C:
/* 80817E7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80817E80  7C 08 02 A6 */	mflr r0
/* 80817E84  90 01 00 44 */	stw r0, 0x44(r1)
/* 80817E88  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80817E8C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80817E90  7C 7E 1B 78 */	mr r30, r3
/* 80817E94  3C 60 80 82 */	lis r3, lit_1109@ha /* 0x80821E18@ha */
/* 80817E98  3B E3 1E 18 */	addi r31, r3, lit_1109@l /* 0x80821E18@l */
/* 80817E9C  80 7E 06 F4 */	lwz r3, 0x6f4(r30)
/* 80817EA0  34 03 FF FF */	addic. r0, r3, -1
/* 80817EA4  40 80 00 08 */	bge lbl_80817EAC
/* 80817EA8  38 00 00 00 */	li r0, 0
lbl_80817EAC:
/* 80817EAC  2C 00 00 05 */	cmpwi r0, 5
/* 80817EB0  40 81 00 08 */	ble lbl_80817EB8
/* 80817EB4  38 00 00 05 */	li r0, 5
lbl_80817EB8:
/* 80817EB8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80817EBC  80 63 00 04 */	lwz r3, 4(r3)
/* 80817EC0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80817EC4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80817EC8  54 00 10 3A */	slwi r0, r0, 2
/* 80817ECC  3C 60 80 82 */	lis r3, data_80821C30@ha /* 0x80821C30@ha */
/* 80817ED0  38 63 1C 30 */	addi r3, r3, data_80821C30@l /* 0x80821C30@l */
/* 80817ED4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80817ED8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80817EDC  7C 64 02 14 */	add r3, r4, r0
/* 80817EE0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80817EE4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80817EE8  4B B2 E5 C9 */	bl PSMTXCopy
/* 80817EEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80817EF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80817EF4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80817EF8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80817EFC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80817F00  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80817F04  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80817F08  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80817F0C  88 1F 02 6C */	lbz r0, 0x26c(r31)
/* 80817F10  7C 00 07 75 */	extsb. r0, r0
/* 80817F14  40 82 00 34 */	bne lbl_80817F48
/* 80817F18  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80817F1C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80817F20  D0 1F 02 70 */	stfs f0, 0x270(r31)
/* 80817F24  38 7F 02 70 */	addi r3, r31, 0x270
/* 80817F28  D0 03 00 04 */	stfs f0, 4(r3)
/* 80817F2C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80817F30  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 80817F34  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 80817F38  38 BF 02 60 */	addi r5, r31, 0x260
/* 80817F3C  4B FF E1 5D */	bl __register_global_object
/* 80817F40  38 00 00 01 */	li r0, 1
/* 80817F44  98 1F 02 6C */	stb r0, 0x26c(r31)
lbl_80817F48:
/* 80817F48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80817F4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80817F50  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80817F54  38 80 00 00 */	li r4, 0
/* 80817F58  90 81 00 08 */	stw r4, 8(r1)
/* 80817F5C  38 00 FF FF */	li r0, -1
/* 80817F60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80817F64  90 81 00 10 */	stw r4, 0x10(r1)
/* 80817F68  90 81 00 14 */	stw r4, 0x14(r1)
/* 80817F6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80817F70  38 80 00 00 */	li r4, 0
/* 80817F74  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008661@ha */
/* 80817F78  38 A5 86 61 */	addi r5, r5, 0x8661 /* 0x00008661@l */
/* 80817F7C  38 C1 00 24 */	addi r6, r1, 0x24
/* 80817F80  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80817F84  39 00 00 00 */	li r8, 0
/* 80817F88  39 3F 02 70 */	addi r9, r31, 0x270
/* 80817F8C  39 40 00 FF */	li r10, 0xff
/* 80817F90  3D 60 80 82 */	lis r11, lit_3791@ha /* 0x808218AC@ha */
/* 80817F94  C0 2B 18 AC */	lfs f1, lit_3791@l(r11)  /* 0x808218AC@l */
/* 80817F98  4B 83 4A F9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80817F9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702BA@ha */
/* 80817FA0  38 03 02 BA */	addi r0, r3, 0x02BA /* 0x000702BA@l */
/* 80817FA4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80817FA8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80817FAC  38 81 00 20 */	addi r4, r1, 0x20
/* 80817FB0  38 A0 FF FF */	li r5, -1
/* 80817FB4  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80817FB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80817FBC  7D 89 03 A6 */	mtctr r12
/* 80817FC0  4E 80 04 21 */	bctrl 
/* 80817FC4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80817FC8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80817FCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80817FD0  7C 08 03 A6 */	mtlr r0
/* 80817FD4  38 21 00 40 */	addi r1, r1, 0x40
/* 80817FD8  4E 80 00 20 */	blr 
