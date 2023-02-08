lbl_807C4DFC:
/* 807C4DFC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807C4E00  7C 08 02 A6 */	mflr r0
/* 807C4E04  90 01 00 54 */	stw r0, 0x54(r1)
/* 807C4E08  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807C4E0C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807C4E10  39 61 00 40 */	addi r11, r1, 0x40
/* 807C4E14  4B B9 D3 B5 */	bl _savegpr_24
/* 807C4E18  7C 7C 1B 78 */	mr r28, r3
/* 807C4E1C  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 807C4E20  83 C3 00 04 */	lwz r30, 4(r3)
/* 807C4E24  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807C4E28  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807C4E2C  C3 E3 00 08 */	lfs f31, 8(r3)
/* 807C4E30  3B A0 00 00 */	li r29, 0
/* 807C4E34  3B 60 00 00 */	li r27, 0
/* 807C4E38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C4E3C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C4E40  3C 60 80 7D */	lis r3, va_bugs_eff_id@ha /* 0x807CF1A4@ha */
/* 807C4E44  3B 03 F1 A4 */	addi r24, r3, va_bugs_eff_id@l /* 0x807CF1A4@l */
/* 807C4E48  3C 60 80 7D */	lis r3, lit_3909@ha /* 0x807CECB0@ha */
/* 807C4E4C  3B 23 EC B0 */	addi r25, r3, lit_3909@l /* 0x807CECB0@l */
lbl_807C4E50:
/* 807C4E50  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807C4E54  38 80 00 00 */	li r4, 0
/* 807C4E58  90 81 00 08 */	stw r4, 8(r1)
/* 807C4E5C  38 00 FF FF */	li r0, -1
/* 807C4E60  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C4E64  90 81 00 10 */	stw r4, 0x10(r1)
/* 807C4E68  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C4E6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C4E70  38 80 00 00 */	li r4, 0
/* 807C4E74  7C B8 DA 2E */	lhzx r5, r24, r27
/* 807C4E78  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 807C4E7C  38 E0 00 00 */	li r7, 0
/* 807C4E80  39 00 00 00 */	li r8, 0
/* 807C4E84  39 20 00 00 */	li r9, 0
/* 807C4E88  39 40 00 FF */	li r10, 0xff
/* 807C4E8C  C0 39 00 00 */	lfs f1, 0(r25)
/* 807C4E90  4B 88 7C 01 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C4E94  7C 7A 1B 79 */	or. r26, r3, r3
/* 807C4E98  41 82 00 48 */	beq lbl_807C4EE0
/* 807C4E9C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 807C4EA0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807C4EA4  3C 60 80 7D */	lis r3, va_bugs_eff_jnt@ha /* 0x807CF18C@ha */
/* 807C4EA8  38 63 F1 8C */	addi r3, r3, va_bugs_eff_jnt@l /* 0x807CF18C@l */
/* 807C4EAC  7C 03 DA 2E */	lhzx r0, r3, r27
/* 807C4EB0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807C4EB4  7C 64 02 14 */	add r3, r4, r0
/* 807C4EB8  38 9A 00 68 */	addi r4, r26, 0x68
/* 807C4EBC  38 BA 00 98 */	addi r5, r26, 0x98
/* 807C4EC0  38 DA 00 A4 */	addi r6, r26, 0xa4
/* 807C4EC4  4B AB B9 45 */	bl func_80280808
/* 807C4EC8  C0 3A 00 9C */	lfs f1, 0x9c(r26)
/* 807C4ECC  C0 1A 00 98 */	lfs f0, 0x98(r26)
/* 807C4ED0  D0 1A 00 B0 */	stfs f0, 0xb0(r26)
/* 807C4ED4  D0 3A 00 B4 */	stfs f1, 0xb4(r26)
/* 807C4ED8  D3 FA 00 B0 */	stfs f31, 0xb0(r26)
/* 807C4EDC  D3 FA 00 B4 */	stfs f31, 0xb4(r26)
lbl_807C4EE0:
/* 807C4EE0  3B BD 00 01 */	addi r29, r29, 1
/* 807C4EE4  2C 1D 00 0C */	cmpwi r29, 0xc
/* 807C4EE8  3B 7B 00 02 */	addi r27, r27, 2
/* 807C4EEC  41 80 FF 64 */	blt lbl_807C4E50
/* 807C4EF0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807C4EF4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807C4EF8  39 61 00 40 */	addi r11, r1, 0x40
/* 807C4EFC  4B B9 D3 19 */	bl _restgpr_24
/* 807C4F00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807C4F04  7C 08 03 A6 */	mtlr r0
/* 807C4F08  38 21 00 50 */	addi r1, r1, 0x50
/* 807C4F0C  4E 80 00 20 */	blr 
