lbl_80CA30D0:
/* 80CA30D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA30D4  7C 08 02 A6 */	mflr r0
/* 80CA30D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA30DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA30E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA30E4  41 82 00 1C */	beq lbl_80CA3100
/* 80CA30E8  3C A0 80 CA */	lis r5, __vt__14daObj_NanHIO_c@ha
/* 80CA30EC  38 05 34 80 */	addi r0, r5, __vt__14daObj_NanHIO_c@l
/* 80CA30F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA30F4  7C 80 07 35 */	extsh. r0, r4
/* 80CA30F8  40 81 00 08 */	ble lbl_80CA3100
/* 80CA30FC  4B 62 BC 40 */	b __dl__FPv
lbl_80CA3100:
/* 80CA3100  7F E3 FB 78 */	mr r3, r31
/* 80CA3104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA3108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA310C  7C 08 03 A6 */	mtlr r0
/* 80CA3110  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3114  4E 80 00 20 */	blr 
