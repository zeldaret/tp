lbl_80741B4C:
/* 80741B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80741B50  7C 08 02 A6 */	mflr r0
/* 80741B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80741B58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80741B5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80741B60  41 82 00 1C */	beq lbl_80741B7C
/* 80741B64  3C A0 80 74 */	lis r5, __vt__12daE_PH_HIO_c@ha
/* 80741B68  38 05 1D A8 */	addi r0, r5, __vt__12daE_PH_HIO_c@l
/* 80741B6C  90 1F 00 00 */	stw r0, 0(r31)
/* 80741B70  7C 80 07 35 */	extsh. r0, r4
/* 80741B74  40 81 00 08 */	ble lbl_80741B7C
/* 80741B78  4B B8 D1 C4 */	b __dl__FPv
lbl_80741B7C:
/* 80741B7C  7F E3 FB 78 */	mr r3, r31
/* 80741B80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80741B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80741B88  7C 08 03 A6 */	mtlr r0
/* 80741B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80741B90  4E 80 00 20 */	blr 
