lbl_801FC904:
/* 801FC904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC908  7C 08 02 A6 */	mflr r0
/* 801FC90C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC914  7C 7F 1B 78 */	mr r31, r3
/* 801FC918  48 00 07 7D */	bl markMemSize__5dMw_cFv
/* 801FC91C  38 60 01 FC */	li r3, 0x1fc
/* 801FC920  48 0D 23 2D */	bl __nw__FUl
/* 801FC924  7C 60 1B 79 */	or. r0, r3, r3
/* 801FC928  41 82 00 18 */	beq lbl_801FC940
/* 801FC92C  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 801FC930  80 BF 01 04 */	lwz r5, 0x104(r31)
/* 801FC934  80 DF 01 08 */	lwz r6, 0x108(r31)
/* 801FC938  4B FC 84 1D */	bl __ct__15dMenu_Fishing_cFP10JKRExpHeapP9STControlP10CSTControl
/* 801FC93C  7C 60 1B 78 */	mr r0, r3
lbl_801FC940:
/* 801FC940  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 801FC944  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 801FC948  28 00 00 00 */	cmplwi r0, 0
/* 801FC94C  40 82 00 44 */	bne lbl_801FC990
/* 801FC950  38 60 00 08 */	li r3, 8
/* 801FC954  48 0D 22 F9 */	bl __nw__FUl
/* 801FC958  28 03 00 00 */	cmplwi r3, 0
/* 801FC95C  41 82 00 30 */	beq lbl_801FC98C
/* 801FC960  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha
/* 801FC964  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l
/* 801FC968  90 03 00 00 */	stw r0, 0(r3)
/* 801FC96C  3C 80 80 3C */	lis r4, __vt__20dDlst_MENU_CAPTURE_c@ha
/* 801FC970  38 04 F0 D4 */	addi r0, r4, __vt__20dDlst_MENU_CAPTURE_c@l
/* 801FC974  90 03 00 00 */	stw r0, 0(r3)
/* 801FC978  38 80 00 00 */	li r4, 0
/* 801FC97C  98 83 00 04 */	stb r4, 4(r3)
/* 801FC980  38 00 00 FF */	li r0, 0xff
/* 801FC984  98 03 00 05 */	stb r0, 5(r3)
/* 801FC988  98 83 00 06 */	stb r4, 6(r3)
lbl_801FC98C:
/* 801FC98C  90 7F 01 0C */	stw r3, 0x10c(r31)
lbl_801FC990:
/* 801FC990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC998  7C 08 03 A6 */	mtlr r0
/* 801FC99C  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC9A0  4E 80 00 20 */	blr 
