lbl_80192C70:
/* 80192C70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80192C74  7C 08 02 A6 */	mflr r0
/* 80192C78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80192C7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80192C80  48 1C F5 59 */	bl _savegpr_28
/* 80192C84  7C 7C 1B 78 */	mr r28, r3
/* 80192C88  80 64 01 A8 */	lwz r3, 0x1a8(r4)
/* 80192C8C  80 84 01 AC */	lwz r4, 0x1ac(r4)
/* 80192C90  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000F8@ha */
/* 80192C94  80 05 00 F8 */	lwz r0, 0x00F8(r5)  /* 0x800000F8@l */
/* 80192C98  54 06 F0 BE */	srwi r6, r0, 2
/* 80192C9C  38 A0 00 00 */	li r5, 0
/* 80192CA0  48 1C F6 85 */	bl __div2i
/* 80192CA4  7C 9D 23 78 */	mr r29, r4
/* 80192CA8  7C 7E 1B 78 */	mr r30, r3
/* 80192CAC  3C A0 00 37 */	lis r5, 0x0037 /* 0x0036EE44@ha */
/* 80192CB0  38 E5 EE 44 */	addi r7, r5, 0xEE44 /* 0x0036EE44@l */
/* 80192CB4  38 00 00 00 */	li r0, 0
/* 80192CB8  6F C6 80 00 */	xoris r6, r30, 0x8000
/* 80192CBC  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80192CC0  7C 07 E8 10 */	subfc r0, r7, r29
/* 80192CC4  7C A5 31 10 */	subfe r5, r5, r6
/* 80192CC8  7C A6 31 10 */	subfe r5, r6, r6
/* 80192CCC  7C A5 00 D1 */	neg. r5, r5
/* 80192CD0  40 82 00 20 */	bne lbl_80192CF0
/* 80192CD4  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 80192CD8  3C 80 80 39 */	lis r4, d_file_d_file_sel_info__stringBase0@ha /* 0x803948B8@ha */
/* 80192CDC  38 84 48 B8 */	addi r4, r4, d_file_d_file_sel_info__stringBase0@l /* 0x803948B8@l */
/* 80192CE0  38 84 00 48 */	addi r4, r4, 0x48
/* 80192CE4  4C C6 31 82 */	crclr 6
/* 80192CE8  48 1D 37 F5 */	bl sprintf
/* 80192CEC  48 00 00 54 */	b lbl_80192D40
lbl_80192CF0:
/* 80192CF0  38 A0 00 00 */	li r5, 0
/* 80192CF4  38 C0 0E 10 */	li r6, 0xe10
/* 80192CF8  48 1C F8 49 */	bl __mod2i
/* 80192CFC  38 A0 00 00 */	li r5, 0
/* 80192D00  38 C0 00 3C */	li r6, 0x3c
/* 80192D04  48 1C F6 21 */	bl __div2i
/* 80192D08  7C 9F 23 78 */	mr r31, r4
/* 80192D0C  7F C3 F3 78 */	mr r3, r30
/* 80192D10  7F A4 EB 78 */	mr r4, r29
/* 80192D14  38 A0 00 00 */	li r5, 0
/* 80192D18  38 C0 0E 10 */	li r6, 0xe10
/* 80192D1C  48 1C F6 09 */	bl __div2i
/* 80192D20  7C 85 23 78 */	mr r5, r4
/* 80192D24  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 80192D28  3C 80 80 39 */	lis r4, d_file_d_file_sel_info__stringBase0@ha /* 0x803948B8@ha */
/* 80192D2C  38 84 48 B8 */	addi r4, r4, d_file_d_file_sel_info__stringBase0@l /* 0x803948B8@l */
/* 80192D30  38 84 00 4F */	addi r4, r4, 0x4f
/* 80192D34  7F E6 FB 78 */	mr r6, r31
/* 80192D38  4C C6 31 82 */	crclr 6
/* 80192D3C  48 1D 37 A1 */	bl sprintf
lbl_80192D40:
/* 80192D40  39 61 00 20 */	addi r11, r1, 0x20
/* 80192D44  48 1C F4 E1 */	bl _restgpr_28
/* 80192D48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80192D4C  7C 08 03 A6 */	mtlr r0
/* 80192D50  38 21 00 20 */	addi r1, r1, 0x20
/* 80192D54  4E 80 00 20 */	blr 
