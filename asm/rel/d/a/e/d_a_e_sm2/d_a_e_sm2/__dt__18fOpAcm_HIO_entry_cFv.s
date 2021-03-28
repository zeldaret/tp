lbl_80798BA4:
/* 80798BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80798BA8  7C 08 02 A6 */	mflr r0
/* 80798BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80798BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80798BB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80798BB8  41 82 00 30 */	beq lbl_80798BE8
/* 80798BBC  3C 60 80 7A */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80798BC0  38 03 DB 64 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80798BC4  90 1F 00 00 */	stw r0, 0(r31)
/* 80798BC8  41 82 00 10 */	beq lbl_80798BD8
/* 80798BCC  3C 60 80 7A */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80798BD0  38 03 DB 70 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80798BD4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80798BD8:
/* 80798BD8  7C 80 07 35 */	extsh. r0, r4
/* 80798BDC  40 81 00 0C */	ble lbl_80798BE8
/* 80798BE0  7F E3 FB 78 */	mr r3, r31
/* 80798BE4  4B B3 61 58 */	b __dl__FPv
lbl_80798BE8:
/* 80798BE8  7F E3 FB 78 */	mr r3, r31
/* 80798BEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80798BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80798BF4  7C 08 03 A6 */	mtlr r0
/* 80798BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80798BFC  4E 80 00 20 */	blr 
