lbl_807A4148:
/* 807A4148  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807A414C  7C 08 02 A6 */	mflr r0
/* 807A4150  90 01 00 34 */	stw r0, 0x34(r1)
/* 807A4154  39 61 00 30 */	addi r11, r1, 0x30
/* 807A4158  4B BB E0 71 */	bl _savegpr_24
/* 807A415C  7C 7B 1B 78 */	mr r27, r3
/* 807A4160  3B DB 0F 94 */	addi r30, r27, 0xf94
/* 807A4164  80 63 05 CC */	lwz r3, 0x5cc(r3)
/* 807A4168  83 E3 00 04 */	lwz r31, 4(r3)
/* 807A416C  3B A0 00 00 */	li r29, 0
/* 807A4170  3B 80 00 00 */	li r28, 0
/* 807A4174  3C 60 80 7A */	lis r3, top_j@ha /* 0x807A6A60@ha */
/* 807A4178  3B 03 6A 60 */	addi r24, r3, top_j@l /* 0x807A6A60@l */
/* 807A417C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807A4180  3B 23 07 68 */	addi r25, r3, calc_mtx@l /* 0x80450768@l */
/* 807A4184  3C 60 80 7A */	lis r3, top_pos_data@ha /* 0x807A6E48@ha */
/* 807A4188  3B 43 6E 48 */	addi r26, r3, top_pos_data@l /* 0x807A6E48@l */
/* 807A418C  48 00 00 70 */	b lbl_807A41FC
lbl_807A4190:
/* 807A4190  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 807A4194  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807A4198  57 80 10 3A */	slwi r0, r28, 2
/* 807A419C  7C 18 00 2E */	lwzx r0, r24, r0
/* 807A41A0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807A41A4  7C 63 02 14 */	add r3, r3, r0
/* 807A41A8  80 99 00 00 */	lwz r4, 0(r25)
/* 807A41AC  4B BA 23 05 */	bl PSMTXCopy
/* 807A41B0  57 80 07 BE */	clrlwi r0, r28, 0x1e
/* 807A41B4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807A41B8  7C 7A 02 14 */	add r3, r26, r0
/* 807A41BC  38 9E 00 0C */	addi r4, r30, 0xc
/* 807A41C0  4B AC CD 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807A41C4  7F 63 DB 78 */	mr r3, r27
/* 807A41C8  7F C4 F3 78 */	mr r4, r30
/* 807A41CC  4B FF FE 39 */	bl foot_control__FP10e_st_classP7st_foot
/* 807A41D0  2C 03 00 00 */	cmpwi r3, 0
/* 807A41D4  41 82 00 20 */	beq lbl_807A41F4
/* 807A41D8  3B BD 00 01 */	addi r29, r29, 1
/* 807A41DC  2C 1D 00 64 */	cmpwi r29, 0x64
/* 807A41E0  40 80 00 14 */	bge lbl_807A41F4
/* 807A41E4  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 807A41E8  4B 86 CF 6D */	bl updateDL__16mDoExt_McaMorfSOFv
/* 807A41EC  3B 9C FF FF */	addi r28, r28, -1
/* 807A41F0  3B DE FF E8 */	addi r30, r30, -24
lbl_807A41F4:
/* 807A41F4  3B 9C 00 01 */	addi r28, r28, 1
/* 807A41F8  3B DE 00 18 */	addi r30, r30, 0x18
lbl_807A41FC:
/* 807A41FC  2C 1C 00 08 */	cmpwi r28, 8
/* 807A4200  41 80 FF 90 */	blt lbl_807A4190
/* 807A4204  39 61 00 30 */	addi r11, r1, 0x30
/* 807A4208  4B BB E0 0D */	bl _restgpr_24
/* 807A420C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807A4210  7C 08 03 A6 */	mtlr r0
/* 807A4214  38 21 00 30 */	addi r1, r1, 0x30
/* 807A4218  4E 80 00 20 */	blr 
