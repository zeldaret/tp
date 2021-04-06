lbl_80685DBC:
/* 80685DBC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80685DC0  7C 08 02 A6 */	mflr r0
/* 80685DC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80685DC8  39 61 00 50 */	addi r11, r1, 0x50
/* 80685DCC  4B CD C3 FD */	bl _savegpr_24
/* 80685DD0  7C 7E 1B 78 */	mr r30, r3
/* 80685DD4  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80685DD8  80 63 00 04 */	lwz r3, 4(r3)
/* 80685DDC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80685DE0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80685DE4  38 63 00 30 */	addi r3, r3, 0x30
/* 80685DE8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80685DEC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80685DF0  4B CC 06 C1 */	bl PSMTXCopy
/* 80685DF4  3B E0 00 00 */	li r31, 0
/* 80685DF8  3B A0 00 00 */	li r29, 0
/* 80685DFC  3B 80 00 00 */	li r28, 0
/* 80685E00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80685E04  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80685E08  3C 60 80 69 */	lis r3, enemyBombID@ha /* 0x8068A394@ha */
/* 80685E0C  3B 43 A3 94 */	addi r26, r3, enemyBombID@l /* 0x8068A394@l */
/* 80685E10  3C 60 80 69 */	lis r3, lit_3891@ha /* 0x8068A268@ha */
/* 80685E14  3B 63 A2 68 */	addi r27, r3, lit_3891@l /* 0x8068A268@l */
lbl_80685E18:
/* 80685E18  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80685E1C  38 00 00 FF */	li r0, 0xff
/* 80685E20  90 01 00 08 */	stw r0, 8(r1)
/* 80685E24  38 80 00 00 */	li r4, 0
/* 80685E28  90 81 00 0C */	stw r4, 0xc(r1)
/* 80685E2C  38 00 FF FF */	li r0, -1
/* 80685E30  90 01 00 10 */	stw r0, 0x10(r1)
/* 80685E34  90 81 00 14 */	stw r4, 0x14(r1)
/* 80685E38  90 81 00 18 */	stw r4, 0x18(r1)
/* 80685E3C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80685E40  3B 1C 0B 9C */	addi r24, r28, 0xb9c
/* 80685E44  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80685E48  38 A0 00 00 */	li r5, 0
/* 80685E4C  7C DA EA 2E */	lhzx r6, r26, r29
/* 80685E50  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80685E54  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80685E58  39 20 00 00 */	li r9, 0
/* 80685E5C  39 40 00 00 */	li r10, 0
/* 80685E60  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80685E64  4B 9C 76 69 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80685E68  7C 7E C1 2E */	stwx r3, r30, r24
/* 80685E6C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80685E70  38 63 02 10 */	addi r3, r3, 0x210
/* 80685E74  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80685E78  4B 9C 5A A1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80685E7C  7C 65 1B 79 */	or. r5, r3, r3
/* 80685E80  41 82 00 18 */	beq lbl_80685E98
/* 80685E84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80685E88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80685E8C  38 85 00 68 */	addi r4, r5, 0x68
/* 80685E90  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80685E94  4B BF A9 4D */	bl func_802807E0
lbl_80685E98:
/* 80685E98  3B FF 00 01 */	addi r31, r31, 1
/* 80685E9C  2C 1F 00 05 */	cmpwi r31, 5
/* 80685EA0  3B BD 00 02 */	addi r29, r29, 2
/* 80685EA4  3B 9C 00 04 */	addi r28, r28, 4
/* 80685EA8  41 80 FF 70 */	blt lbl_80685E18
/* 80685EAC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000A@ha */
/* 80685EB0  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0008000A@l */
/* 80685EB4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80685EB8  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80685EBC  38 63 0D 64 */	addi r3, r3, struct_80450D64+0x0@l /* 0x80450D64@l */
/* 80685EC0  88 63 00 00 */	lbz r3, 0(r3)
/* 80685EC4  7C 63 07 74 */	extsb r3, r3
/* 80685EC8  4B 9A 71 A5 */	bl dComIfGp_getReverb__Fi
/* 80685ECC  7C 66 1B 78 */	mr r6, r3
/* 80685ED0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80685ED4  38 81 00 20 */	addi r4, r1, 0x20
/* 80685ED8  38 A0 00 00 */	li r5, 0
/* 80685EDC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80685EE0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80685EE4  7D 89 03 A6 */	mtctr r12
/* 80685EE8  4E 80 04 21 */	bctrl 
/* 80685EEC  39 61 00 50 */	addi r11, r1, 0x50
/* 80685EF0  4B CD C3 25 */	bl _restgpr_24
/* 80685EF4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80685EF8  7C 08 03 A6 */	mtlr r0
/* 80685EFC  38 21 00 50 */	addi r1, r1, 0x50
/* 80685F00  4E 80 00 20 */	blr 
