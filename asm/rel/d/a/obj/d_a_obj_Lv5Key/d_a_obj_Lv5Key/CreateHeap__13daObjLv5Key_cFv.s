lbl_80B9B9B8:
/* 80B9B9B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9B9BC  7C 08 02 A6 */	mflr r0
/* 80B9B9C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9B9C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9B9C8  4B 7C 68 15 */	bl _savegpr_29
/* 80B9B9CC  7C 7D 1B 78 */	mr r29, r3
/* 80B9B9D0  3C 60 80 BA */	lis r3, l_arcName@ha /* 0x80B9C9B4@ha */
/* 80B9B9D4  38 63 C9 B4 */	addi r3, r3, l_arcName@l /* 0x80B9C9B4@l */
/* 80B9B9D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9B9DC  38 80 00 07 */	li r4, 7
/* 80B9B9E0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9B9E4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9B9E8  3F C5 00 02 */	addis r30, r5, 2
/* 80B9B9EC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80B9B9F0  7F C5 F3 78 */	mr r5, r30
/* 80B9B9F4  38 C0 00 80 */	li r6, 0x80
/* 80B9B9F8  4B 4A 08 F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B9B9FC  7C 7F 1B 78 */	mr r31, r3
/* 80B9BA00  3C 60 80 BA */	lis r3, l_arcName@ha /* 0x80B9C9B4@ha */
/* 80B9BA04  38 63 C9 B4 */	addi r3, r3, l_arcName@l /* 0x80B9C9B4@l */
/* 80B9BA08  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9BA0C  38 80 00 04 */	li r4, 4
/* 80B9BA10  7F C5 F3 78 */	mr r5, r30
/* 80B9BA14  38 C0 00 80 */	li r6, 0x80
/* 80B9BA18  4B 4A 08 D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B9BA1C  7C 7E 1B 78 */	mr r30, r3
/* 80B9BA20  7F E3 FB 78 */	mr r3, r31
/* 80B9BA24  3C 80 00 08 */	lis r4, 8
/* 80B9BA28  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B9BA2C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B9BA30  4B 47 92 25 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B9BA34  90 7D 05 90 */	stw r3, 0x590(r29)
/* 80B9BA38  80 1D 05 90 */	lwz r0, 0x590(r29)
/* 80B9BA3C  28 00 00 00 */	cmplwi r0, 0
/* 80B9BA40  40 82 00 0C */	bne lbl_80B9BA4C
/* 80B9BA44  38 60 00 00 */	li r3, 0
/* 80B9BA48  48 00 00 34 */	b lbl_80B9BA7C
lbl_80B9BA4C:
/* 80B9BA4C  38 7D 05 94 */	addi r3, r29, 0x594
/* 80B9BA50  7F C4 F3 78 */	mr r4, r30
/* 80B9BA54  38 A0 00 01 */	li r5, 1
/* 80B9BA58  38 C0 00 00 */	li r6, 0
/* 80B9BA5C  3C E0 80 BA */	lis r7, lit_3755@ha /* 0x80B9C920@ha */
/* 80B9BA60  C0 27 C9 20 */	lfs f1, lit_3755@l(r7)  /* 0x80B9C920@l */
/* 80B9BA64  38 E0 00 00 */	li r7, 0
/* 80B9BA68  39 00 FF FF */	li r8, -1
/* 80B9BA6C  39 20 00 00 */	li r9, 0
/* 80B9BA70  4B 47 1D 6D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80B9BA74  30 03 FF FF */	addic r0, r3, -1
/* 80B9BA78  7C 60 19 10 */	subfe r3, r0, r3
lbl_80B9BA7C:
/* 80B9BA7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9BA80  4B 7C 67 A9 */	bl _restgpr_29
/* 80B9BA84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9BA88  7C 08 03 A6 */	mtlr r0
/* 80B9BA8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9BA90  4E 80 00 20 */	blr 
