lbl_80A660D8:
/* 80A660D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A660DC  7C 08 02 A6 */	mflr r0
/* 80A660E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A660E4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A660E8  4B 8F C0 4D */	bl _savefpr_25
/* 80A660EC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80A660F0  7C 9F 23 78 */	mr r31, r4
/* 80A660F4  FF 20 08 90 */	fmr f25, f1
/* 80A660F8  FF 40 10 90 */	fmr f26, f2
/* 80A660FC  FF 60 18 90 */	fmr f27, f3
/* 80A66100  FF 80 20 90 */	fmr f28, f4
/* 80A66104  FF A0 28 90 */	fmr f29, f5
/* 80A66108  FF C0 30 90 */	fmr f30, f6
/* 80A6610C  FF E0 38 90 */	fmr f31, f7
/* 80A66110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A66114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A66118  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80A6611C  3C 80 80 A7 */	lis r4, d_a_npc_len__stringBase0@ha /* 0x80A68FDC@ha */
/* 80A66120  38 84 8F DC */	addi r4, r4, d_a_npc_len__stringBase0@l /* 0x80A68FDC@l */
/* 80A66124  38 84 00 92 */	addi r4, r4, 0x92
/* 80A66128  4B 90 28 6D */	bl strcmp
/* 80A6612C  2C 03 00 00 */	cmpwi r3, 0
/* 80A66130  40 82 00 64 */	bne lbl_80A66194
/* 80A66134  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A66138  28 00 00 00 */	cmplwi r0, 0
/* 80A6613C  41 82 00 58 */	beq lbl_80A66194
/* 80A66140  4B 6F 92 E5 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 80A66144  2C 03 00 00 */	cmpwi r3, 0
/* 80A66148  41 82 00 4C */	beq lbl_80A66194
/* 80A6614C  38 60 00 3C */	li r3, 0x3c
/* 80A66150  4B 6E 69 5D */	bl daNpcT_chkEvtBit__FUl
/* 80A66154  2C 03 00 00 */	cmpwi r3, 0
/* 80A66158  40 82 00 3C */	bne lbl_80A66194
/* 80A6615C  7F E3 FB 78 */	mr r3, r31
/* 80A66160  FC 20 C8 90 */	fmr f1, f25
/* 80A66164  FC 40 D0 90 */	fmr f2, f26
/* 80A66168  FC 60 D8 90 */	fmr f3, f27
/* 80A6616C  FC 80 E0 90 */	fmr f4, f28
/* 80A66170  FC A0 E8 90 */	fmr f5, f29
/* 80A66174  FC C0 F0 90 */	fmr f6, f30
/* 80A66178  FC E0 F8 90 */	fmr f7, f31
/* 80A6617C  38 80 00 00 */	li r4, 0
/* 80A66180  4B 6E 60 81 */	bl daNpcT_chkActorInScreen__FP10fopAc_ac_cfffffffi
/* 80A66184  2C 03 00 00 */	cmpwi r3, 0
/* 80A66188  41 82 00 0C */	beq lbl_80A66194
/* 80A6618C  38 60 00 01 */	li r3, 1
/* 80A66190  48 00 00 08 */	b lbl_80A66198
lbl_80A66194:
/* 80A66194  38 60 00 00 */	li r3, 0
lbl_80A66198:
/* 80A66198  39 61 00 50 */	addi r11, r1, 0x50
/* 80A6619C  4B 8F BF E5 */	bl _restfpr_25
/* 80A661A0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80A661A4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A661A8  7C 08 03 A6 */	mtlr r0
/* 80A661AC  38 21 00 50 */	addi r1, r1, 0x50
/* 80A661B0  4E 80 00 20 */	blr 
