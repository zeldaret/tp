lbl_801FE2E8:
/* 801FE2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FE2EC  7C 08 02 A6 */	mflr r0
/* 801FE2F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FE2F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FE2F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 801FE2FC  41 82 00 1C */	beq lbl_801FE318
/* 801FE300  3C A0 80 3C */	lis r5, __vt__20dDlst_MENU_CAPTURE_c@ha /* 0x803BF0D4@ha */
/* 801FE304  38 05 F0 D4 */	addi r0, r5, __vt__20dDlst_MENU_CAPTURE_c@l /* 0x803BF0D4@l */
/* 801FE308  90 1F 00 00 */	stw r0, 0(r31)
/* 801FE30C  7C 80 07 35 */	extsh. r0, r4
/* 801FE310  40 81 00 08 */	ble lbl_801FE318
/* 801FE314  48 0D 0A 29 */	bl __dl__FPv
lbl_801FE318:
/* 801FE318  7F E3 FB 78 */	mr r3, r31
/* 801FE31C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FE320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FE324  7C 08 03 A6 */	mtlr r0
/* 801FE328  38 21 00 10 */	addi r1, r1, 0x10
/* 801FE32C  4E 80 00 20 */	blr 
