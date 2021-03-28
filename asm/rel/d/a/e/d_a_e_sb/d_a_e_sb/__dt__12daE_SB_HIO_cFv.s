lbl_80784CC0:
/* 80784CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80784CC4  7C 08 02 A6 */	mflr r0
/* 80784CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80784CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80784CD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80784CD4  41 82 00 1C */	beq lbl_80784CF0
/* 80784CD8  3C A0 80 78 */	lis r5, __vt__12daE_SB_HIO_c@ha
/* 80784CDC  38 05 4F 20 */	addi r0, r5, __vt__12daE_SB_HIO_c@l
/* 80784CE0  90 1F 00 00 */	stw r0, 0(r31)
/* 80784CE4  7C 80 07 35 */	extsh. r0, r4
/* 80784CE8  40 81 00 08 */	ble lbl_80784CF0
/* 80784CEC  4B B4 A0 50 */	b __dl__FPv
lbl_80784CF0:
/* 80784CF0  7F E3 FB 78 */	mr r3, r31
/* 80784CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80784CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80784CFC  7C 08 03 A6 */	mtlr r0
/* 80784D00  38 21 00 10 */	addi r1, r1, 0x10
/* 80784D04  4E 80 00 20 */	blr 
