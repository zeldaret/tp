lbl_804A4D48:
/* 804A4D48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A4D4C  7C 08 02 A6 */	mflr r0
/* 804A4D50  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A4D54  39 61 00 30 */	addi r11, r1, 0x30
/* 804A4D58  4B EB D4 74 */	b _savegpr_25
/* 804A4D5C  7C 7A 1B 78 */	mr r26, r3
/* 804A4D60  83 C3 00 04 */	lwz r30, 4(r3)
/* 804A4D64  83 BE 00 6C */	lwz r29, 0x6c(r30)
/* 804A4D68  28 1D 00 00 */	cmplwi r29, 0
/* 804A4D6C  41 82 01 CC */	beq lbl_804A4F38
/* 804A4D70  83 9E 00 70 */	lwz r28, 0x70(r30)
/* 804A4D74  28 1C 00 00 */	cmplwi r28, 0
/* 804A4D78  41 82 01 C0 */	beq lbl_804A4F38
/* 804A4D7C  3B 60 00 00 */	li r27, 0
/* 804A4D80  3C 60 80 4B */	lis r3, stringBase0@ha
/* 804A4D84  3B E3 89 98 */	addi r31, r3, stringBase0@l
/* 804A4D88  48 00 01 A0 */	b lbl_804A4F28
lbl_804A4D8C:
/* 804A4D8C  7F 83 E3 78 */	mr r3, r28
/* 804A4D90  7F 64 DB 78 */	mr r4, r27
/* 804A4D94  4B E3 9D 64 */	b getName__10JUTNameTabCFUs
/* 804A4D98  7C 79 1B 78 */	mr r25, r3
/* 804A4D9C  38 9F 00 0F */	addi r4, r31, 0xf
/* 804A4DA0  4B EC 3B F4 */	b strcmp
/* 804A4DA4  2C 03 00 00 */	cmpwi r3, 0
/* 804A4DA8  41 82 00 20 */	beq lbl_804A4DC8
/* 804A4DAC  7F 23 CB 78 */	mr r3, r25
/* 804A4DB0  3C 80 80 4B */	lis r4, stringBase0@ha
/* 804A4DB4  38 84 89 98 */	addi r4, r4, stringBase0@l
/* 804A4DB8  38 84 00 17 */	addi r4, r4, 0x17
/* 804A4DBC  4B EC 3B D8 */	b strcmp
/* 804A4DC0  2C 03 00 00 */	cmpwi r3, 0
/* 804A4DC4  40 82 01 60 */	bne lbl_804A4F24
lbl_804A4DC8:
/* 804A4DC8  38 60 00 28 */	li r3, 0x28
/* 804A4DCC  4B E2 9E 80 */	b __nw__FUl
/* 804A4DD0  7C 64 1B 79 */	or. r4, r3, r3
/* 804A4DD4  41 82 00 0C */	beq lbl_804A4DE0
/* 804A4DD8  4B E8 7B 94 */	b __ct__13J3DSkinDeformFv
/* 804A4DDC  7C 64 1B 78 */	mr r4, r3
lbl_804A4DE0:
/* 804A4DE0  28 04 00 00 */	cmplwi r4, 0
/* 804A4DE4  40 82 00 0C */	bne lbl_804A4DF0
/* 804A4DE8  38 60 00 00 */	li r3, 0
/* 804A4DEC  48 00 01 50 */	b lbl_804A4F3C
lbl_804A4DF0:
/* 804A4DF0  7F 43 D3 78 */	mr r3, r26
/* 804A4DF4  38 A0 00 01 */	li r5, 1
/* 804A4DF8  4B E8 2C A8 */	b setSkinDeform__8J3DModelFP13J3DSkinDeformUl
/* 804A4DFC  2C 03 00 00 */	cmpwi r3, 0
/* 804A4E00  41 82 00 0C */	beq lbl_804A4E0C
/* 804A4E04  38 60 00 00 */	li r3, 0
/* 804A4E08  48 00 01 34 */	b lbl_804A4F3C
lbl_804A4E0C:
/* 804A4E0C  7F 23 CB 78 */	mr r3, r25
/* 804A4E10  3C 80 80 4B */	lis r4, stringBase0@ha
/* 804A4E14  38 84 89 98 */	addi r4, r4, stringBase0@l
/* 804A4E18  38 84 00 0F */	addi r4, r4, 0xf
/* 804A4E1C  4B EC 3B 78 */	b strcmp
/* 804A4E20  2C 03 00 00 */	cmpwi r3, 0
/* 804A4E24  40 82 01 00 */	bne lbl_804A4F24
/* 804A4E28  3C 60 80 45 */	lis r3, mFrameBufferTimg__13mDoGph_gInf_c@ha
/* 804A4E2C  80 83 0B CC */	lwz r4, mFrameBufferTimg__13mDoGph_gInf_c@l(r3)
/* 804A4E30  80 7D 00 04 */	lwz r3, 4(r29)
/* 804A4E34  57 60 2A F4 */	rlwinm r0, r27, 5, 0xb, 0x1a
/* 804A4E38  7C 63 02 14 */	add r3, r3, r0
/* 804A4E3C  88 A4 00 00 */	lbz r5, 0(r4)
/* 804A4E40  98 A3 00 00 */	stb r5, 0(r3)
/* 804A4E44  88 A4 00 01 */	lbz r5, 1(r4)
/* 804A4E48  98 A3 00 01 */	stb r5, 1(r3)
/* 804A4E4C  A0 A4 00 02 */	lhz r5, 2(r4)
/* 804A4E50  B0 A3 00 02 */	sth r5, 2(r3)
/* 804A4E54  A0 A4 00 04 */	lhz r5, 4(r4)
/* 804A4E58  B0 A3 00 04 */	sth r5, 4(r3)
/* 804A4E5C  88 A4 00 06 */	lbz r5, 6(r4)
/* 804A4E60  98 A3 00 06 */	stb r5, 6(r3)
/* 804A4E64  88 A4 00 07 */	lbz r5, 7(r4)
/* 804A4E68  98 A3 00 07 */	stb r5, 7(r3)
/* 804A4E6C  88 A4 00 08 */	lbz r5, 8(r4)
/* 804A4E70  98 A3 00 08 */	stb r5, 8(r3)
/* 804A4E74  88 A4 00 09 */	lbz r5, 9(r4)
/* 804A4E78  98 A3 00 09 */	stb r5, 9(r3)
/* 804A4E7C  A0 A4 00 0A */	lhz r5, 0xa(r4)
/* 804A4E80  B0 A3 00 0A */	sth r5, 0xa(r3)
/* 804A4E84  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 804A4E88  90 A3 00 0C */	stw r5, 0xc(r3)
/* 804A4E8C  88 A4 00 10 */	lbz r5, 0x10(r4)
/* 804A4E90  98 A3 00 10 */	stb r5, 0x10(r3)
/* 804A4E94  88 A4 00 11 */	lbz r5, 0x11(r4)
/* 804A4E98  98 A3 00 11 */	stb r5, 0x11(r3)
/* 804A4E9C  88 A4 00 12 */	lbz r5, 0x12(r4)
/* 804A4EA0  98 A3 00 12 */	stb r5, 0x12(r3)
/* 804A4EA4  88 A4 00 13 */	lbz r5, 0x13(r4)
/* 804A4EA8  98 A3 00 13 */	stb r5, 0x13(r3)
/* 804A4EAC  88 A4 00 14 */	lbz r5, 0x14(r4)
/* 804A4EB0  98 A3 00 14 */	stb r5, 0x14(r3)
/* 804A4EB4  88 A4 00 15 */	lbz r5, 0x15(r4)
/* 804A4EB8  98 A3 00 15 */	stb r5, 0x15(r3)
/* 804A4EBC  88 A4 00 16 */	lbz r5, 0x16(r4)
/* 804A4EC0  98 A3 00 16 */	stb r5, 0x16(r3)
/* 804A4EC4  88 A4 00 17 */	lbz r5, 0x17(r4)
/* 804A4EC8  98 A3 00 17 */	stb r5, 0x17(r3)
/* 804A4ECC  88 A4 00 18 */	lbz r5, 0x18(r4)
/* 804A4ED0  98 A3 00 18 */	stb r5, 0x18(r3)
/* 804A4ED4  88 A4 00 19 */	lbz r5, 0x19(r4)
/* 804A4ED8  98 A3 00 19 */	stb r5, 0x19(r3)
/* 804A4EDC  A8 A4 00 1A */	lha r5, 0x1a(r4)
/* 804A4EE0  B0 A3 00 1A */	sth r5, 0x1a(r3)
/* 804A4EE4  80 A4 00 1C */	lwz r5, 0x1c(r4)
/* 804A4EE8  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 804A4EEC  80 7D 00 04 */	lwz r3, 4(r29)
/* 804A4EF0  7C A3 02 14 */	add r5, r3, r0
/* 804A4EF4  80 65 00 1C */	lwz r3, 0x1c(r5)
/* 804A4EF8  7C 64 1A 14 */	add r3, r4, r3
/* 804A4EFC  7C 65 18 50 */	subf r3, r5, r3
/* 804A4F00  90 65 00 1C */	stw r3, 0x1c(r5)
/* 804A4F04  80 7D 00 04 */	lwz r3, 4(r29)
/* 804A4F08  7C 63 02 14 */	add r3, r3, r0
/* 804A4F0C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A4F10  7C 04 02 14 */	add r0, r4, r0
/* 804A4F14  7C 03 00 50 */	subf r0, r3, r0
/* 804A4F18  90 03 00 0C */	stw r0, 0xc(r3)
/* 804A4F1C  7F C3 F3 78 */	mr r3, r30
/* 804A4F20  4B B6 8B F0 */	b mDoExt_modelTexturePatch__FP12J3DModelData
lbl_804A4F24:
/* 804A4F24  3B 7B 00 01 */	addi r27, r27, 1
lbl_804A4F28:
/* 804A4F28  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 804A4F2C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 804A4F30  7C 03 00 40 */	cmplw r3, r0
/* 804A4F34  41 80 FE 58 */	blt lbl_804A4D8C
lbl_804A4F38:
/* 804A4F38  38 60 00 01 */	li r3, 1
lbl_804A4F3C:
/* 804A4F3C  39 61 00 30 */	addi r11, r1, 0x30
/* 804A4F40  4B EB D2 D8 */	b _restgpr_25
/* 804A4F44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A4F48  7C 08 03 A6 */	mtlr r0
/* 804A4F4C  38 21 00 30 */	addi r1, r1, 0x30
/* 804A4F50  4E 80 00 20 */	blr 
