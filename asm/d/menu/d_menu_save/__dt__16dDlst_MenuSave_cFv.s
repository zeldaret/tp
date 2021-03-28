lbl_801F6B44:
/* 801F6B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F6B48  7C 08 02 A6 */	mflr r0
/* 801F6B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F6B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F6B54  7C 7F 1B 79 */	or. r31, r3, r3
/* 801F6B58  41 82 00 1C */	beq lbl_801F6B74
/* 801F6B5C  3C A0 80 3C */	lis r5, __vt__16dDlst_MenuSave_c@ha
/* 801F6B60  38 05 E7 64 */	addi r0, r5, __vt__16dDlst_MenuSave_c@l
/* 801F6B64  90 1F 00 00 */	stw r0, 0(r31)
/* 801F6B68  7C 80 07 35 */	extsh. r0, r4
/* 801F6B6C  40 81 00 08 */	ble lbl_801F6B74
/* 801F6B70  48 0D 81 CD */	bl __dl__FPv
lbl_801F6B74:
/* 801F6B74  7F E3 FB 78 */	mr r3, r31
/* 801F6B78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F6B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F6B80  7C 08 03 A6 */	mtlr r0
/* 801F6B84  38 21 00 10 */	addi r1, r1, 0x10
/* 801F6B88  4E 80 00 20 */	blr 
