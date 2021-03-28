lbl_8019C314:
/* 8019C314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019C318  7C 08 02 A6 */	mflr r0
/* 8019C31C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019C320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019C324  7C 7F 1B 79 */	or. r31, r3, r3
/* 8019C328  41 82 00 48 */	beq lbl_8019C370
/* 8019C32C  3C 60 80 3C */	lis r3, __vt__12dMenu_save_c@ha
/* 8019C330  38 03 BD 78 */	addi r0, r3, __vt__12dMenu_save_c@l
/* 8019C334  90 1F 00 00 */	stw r0, 0(r31)
/* 8019C338  34 1F 00 18 */	addic. r0, r31, 0x18
/* 8019C33C  41 82 00 10 */	beq lbl_8019C34C
/* 8019C340  3C 60 80 3C */	lis r3, __vt__16dDlst_MenuSave_c@ha
/* 8019C344  38 03 E7 64 */	addi r0, r3, __vt__16dDlst_MenuSave_c@l
/* 8019C348  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_8019C34C:
/* 8019C34C  34 1F 00 10 */	addic. r0, r31, 0x10
/* 8019C350  41 82 00 10 */	beq lbl_8019C360
/* 8019C354  3C 60 80 3C */	lis r3, __vt__23dDlst_MenuSaveExplain_c@ha
/* 8019C358  38 03 E7 74 */	addi r0, r3, __vt__23dDlst_MenuSaveExplain_c@l
/* 8019C35C  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_8019C360:
/* 8019C360  7C 80 07 35 */	extsh. r0, r4
/* 8019C364  40 81 00 0C */	ble lbl_8019C370
/* 8019C368  7F E3 FB 78 */	mr r3, r31
/* 8019C36C  48 13 29 D1 */	bl __dl__FPv
lbl_8019C370:
/* 8019C370  7F E3 FB 78 */	mr r3, r31
/* 8019C374  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019C378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019C37C  7C 08 03 A6 */	mtlr r0
/* 8019C380  38 21 00 10 */	addi r1, r1, 0x10
/* 8019C384  4E 80 00 20 */	blr 
