lbl_80031EF0:
/* 80031EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031EF4  7C 08 02 A6 */	mflr r0
/* 80031EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031EFC  3C 60 80 42 */	lis r3, mData__7daSus_c@ha /* 0x80423FFC@ha */
/* 80031F00  38 63 3F FC */	addi r3, r3, mData__7daSus_c@l /* 0x80423FFC@l */
/* 80031F04  3C 80 80 03 */	lis r4, __dt__Q27daSus_c6data_cFv@ha /* 0x80031F28@ha */
/* 80031F08  38 84 1F 28 */	addi r4, r4, __dt__Q27daSus_c6data_cFv@l /* 0x80031F28@l */
/* 80031F0C  38 A0 00 24 */	li r5, 0x24
/* 80031F10  38 C0 00 20 */	li r6, 0x20
/* 80031F14  48 32 FD D5 */	bl __destroy_arr
/* 80031F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031F1C  7C 08 03 A6 */	mtlr r0
/* 80031F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80031F24  4E 80 00 20 */	blr 
