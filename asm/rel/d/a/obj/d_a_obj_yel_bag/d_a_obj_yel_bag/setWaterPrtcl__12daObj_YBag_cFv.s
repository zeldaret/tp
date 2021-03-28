lbl_80D3D948:
/* 80D3D948  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D3D94C  7C 08 02 A6 */	mflr r0
/* 80D3D950  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D3D954  39 61 00 60 */	addi r11, r1, 0x60
/* 80D3D958  4B 62 48 6C */	b _savegpr_23
/* 80D3D95C  7C 7E 1B 78 */	mr r30, r3
/* 80D3D960  3C 60 80 D4 */	lis r3, lit_1109@ha
/* 80D3D964  3B E3 DE D0 */	addi r31, r3, lit_1109@l
/* 80D3D968  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 80D3D96C  7C 00 07 75 */	extsb. r0, r0
/* 80D3D970  40 82 00 34 */	bne lbl_80D3D9A4
/* 80D3D974  3C 60 80 D4 */	lis r3, lit_4503@ha
/* 80D3D978  C0 03 DD 64 */	lfs f0, lit_4503@l(r3)
/* 80D3D97C  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 80D3D980  38 7F 00 60 */	addi r3, r31, 0x60
/* 80D3D984  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D3D988  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D3D98C  3C 80 80 D4 */	lis r4, __dt__4cXyzFv@ha
/* 80D3D990  38 84 C3 5C */	addi r4, r4, __dt__4cXyzFv@l
/* 80D3D994  38 BF 00 50 */	addi r5, r31, 0x50
/* 80D3D998  4B FF E6 E1 */	bl __register_global_object
/* 80D3D99C  38 00 00 01 */	li r0, 1
/* 80D3D9A0  98 1F 00 5C */	stb r0, 0x5c(r31)
lbl_80D3D9A4:
/* 80D3D9A4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80D3D9A8  C0 3E 09 F4 */	lfs f1, 0x9f4(r30)
/* 80D3D9AC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D3D9B0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D3D9B4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80D3D9B8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80D3D9BC  3A E0 00 00 */	li r23, 0
/* 80D3D9C0  3B A0 00 00 */	li r29, 0
/* 80D3D9C4  3B 80 00 00 */	li r28, 0
/* 80D3D9C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3D9CC  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80D3D9D0  3C 60 80 D4 */	lis r3, emttrId@ha
/* 80D3D9D4  3B 43 DD F8 */	addi r26, r3, emttrId@l
/* 80D3D9D8  3C 60 80 D4 */	lis r3, lit_4322@ha
/* 80D3D9DC  3B 63 DD 20 */	addi r27, r3, lit_4322@l
lbl_80D3D9E0:
/* 80D3D9E0  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80D3D9E4  38 00 00 FF */	li r0, 0xff
/* 80D3D9E8  90 01 00 08 */	stw r0, 8(r1)
/* 80D3D9EC  38 80 00 00 */	li r4, 0
/* 80D3D9F0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D3D9F4  38 00 FF FF */	li r0, -1
/* 80D3D9F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D3D9FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D3DA00  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D3DA04  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D3DA08  3B 1C 0A 18 */	addi r24, r28, 0xa18
/* 80D3DA0C  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80D3DA10  38 A0 00 00 */	li r5, 0
/* 80D3DA14  7C DA EA 2E */	lhzx r6, r26, r29
/* 80D3DA18  38 E1 00 20 */	addi r7, r1, 0x20
/* 80D3DA1C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80D3DA20  39 20 00 00 */	li r9, 0
/* 80D3DA24  39 5F 00 60 */	addi r10, r31, 0x60
/* 80D3DA28  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80D3DA2C  4B 30 FA A0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D3DA30  7C 7E C1 2E */	stwx r3, r30, r24
/* 80D3DA34  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80D3DA38  38 63 02 10 */	addi r3, r3, 0x210
/* 80D3DA3C  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80D3DA40  4B 30 DE 74 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80D3DA44  3A F7 00 01 */	addi r23, r23, 1
/* 80D3DA48  2C 17 00 04 */	cmpwi r23, 4
/* 80D3DA4C  3B BD 00 02 */	addi r29, r29, 2
/* 80D3DA50  3B 9C 00 04 */	addi r28, r28, 4
/* 80D3DA54  41 80 FF 8C */	blt lbl_80D3D9E0
/* 80D3DA58  39 61 00 60 */	addi r11, r1, 0x60
/* 80D3DA5C  4B 62 47 B4 */	b _restgpr_23
/* 80D3DA60  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D3DA64  7C 08 03 A6 */	mtlr r0
/* 80D3DA68  38 21 00 60 */	addi r1, r1, 0x60
/* 80D3DA6C  4E 80 00 20 */	blr 
