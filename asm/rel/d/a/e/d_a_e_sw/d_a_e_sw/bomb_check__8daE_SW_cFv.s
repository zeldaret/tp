lbl_807A7CD0:
/* 807A7CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A7CD4  7C 08 02 A6 */	mflr r0
/* 807A7CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A7CDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A7CE0  7C 7F 1B 78 */	mr r31, r3
/* 807A7CE4  88 03 06 8C */	lbz r0, 0x68c(r3)
/* 807A7CE8  28 00 00 00 */	cmplwi r0, 0
/* 807A7CEC  40 82 00 44 */	bne lbl_807A7D30
/* 807A7CF0  4B FF FF 61 */	bl search_bomb__8daE_SW_cFv
/* 807A7CF4  7C 64 1B 79 */	or. r4, r3, r3
/* 807A7CF8  41 82 00 38 */	beq lbl_807A7D30
/* 807A7CFC  7F E3 FB 78 */	mr r3, r31
/* 807A7D00  4B 87 2A E1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A7D04  3C 60 80 7B */	lis r3, l_HIO@ha /* 0x807B0210@ha */
/* 807A7D08  38 63 02 10 */	addi r3, r3, l_HIO@l /* 0x807B0210@l */
/* 807A7D0C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807A7D10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A7D14  40 80 00 1C */	bge lbl_807A7D30
/* 807A7D18  7F E3 FB 78 */	mr r3, r31
/* 807A7D1C  38 80 00 04 */	li r4, 4
/* 807A7D20  38 A0 00 00 */	li r5, 0
/* 807A7D24  4B FF FE 41 */	bl setActionMode__8daE_SW_cFss
/* 807A7D28  38 60 00 01 */	li r3, 1
/* 807A7D2C  48 00 00 08 */	b lbl_807A7D34
lbl_807A7D30:
/* 807A7D30  38 60 00 00 */	li r3, 0
lbl_807A7D34:
/* 807A7D34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A7D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A7D3C  7C 08 03 A6 */	mtlr r0
/* 807A7D40  38 21 00 10 */	addi r1, r1, 0x10
/* 807A7D44  4E 80 00 20 */	blr 
