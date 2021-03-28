lbl_80214C20:
/* 80214C20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80214C24  7C 08 02 A6 */	mflr r0
/* 80214C28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80214C2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80214C30  48 14 D5 9D */	bl _savegpr_25
/* 80214C34  7C 7A 1B 78 */	mr r26, r3
/* 80214C38  7C 9B 23 78 */	mr r27, r4
/* 80214C3C  3B E0 00 00 */	li r31, 0
/* 80214C40  3B C0 00 00 */	li r30, 0
/* 80214C44  3B A0 00 00 */	li r29, 0
/* 80214C48  3B 80 00 00 */	li r28, 0
/* 80214C4C  80 63 01 24 */	lwz r3, 0x124(r3)
/* 80214C50  48 04 0B D9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80214C54  C0 1A 07 90 */	lfs f0, 0x790(r26)
/* 80214C58  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80214C5C  40 82 00 0C */	bne lbl_80214C68
/* 80214C60  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80214C64  41 82 00 14 */	beq lbl_80214C78
lbl_80214C68:
/* 80214C68  80 7A 01 24 */	lwz r3, 0x124(r26)
/* 80214C6C  48 04 0B BD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80214C70  D0 3A 07 90 */	stfs f1, 0x790(r26)
/* 80214C74  3B E0 00 01 */	li r31, 1
lbl_80214C78:
/* 80214C78  C0 1A 07 94 */	lfs f0, 0x794(r26)
/* 80214C7C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80214C80  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80214C84  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 80214C88  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80214C8C  40 82 00 0C */	bne lbl_80214C98
/* 80214C90  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80214C94  41 82 00 0C */	beq lbl_80214CA0
lbl_80214C98:
/* 80214C98  D0 3A 07 94 */	stfs f1, 0x794(r26)
/* 80214C9C  3B C0 00 01 */	li r30, 1
lbl_80214CA0:
/* 80214CA0  C0 1A 07 9C */	lfs f0, 0x79c(r26)
/* 80214CA4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80214CA8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80214CAC  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80214CB0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80214CB4  40 82 00 0C */	bne lbl_80214CC0
/* 80214CB8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80214CBC  41 82 00 0C */	beq lbl_80214CC8
lbl_80214CC0:
/* 80214CC0  D0 3A 07 9C */	stfs f1, 0x79c(r26)
/* 80214CC4  3B C0 00 01 */	li r30, 1
lbl_80214CC8:
/* 80214CC8  C0 1A 07 98 */	lfs f0, 0x798(r26)
/* 80214CCC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80214CD0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80214CD4  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80214CD8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80214CDC  40 82 00 0C */	bne lbl_80214CE8
/* 80214CE0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80214CE4  41 82 00 0C */	beq lbl_80214CF0
lbl_80214CE8:
/* 80214CE8  D0 3A 07 98 */	stfs f1, 0x798(r26)
/* 80214CEC  3B A0 00 01 */	li r29, 1
lbl_80214CF0:
/* 80214CF0  C0 1A 07 A0 */	lfs f0, 0x7a0(r26)
/* 80214CF4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80214CF8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80214CFC  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 80214D00  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80214D04  40 82 00 0C */	bne lbl_80214D10
/* 80214D08  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80214D0C  41 82 00 0C */	beq lbl_80214D18
lbl_80214D10:
/* 80214D10  D0 3A 07 A0 */	stfs f1, 0x7a0(r26)
/* 80214D14  3B 80 00 01 */	li r28, 1
lbl_80214D18:
/* 80214D18  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80214D1C  40 82 00 14 */	bne lbl_80214D30
/* 80214D20  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80214D24  40 82 00 0C */	bne lbl_80214D30
/* 80214D28  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80214D2C  41 82 00 3C */	beq lbl_80214D68
lbl_80214D30:
/* 80214D30  3B 20 00 00 */	li r25, 0
/* 80214D34  3B C0 00 00 */	li r30, 0
lbl_80214D38:
/* 80214D38  38 1E 01 78 */	addi r0, r30, 0x178
/* 80214D3C  7C 7A 00 2E */	lwzx r3, r26, r0
/* 80214D40  C0 5A 07 90 */	lfs f2, 0x790(r26)
/* 80214D44  C0 3A 07 9C */	lfs f1, 0x79c(r26)
/* 80214D48  C0 1A 07 94 */	lfs f0, 0x794(r26)
/* 80214D4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80214D50  EC 22 00 32 */	fmuls f1, f2, f0
/* 80214D54  48 04 0A 7D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80214D58  3B 39 00 01 */	addi r25, r25, 1
/* 80214D5C  2C 19 00 14 */	cmpwi r25, 0x14
/* 80214D60  3B DE 00 04 */	addi r30, r30, 4
/* 80214D64  41 80 FF D4 */	blt lbl_80214D38
lbl_80214D68:
/* 80214D68  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80214D6C  40 82 00 14 */	bne lbl_80214D80
/* 80214D70  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80214D74  40 82 00 0C */	bne lbl_80214D80
/* 80214D78  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80214D7C  41 82 00 34 */	beq lbl_80214DB0
lbl_80214D80:
/* 80214D80  3B 20 00 00 */	li r25, 0
/* 80214D84  3B A0 00 00 */	li r29, 0
lbl_80214D88:
/* 80214D88  38 1D 04 40 */	addi r0, r29, 0x440
/* 80214D8C  7C 7A 00 2E */	lwzx r3, r26, r0
/* 80214D90  C0 3A 07 98 */	lfs f1, 0x798(r26)
/* 80214D94  C0 1A 07 90 */	lfs f0, 0x790(r26)
/* 80214D98  EC 21 00 32 */	fmuls f1, f1, f0
/* 80214D9C  48 04 0A 35 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80214DA0  3B 39 00 01 */	addi r25, r25, 1
/* 80214DA4  2C 19 00 14 */	cmpwi r25, 0x14
/* 80214DA8  3B BD 00 04 */	addi r29, r29, 4
/* 80214DAC  41 80 FF DC */	blt lbl_80214D88
lbl_80214DB0:
/* 80214DB0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80214DB4  40 82 00 14 */	bne lbl_80214DC8
/* 80214DB8  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80214DBC  40 82 00 0C */	bne lbl_80214DC8
/* 80214DC0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80214DC4  41 82 00 18 */	beq lbl_80214DDC
lbl_80214DC8:
/* 80214DC8  80 7A 01 C8 */	lwz r3, 0x1c8(r26)
/* 80214DCC  C0 3A 07 A0 */	lfs f1, 0x7a0(r26)
/* 80214DD0  C0 1A 07 90 */	lfs f0, 0x790(r26)
/* 80214DD4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80214DD8  48 04 09 F9 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80214DDC:
/* 80214DDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80214DE0  48 14 D4 39 */	bl _restgpr_25
/* 80214DE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80214DE8  7C 08 03 A6 */	mtlr r0
/* 80214DEC  38 21 00 30 */	addi r1, r1, 0x30
/* 80214DF0  4E 80 00 20 */	blr 
