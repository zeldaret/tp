lbl_80651C20:
/* 80651C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80651C24  7C 08 02 A6 */	mflr r0
/* 80651C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80651C2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80651C30  7C 7F 1B 78 */	mr r31, r3
/* 80651C34  80 63 06 68 */	lwz r3, 0x668(r3)
/* 80651C38  2C 03 00 00 */	cmpwi r3, 0
/* 80651C3C  41 82 00 0C */	beq lbl_80651C48
/* 80651C40  38 03 FF FF */	addi r0, r3, -1
/* 80651C44  90 1F 06 68 */	stw r0, 0x668(r31)
lbl_80651C48:
/* 80651C48  7F E3 FB 78 */	mr r3, r31
/* 80651C4C  4B FF F6 31 */	bl action__11daB_ZANTZ_cFv
/* 80651C50  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80651C54  4B 9B B1 11 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80651C58  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80651C5C  4B 9B B2 E9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80651C60  3C 60 80 65 */	lis r3, l_HIO@ha /* 0x80652938@ha */
/* 80651C64  38 63 29 38 */	addi r3, r3, l_HIO@l /* 0x80652938@l */
/* 80651C68  C0 23 00 08 */	lfs f1, 8(r3)
/* 80651C6C  FC 40 08 90 */	fmr f2, f1
/* 80651C70  FC 60 08 90 */	fmr f3, f1
/* 80651C74  4B 9B B1 C5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80651C78  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651C7C  80 83 00 04 */	lwz r4, 4(r3)
/* 80651C80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80651C84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80651C88  38 84 00 24 */	addi r4, r4, 0x24
/* 80651C8C  4B CF 48 25 */	bl PSMTXCopy
/* 80651C90  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651C94  4B 9B F5 59 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80651C98  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80651C9C  4B 9B B7 8D */	bl play__14mDoExt_baseAnmFv
/* 80651CA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80651CA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80651CA8  38 9F 06 74 */	addi r4, r31, 0x674
/* 80651CAC  4B CF 48 05 */	bl PSMTXCopy
/* 80651CB0  80 7F 06 A4 */	lwz r3, 0x6a4(r31)
/* 80651CB4  28 03 00 00 */	cmplwi r3, 0
/* 80651CB8  41 82 00 08 */	beq lbl_80651CC0
/* 80651CBC  4B A2 9D 05 */	bl Move__4dBgWFv
lbl_80651CC0:
/* 80651CC0  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80651CC4  2C 00 00 00 */	cmpwi r0, 0
/* 80651CC8  41 82 00 0C */	beq lbl_80651CD4
/* 80651CCC  7F E3 FB 78 */	mr r3, r31
/* 80651CD0  4B FF EC 11 */	bl calcSnortEffect__11daB_ZANTZ_cFv
lbl_80651CD4:
/* 80651CD4  7F E3 FB 78 */	mr r3, r31
/* 80651CD8  4B FF FE 45 */	bl cc_set__11daB_ZANTZ_cFv
/* 80651CDC  38 60 00 01 */	li r3, 1
/* 80651CE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80651CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80651CE8  7C 08 03 A6 */	mtlr r0
/* 80651CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80651CF0  4E 80 00 20 */	blr 
