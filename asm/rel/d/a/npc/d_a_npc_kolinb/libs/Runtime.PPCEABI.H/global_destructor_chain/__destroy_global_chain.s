lbl_80A45934:
/* 80A45934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A45938  7C 08 02 A6 */	mflr r0
/* 80A4593C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A45940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A45944  3C 60 80 A5 */	lis r3, __global_destructor_chain@ha
/* 80A45948  3B E3 8E 80 */	addi r31, r3, __global_destructor_chain@l
/* 80A4594C  48 00 00 20 */	b lbl_80A4596C
lbl_80A45950:
/* 80A45950  80 05 00 00 */	lwz r0, 0(r5)
/* 80A45954  90 1F 00 00 */	stw r0, 0(r31)
/* 80A45958  80 65 00 08 */	lwz r3, 8(r5)
/* 80A4595C  38 80 FF FF */	li r4, -1
/* 80A45960  81 85 00 04 */	lwz r12, 4(r5)
/* 80A45964  7D 89 03 A6 */	mtctr r12
/* 80A45968  4E 80 04 21 */	bctrl 
lbl_80A4596C:
/* 80A4596C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A45970  28 05 00 00 */	cmplwi r5, 0
/* 80A45974  40 82 FF DC */	bne lbl_80A45950
/* 80A45978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A4597C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A45980  7C 08 03 A6 */	mtlr r0
/* 80A45984  38 21 00 10 */	addi r1, r1, 0x10
/* 80A45988  4E 80 00 20 */	blr 
