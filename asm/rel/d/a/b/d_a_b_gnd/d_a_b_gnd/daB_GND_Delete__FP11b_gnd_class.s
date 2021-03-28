lbl_80600A5C:
/* 80600A5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80600A60  7C 08 02 A6 */	mflr r0
/* 80600A64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80600A68  39 61 00 20 */	addi r11, r1, 0x20
/* 80600A6C  4B D6 17 70 */	b _savegpr_29
/* 80600A70  7C 7D 1B 78 */	mr r29, r3
/* 80600A74  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80600A78  3C 80 80 60 */	lis r4, stringBase0@ha
/* 80600A7C  38 84 29 AC */	addi r4, r4, stringBase0@l
/* 80600A80  4B A2 C5 88 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80600A84  38 7D 05 B4 */	addi r3, r29, 0x5b4
/* 80600A88  3C 80 80 60 */	lis r4, stringBase0@ha
/* 80600A8C  38 84 29 AC */	addi r4, r4, stringBase0@l
/* 80600A90  38 84 00 06 */	addi r4, r4, 6
/* 80600A94  4B A2 C5 74 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80600A98  88 1D 1F B0 */	lbz r0, 0x1fb0(r29)
/* 80600A9C  28 00 00 00 */	cmplwi r0, 0
/* 80600AA0  41 82 00 10 */	beq lbl_80600AB0
/* 80600AA4  38 00 00 00 */	li r0, 0
/* 80600AA8  3C 60 80 60 */	lis r3, struct_80602FA4+0x1@ha
/* 80600AAC  98 03 2F A5 */	stb r0, struct_80602FA4+0x1@l(r3)
lbl_80600AB0:
/* 80600AB0  80 1D 00 F0 */	lwz r0, 0xf0(r29)
/* 80600AB4  28 00 00 00 */	cmplwi r0, 0
/* 80600AB8  41 82 00 40 */	beq lbl_80600AF8
/* 80600ABC  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 80600AC0  4B A1 08 50 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80600AC4  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80600AC8  4B A1 08 48 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80600ACC  38 7D 1E 2C */	addi r3, r29, 0x1e2c
/* 80600AD0  4B CB D5 28 */	b deleteObject__14Z2SoundObjBaseFv
/* 80600AD4  3B C0 00 00 */	li r30, 0
/* 80600AD8  3B E0 00 00 */	li r31, 0
lbl_80600ADC:
/* 80600ADC  38 7F 1F 10 */	addi r3, r31, 0x1f10
/* 80600AE0  7C 7D 1A 14 */	add r3, r29, r3
/* 80600AE4  4B CB D5 14 */	b deleteObject__14Z2SoundObjBaseFv
/* 80600AE8  3B DE 00 01 */	addi r30, r30, 1
/* 80600AEC  2C 1E 00 05 */	cmpwi r30, 5
/* 80600AF0  3B FF 00 20 */	addi r31, r31, 0x20
/* 80600AF4  41 80 FF E8 */	blt lbl_80600ADC
lbl_80600AF8:
/* 80600AF8  38 60 00 01 */	li r3, 1
/* 80600AFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80600B00  4B D6 17 28 */	b _restgpr_29
/* 80600B04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80600B08  7C 08 03 A6 */	mtlr r0
/* 80600B0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80600B10  4E 80 00 20 */	blr 
