lbl_80342B98:
/* 80342B98  7C 08 02 A6 */	mflr r0
/* 80342B9C  90 01 00 04 */	stw r0, 4(r1)
/* 80342BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80342BA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80342BA8  3C 60 80 37 */	lis r3, __init_cpp_exceptions_reference@ha
/* 80342BAC  38 03 37 C0 */	addi r0, r3, __init_cpp_exceptions_reference@l
/* 80342BB0  7C 1F 03 78 */	mr r31, r0
/* 80342BB4  48 00 00 04 */	b lbl_80342BB8
lbl_80342BB8:
/* 80342BB8  48 00 00 04 */	b lbl_80342BBC
lbl_80342BBC:
/* 80342BBC  48 00 00 10 */	b lbl_80342BCC
lbl_80342BC0:
/* 80342BC0  7D 88 03 A6 */	mtlr r12
/* 80342BC4  4E 80 00 21 */	blrl 
/* 80342BC8  3B FF 00 04 */	addi r31, r31, 4
lbl_80342BCC:
/* 80342BCC  81 9F 00 00 */	lwz r12, 0(r31)
/* 80342BD0  28 0C 00 00 */	cmplwi r12, 0
/* 80342BD4  40 82 FF EC */	bne lbl_80342BC0
/* 80342BD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80342BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80342BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80342BE4  7C 08 03 A6 */	mtlr r0
/* 80342BE8  4E 80 00 20 */	blr 
