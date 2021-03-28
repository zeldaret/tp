lbl_806C9F04:
/* 806C9F04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C9F08  7C 08 02 A6 */	mflr r0
/* 806C9F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C9F10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806C9F14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806C9F18  7C 7E 1B 78 */	mr r30, r3
/* 806C9F1C  3C A0 80 6D */	lis r5, lit_3904@ha
/* 806C9F20  3B E5 D0 00 */	addi r31, r5, lit_3904@l
/* 806C9F24  C0 23 04 FC */	lfs f1, 0x4fc(r3)
/* 806C9F28  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C9F2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9F30  41 81 00 10 */	bgt lbl_806C9F40
/* 806C9F34  80 1E 0B 80 */	lwz r0, 0xb80(r30)
/* 806C9F38  2C 00 00 00 */	cmpwi r0, 0
/* 806C9F3C  41 82 00 54 */	beq lbl_806C9F90
lbl_806C9F40:
/* 806C9F40  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806C9F44  38 63 D1 0C */	addi r3, r3, stringBase0@l
/* 806C9F48  38 80 00 07 */	li r4, 7
/* 806C9F4C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806C9F50  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806C9F54  3C A5 00 02 */	addis r5, r5, 2
/* 806C9F58  38 C0 00 80 */	li r6, 0x80
/* 806C9F5C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806C9F60  4B 97 23 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C9F64  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 806C9F68  80 04 00 08 */	lwz r0, 8(r4)
/* 806C9F6C  7C 00 18 40 */	cmplw r0, r3
/* 806C9F70  41 82 00 5C */	beq lbl_806C9FCC
/* 806C9F74  7F C3 F3 78 */	mr r3, r30
/* 806C9F78  38 80 00 07 */	li r4, 7
/* 806C9F7C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806C9F80  38 A0 00 02 */	li r5, 2
/* 806C9F84  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C9F88  4B FF DB 31 */	bl bckSet__8daE_GE_cFifUcf
/* 806C9F8C  48 00 00 40 */	b lbl_806C9FCC
lbl_806C9F90:
/* 806C9F90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9F94  40 80 00 38 */	bge lbl_806C9FCC
/* 806C9F98  2C 04 00 00 */	cmpwi r4, 0
/* 806C9F9C  41 82 00 1C */	beq lbl_806C9FB8
/* 806C9FA0  38 80 00 06 */	li r4, 6
/* 806C9FA4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806C9FA8  38 A0 00 02 */	li r5, 2
/* 806C9FAC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C9FB0  4B FF DB 09 */	bl bckSet__8daE_GE_cFifUcf
/* 806C9FB4  48 00 00 18 */	b lbl_806C9FCC
lbl_806C9FB8:
/* 806C9FB8  38 80 00 0A */	li r4, 0xa
/* 806C9FBC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806C9FC0  38 A0 00 02 */	li r5, 2
/* 806C9FC4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C9FC8  4B FF DA F1 */	bl bckSet__8daE_GE_cFifUcf
lbl_806C9FCC:
/* 806C9FCC  7F C3 F3 78 */	mr r3, r30
/* 806C9FD0  38 80 00 06 */	li r4, 6
/* 806C9FD4  4B FF DB 89 */	bl bckCheck__8daE_GE_cFi
/* 806C9FD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C9FDC  41 82 00 30 */	beq lbl_806CA00C
/* 806C9FE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007046B@ha */
/* 806C9FE4  38 03 04 6B */	addi r0, r3, 0x046B /* 0x0007046B@l */
/* 806C9FE8  90 01 00 08 */	stw r0, 8(r1)
/* 806C9FEC  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806C9FF0  38 81 00 08 */	addi r4, r1, 8
/* 806C9FF4  38 A0 00 00 */	li r5, 0
/* 806C9FF8  38 C0 FF FF */	li r6, -1
/* 806C9FFC  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 806CA000  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806CA004  7D 89 03 A6 */	mtctr r12
/* 806CA008  4E 80 04 21 */	bctrl 
lbl_806CA00C:
/* 806CA00C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806CA010  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806CA014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806CA018  7C 08 03 A6 */	mtlr r0
/* 806CA01C  38 21 00 20 */	addi r1, r1, 0x20
/* 806CA020  4E 80 00 20 */	blr 
