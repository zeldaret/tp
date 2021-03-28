lbl_80AABEBC:
/* 80AABEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AABEC0  7C 08 02 A6 */	mflr r0
/* 80AABEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AABEC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AABECC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AABED0  41 82 00 1C */	beq lbl_80AABEEC
/* 80AABED4  3C A0 80 AB */	lis r5, __vt__10cCcD_GStts@ha
/* 80AABED8  38 05 DA B4 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80AABEDC  90 1F 00 00 */	stw r0, 0(r31)
/* 80AABEE0  7C 80 07 35 */	extsh. r0, r4
/* 80AABEE4  40 81 00 08 */	ble lbl_80AABEEC
/* 80AABEE8  4B 82 2E 54 */	b __dl__FPv
lbl_80AABEEC:
/* 80AABEEC  7F E3 FB 78 */	mr r3, r31
/* 80AABEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AABEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AABEF8  7C 08 03 A6 */	mtlr r0
/* 80AABEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AABF00  4E 80 00 20 */	blr 
