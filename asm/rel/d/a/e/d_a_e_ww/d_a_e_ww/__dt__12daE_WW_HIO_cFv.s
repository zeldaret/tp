lbl_807EEEBC:
/* 807EEEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EEEC0  7C 08 02 A6 */	mflr r0
/* 807EEEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EEEC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EEECC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807EEED0  41 82 00 1C */	beq lbl_807EEEEC
/* 807EEED4  3C A0 80 7F */	lis r5, __vt__12daE_WW_HIO_c@ha /* 0x807EFB6C@ha */
/* 807EEED8  38 05 FB 6C */	addi r0, r5, __vt__12daE_WW_HIO_c@l /* 0x807EFB6C@l */
/* 807EEEDC  90 1F 00 00 */	stw r0, 0(r31)
/* 807EEEE0  7C 80 07 35 */	extsh. r0, r4
/* 807EEEE4  40 81 00 08 */	ble lbl_807EEEEC
/* 807EEEE8  4B AD FE 55 */	bl __dl__FPv
lbl_807EEEEC:
/* 807EEEEC  7F E3 FB 78 */	mr r3, r31
/* 807EEEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EEEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EEEF8  7C 08 03 A6 */	mtlr r0
/* 807EEEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 807EEF00  4E 80 00 20 */	blr 
