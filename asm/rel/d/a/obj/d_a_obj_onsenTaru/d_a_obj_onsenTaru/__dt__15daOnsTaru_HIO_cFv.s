lbl_80CA9A78:
/* 80CA9A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9A7C  7C 08 02 A6 */	mflr r0
/* 80CA9A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA9A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA9A88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA9A8C  41 82 00 40 */	beq lbl_80CA9ACC
/* 80CA9A90  3C 60 80 CB */	lis r3, __vt__15daOnsTaru_HIO_c@ha
/* 80CA9A94  38 03 9D BC */	addi r0, r3, __vt__15daOnsTaru_HIO_c@l
/* 80CA9A98  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA9A9C  41 82 00 20 */	beq lbl_80CA9ABC
/* 80CA9AA0  3C 60 80 CB */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80CA9AA4  38 03 9D C8 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80CA9AA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA9AAC  41 82 00 10 */	beq lbl_80CA9ABC
/* 80CA9AB0  3C 60 80 CB */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80CA9AB4  38 03 9D D4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80CA9AB8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CA9ABC:
/* 80CA9ABC  7C 80 07 35 */	extsh. r0, r4
/* 80CA9AC0  40 81 00 0C */	ble lbl_80CA9ACC
/* 80CA9AC4  7F E3 FB 78 */	mr r3, r31
/* 80CA9AC8  4B 62 52 74 */	b __dl__FPv
lbl_80CA9ACC:
/* 80CA9ACC  7F E3 FB 78 */	mr r3, r31
/* 80CA9AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA9AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA9AD8  7C 08 03 A6 */	mtlr r0
/* 80CA9ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA9AE0  4E 80 00 20 */	blr 
