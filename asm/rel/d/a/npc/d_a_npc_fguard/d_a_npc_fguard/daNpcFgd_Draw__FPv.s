lbl_809BAD84:
/* 809BAD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BAD88  7C 08 02 A6 */	mflr r0
/* 809BAD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BAD90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BAD94  7C 7F 1B 78 */	mr r31, r3
/* 809BAD98  88 03 0A D8 */	lbz r0, 0xad8(r3)
/* 809BAD9C  28 00 00 00 */	cmplwi r0, 0
/* 809BADA0  40 82 00 0C */	bne lbl_809BADAC
/* 809BADA4  38 60 00 01 */	li r3, 1
/* 809BADA8  48 00 00 64 */	b lbl_809BAE0C
lbl_809BADAC:
/* 809BADAC  4B 79 E3 50 */	b drawNpc__10daNpcCd2_cFv
/* 809BADB0  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 809BADB4  2C 00 00 10 */	cmpwi r0, 0x10
/* 809BADB8  40 80 00 1C */	bge lbl_809BADD4
/* 809BADBC  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 809BADC0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 809BADC4  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 809BADC8  7C 63 02 14 */	add r3, r3, r0
/* 809BADCC  C0 23 01 E8 */	lfs f1, 0x1e8(r3)
/* 809BADD0  48 00 00 18 */	b lbl_809BADE8
lbl_809BADD4:
/* 809BADD4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 809BADD8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 809BADDC  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 809BADE0  7C 63 02 14 */	add r3, r3, r0
/* 809BADE4  C0 23 FF 18 */	lfs f1, -0xe8(r3)
lbl_809BADE8:
/* 809BADE8  7F E3 FB 78 */	mr r3, r31
/* 809BADEC  80 9F 0A CC */	lwz r4, 0xacc(r31)
/* 809BADF0  80 BF 0A C8 */	lwz r5, 0xac8(r31)
/* 809BADF4  4B 79 E1 FC */	b drawObj__10daNpcCd2_cFiP8J3DModelf
/* 809BADF8  7F E3 FB 78 */	mr r3, r31
/* 809BADFC  3C 80 80 9C */	lis r4, lit_4201@ha
/* 809BAE00  C0 24 B4 3C */	lfs f1, lit_4201@l(r4)
/* 809BAE04  4B 79 E1 68 */	b drawShadow__10daNpcCd2_cFf
/* 809BAE08  38 60 00 01 */	li r3, 1
lbl_809BAE0C:
/* 809BAE0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BAE10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BAE14  7C 08 03 A6 */	mtlr r0
/* 809BAE18  38 21 00 10 */	addi r1, r1, 0x10
/* 809BAE1C  4E 80 00 20 */	blr 
