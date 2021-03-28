lbl_80594ABC:
/* 80594ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594AC0  7C 08 02 A6 */	mflr r0
/* 80594AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594ACC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80594AD0  41 82 01 10 */	beq lbl_80594BE0
/* 80594AD4  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80594AD8  3C 80 80 59 */	lis r4, l_arcName@ha
/* 80594ADC  38 84 4F 28 */	addi r4, r4, l_arcName@l
/* 80594AE0  80 84 00 00 */	lwz r4, 0(r4)
/* 80594AE4  4B A9 85 24 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80594AE8  38 7F 07 28 */	addi r3, r31, 0x728
/* 80594AEC  38 80 FF FF */	li r4, -1
/* 80594AF0  4B CB 54 58 */	b __dt__10dMsgFlow_cFv
/* 80594AF4  34 1F 05 E0 */	addic. r0, r31, 0x5e0
/* 80594AF8  41 82 00 84 */	beq lbl_80594B7C
/* 80594AFC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80594B00  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80594B04  90 7F 06 1C */	stw r3, 0x61c(r31)
/* 80594B08  38 03 00 2C */	addi r0, r3, 0x2c
/* 80594B0C  90 1F 07 00 */	stw r0, 0x700(r31)
/* 80594B10  38 03 00 84 */	addi r0, r3, 0x84
/* 80594B14  90 1F 07 14 */	stw r0, 0x714(r31)
/* 80594B18  34 1F 06 E4 */	addic. r0, r31, 0x6e4
/* 80594B1C  41 82 00 54 */	beq lbl_80594B70
/* 80594B20  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80594B24  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80594B28  90 7F 07 00 */	stw r3, 0x700(r31)
/* 80594B2C  38 03 00 58 */	addi r0, r3, 0x58
/* 80594B30  90 1F 07 14 */	stw r0, 0x714(r31)
/* 80594B34  34 1F 07 04 */	addic. r0, r31, 0x704
/* 80594B38  41 82 00 10 */	beq lbl_80594B48
/* 80594B3C  3C 60 80 59 */	lis r3, __vt__8cM3dGSph@ha
/* 80594B40  38 03 4F A0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80594B44  90 1F 07 14 */	stw r0, 0x714(r31)
lbl_80594B48:
/* 80594B48  34 1F 06 E4 */	addic. r0, r31, 0x6e4
/* 80594B4C  41 82 00 24 */	beq lbl_80594B70
/* 80594B50  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80594B54  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80594B58  90 1F 07 00 */	stw r0, 0x700(r31)
/* 80594B5C  34 1F 06 E4 */	addic. r0, r31, 0x6e4
/* 80594B60  41 82 00 10 */	beq lbl_80594B70
/* 80594B64  3C 60 80 59 */	lis r3, __vt__8cM3dGAab@ha
/* 80594B68  38 03 4F 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80594B6C  90 1F 06 FC */	stw r0, 0x6fc(r31)
lbl_80594B70:
/* 80594B70  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80594B74  38 80 00 00 */	li r4, 0
/* 80594B78  4B AE F5 6C */	b __dt__12dCcD_GObjInfFv
lbl_80594B7C:
/* 80594B7C  34 1F 05 A4 */	addic. r0, r31, 0x5a4
/* 80594B80  41 82 00 54 */	beq lbl_80594BD4
/* 80594B84  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80594B88  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80594B8C  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 80594B90  38 03 00 20 */	addi r0, r3, 0x20
/* 80594B94  90 1F 05 C0 */	stw r0, 0x5c0(r31)
/* 80594B98  34 1F 05 C0 */	addic. r0, r31, 0x5c0
/* 80594B9C  41 82 00 24 */	beq lbl_80594BC0
/* 80594BA0  3C 60 80 59 */	lis r3, __vt__10dCcD_GStts@ha
/* 80594BA4  38 03 4F 88 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80594BA8  90 1F 05 C0 */	stw r0, 0x5c0(r31)
/* 80594BAC  34 1F 05 C0 */	addic. r0, r31, 0x5c0
/* 80594BB0  41 82 00 10 */	beq lbl_80594BC0
/* 80594BB4  3C 60 80 59 */	lis r3, __vt__10cCcD_GStts@ha
/* 80594BB8  38 03 4F 7C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80594BBC  90 1F 05 C0 */	stw r0, 0x5c0(r31)
lbl_80594BC0:
/* 80594BC0  34 1F 05 A4 */	addic. r0, r31, 0x5a4
/* 80594BC4  41 82 00 10 */	beq lbl_80594BD4
/* 80594BC8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80594BCC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80594BD0  90 1F 05 BC */	stw r0, 0x5bc(r31)
lbl_80594BD4:
/* 80594BD4  7F E3 FB 78 */	mr r3, r31
/* 80594BD8  38 80 00 00 */	li r4, 0
/* 80594BDC  4B A8 40 B0 */	b __dt__10fopAc_ac_cFv
lbl_80594BE0:
/* 80594BE0  38 60 00 01 */	li r3, 1
/* 80594BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594BEC  7C 08 03 A6 */	mtlr r0
/* 80594BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80594BF4  4E 80 00 20 */	blr 
