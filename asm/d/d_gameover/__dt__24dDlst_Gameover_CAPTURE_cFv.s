lbl_8019C2CC:
/* 8019C2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019C2D0  7C 08 02 A6 */	mflr r0
/* 8019C2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019C2D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019C2DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8019C2E0  41 82 00 1C */	beq lbl_8019C2FC
/* 8019C2E4  3C A0 80 3C */	lis r5, __vt__24dDlst_Gameover_CAPTURE_c@ha /* 0x803BBDA8@ha */
/* 8019C2E8  38 05 BD A8 */	addi r0, r5, __vt__24dDlst_Gameover_CAPTURE_c@l /* 0x803BBDA8@l */
/* 8019C2EC  90 1F 00 00 */	stw r0, 0(r31)
/* 8019C2F0  7C 80 07 35 */	extsh. r0, r4
/* 8019C2F4  40 81 00 08 */	ble lbl_8019C2FC
/* 8019C2F8  48 13 2A 45 */	bl __dl__FPv
lbl_8019C2FC:
/* 8019C2FC  7F E3 FB 78 */	mr r3, r31
/* 8019C300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019C304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019C308  7C 08 03 A6 */	mtlr r0
/* 8019C30C  38 21 00 10 */	addi r1, r1, 0x10
/* 8019C310  4E 80 00 20 */	blr 
