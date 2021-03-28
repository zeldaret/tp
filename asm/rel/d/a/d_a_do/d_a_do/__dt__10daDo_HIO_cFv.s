lbl_8066ED40:
/* 8066ED40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066ED44  7C 08 02 A6 */	mflr r0
/* 8066ED48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066ED4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066ED50  7C 7F 1B 79 */	or. r31, r3, r3
/* 8066ED54  41 82 00 1C */	beq lbl_8066ED70
/* 8066ED58  3C A0 80 67 */	lis r5, __vt__10daDo_HIO_c@ha
/* 8066ED5C  38 05 F2 64 */	addi r0, r5, __vt__10daDo_HIO_c@l
/* 8066ED60  90 1F 00 00 */	stw r0, 0(r31)
/* 8066ED64  7C 80 07 35 */	extsh. r0, r4
/* 8066ED68  40 81 00 08 */	ble lbl_8066ED70
/* 8066ED6C  4B C5 FF D0 */	b __dl__FPv
lbl_8066ED70:
/* 8066ED70  7F E3 FB 78 */	mr r3, r31
/* 8066ED74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066ED78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066ED7C  7C 08 03 A6 */	mtlr r0
/* 8066ED80  38 21 00 10 */	addi r1, r1, 0x10
/* 8066ED84  4E 80 00 20 */	blr 
