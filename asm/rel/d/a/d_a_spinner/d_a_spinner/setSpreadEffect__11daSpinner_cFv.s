lbl_804D3D60:
/* 804D3D60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D3D64  7C 08 02 A6 */	mflr r0
/* 804D3D68  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D3D6C  39 61 00 40 */	addi r11, r1, 0x40
/* 804D3D70  4B E8 E4 61 */	bl _savegpr_26
/* 804D3D74  7C 7B 1B 78 */	mr r27, r3
/* 804D3D78  3C 60 80 4D */	lis r3, lit_3768@ha /* 0x804D4D90@ha */
/* 804D3D7C  3B C3 4D 90 */	addi r30, r3, lit_3768@l /* 0x804D4D90@l */
/* 804D3D80  3B BB 0A 8C */	addi r29, r27, 0xa8c
/* 804D3D84  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 804D3D88  38 63 00 24 */	addi r3, r3, 0x24
/* 804D3D8C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D3D90  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D3D94  4B E7 27 1D */	bl PSMTXCopy
/* 804D3D98  88 1B 0A 76 */	lbz r0, 0xa76(r27)
/* 804D3D9C  7C 00 07 75 */	extsb. r0, r0
/* 804D3DA0  40 80 00 14 */	bge lbl_804D3DB4
/* 804D3DA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D3DA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D3DAC  38 80 7F FF */	li r4, 0x7fff
/* 804D3DB0  4B B3 85 ED */	bl mDoMtx_XrotM__FPA4_fs
lbl_804D3DB4:
/* 804D3DB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D3DB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D3DBC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804D3DC0  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 804D3DC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D3DC8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804D3DCC  3B 80 00 00 */	li r28, 0
/* 804D3DD0  3B 40 00 00 */	li r26, 0
/* 804D3DD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D3DD8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_804D3DDC:
/* 804D3DDC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804D3DE0  38 63 02 10 */	addi r3, r3, 0x210
/* 804D3DE4  80 9D 00 00 */	lwz r4, 0(r29)
/* 804D3DE8  4B B7 7B 31 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804D3DEC  38 80 00 00 */	li r4, 0
/* 804D3DF0  38 A0 00 01 */	li r5, 1
/* 804D3DF4  88 1B 05 71 */	lbz r0, 0x571(r27)
/* 804D3DF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804D3DFC  40 82 00 18 */	bne lbl_804D3E14
/* 804D3E00  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D3E04  C0 1B 05 78 */	lfs f0, 0x578(r27)
/* 804D3E08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D3E0C  41 82 00 08 */	beq lbl_804D3E14
/* 804D3E10  7C 85 23 78 */	mr r5, r4
lbl_804D3E14:
/* 804D3E14  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804D3E18  40 82 00 14 */	bne lbl_804D3E2C
/* 804D3E1C  88 1B 0A 6F */	lbz r0, 0xa6f(r27)
/* 804D3E20  28 00 00 00 */	cmplwi r0, 0
/* 804D3E24  40 82 00 08 */	bne lbl_804D3E2C
/* 804D3E28  38 80 00 01 */	li r4, 1
lbl_804D3E2C:
/* 804D3E2C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804D3E30  40 82 00 38 */	bne lbl_804D3E68
/* 804D3E34  28 03 00 00 */	cmplwi r3, 0
/* 804D3E38  41 82 00 84 */	beq lbl_804D3EBC
/* 804D3E3C  38 A0 00 00 */	li r5, 0
/* 804D3E40  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 804D3E44  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804D3E48  41 82 00 18 */	beq lbl_804D3E60
/* 804D3E4C  80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 804D3E50  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 804D3E54  7C 04 02 15 */	add. r0, r4, r0
/* 804D3E58  40 82 00 08 */	bne lbl_804D3E60
/* 804D3E5C  38 A0 00 01 */	li r5, 1
lbl_804D3E60:
/* 804D3E60  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804D3E64  40 82 00 58 */	bne lbl_804D3EBC
lbl_804D3E68:
/* 804D3E68  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804D3E6C  38 00 00 FF */	li r0, 0xff
/* 804D3E70  90 01 00 08 */	stw r0, 8(r1)
/* 804D3E74  38 80 00 00 */	li r4, 0
/* 804D3E78  90 81 00 0C */	stw r4, 0xc(r1)
/* 804D3E7C  38 00 FF FF */	li r0, -1
/* 804D3E80  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D3E84  90 81 00 14 */	stw r4, 0x14(r1)
/* 804D3E88  90 81 00 18 */	stw r4, 0x18(r1)
/* 804D3E8C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804D3E90  80 9D 00 00 */	lwz r4, 0(r29)
/* 804D3E94  38 A0 00 00 */	li r5, 0
/* 804D3E98  38 DE 00 D8 */	addi r6, r30, 0xd8
/* 804D3E9C  7C C6 D2 2E */	lhzx r6, r6, r26
/* 804D3EA0  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 804D3EA4  39 00 00 00 */	li r8, 0
/* 804D3EA8  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 804D3EAC  39 40 00 00 */	li r10, 0
/* 804D3EB0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804D3EB4  4B B7 96 19 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804D3EB8  90 7D 00 00 */	stw r3, 0(r29)
lbl_804D3EBC:
/* 804D3EBC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804D3EC0  38 63 02 10 */	addi r3, r3, 0x210
/* 804D3EC4  80 9D 00 00 */	lwz r4, 0(r29)
/* 804D3EC8  4B B7 7A 51 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804D3ECC  7C 65 1B 79 */	or. r5, r3, r3
/* 804D3ED0  41 82 00 18 */	beq lbl_804D3EE8
/* 804D3ED4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D3ED8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D3EDC  38 85 00 68 */	addi r4, r5, 0x68
/* 804D3EE0  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 804D3EE4  4B DA C8 FD */	bl func_802807E0
lbl_804D3EE8:
/* 804D3EE8  3B 9C 00 01 */	addi r28, r28, 1
/* 804D3EEC  2C 1C 00 02 */	cmpwi r28, 2
/* 804D3EF0  3B 5A 00 02 */	addi r26, r26, 2
/* 804D3EF4  3B BD 00 04 */	addi r29, r29, 4
/* 804D3EF8  41 80 FE E4 */	blt lbl_804D3DDC
/* 804D3EFC  39 61 00 40 */	addi r11, r1, 0x40
/* 804D3F00  4B E8 E3 1D */	bl _restgpr_26
/* 804D3F04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D3F08  7C 08 03 A6 */	mtlr r0
/* 804D3F0C  38 21 00 40 */	addi r1, r1, 0x40
/* 804D3F10  4E 80 00 20 */	blr 
