lbl_80CA8678:
/* 80CA8678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA867C  7C 08 02 A6 */	mflr r0
/* 80CA8680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA8688  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA868C  41 82 00 1C */	beq lbl_80CA86A8
/* 80CA8690  3C A0 80 CB */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80CA9DD4@ha */
/* 80CA8694  38 05 9D D4 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80CA9DD4@l */
/* 80CA8698  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA869C  7C 80 07 35 */	extsh. r0, r4
/* 80CA86A0  40 81 00 08 */	ble lbl_80CA86A8
/* 80CA86A4  4B 62 66 99 */	bl __dl__FPv
lbl_80CA86A8:
/* 80CA86A8  7F E3 FB 78 */	mr r3, r31
/* 80CA86AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA86B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA86B4  7C 08 03 A6 */	mtlr r0
/* 80CA86B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA86BC  4E 80 00 20 */	blr 
