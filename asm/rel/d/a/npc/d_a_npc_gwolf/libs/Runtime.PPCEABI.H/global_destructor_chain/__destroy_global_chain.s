lbl_809F3054:
/* 809F3054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F3058  7C 08 02 A6 */	mflr r0
/* 809F305C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F3060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F3064  3C 60 80 A0 */	lis r3, __global_destructor_chain@ha
/* 809F3068  3B E3 8E C0 */	addi r31, r3, __global_destructor_chain@l
/* 809F306C  48 00 00 20 */	b lbl_809F308C
lbl_809F3070:
/* 809F3070  80 05 00 00 */	lwz r0, 0(r5)
/* 809F3074  90 1F 00 00 */	stw r0, 0(r31)
/* 809F3078  80 65 00 08 */	lwz r3, 8(r5)
/* 809F307C  38 80 FF FF */	li r4, -1
/* 809F3080  81 85 00 04 */	lwz r12, 4(r5)
/* 809F3084  7D 89 03 A6 */	mtctr r12
/* 809F3088  4E 80 04 21 */	bctrl 
lbl_809F308C:
/* 809F308C  80 BF 00 00 */	lwz r5, 0(r31)
/* 809F3090  28 05 00 00 */	cmplwi r5, 0
/* 809F3094  40 82 FF DC */	bne lbl_809F3070
/* 809F3098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F309C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F30A0  7C 08 03 A6 */	mtlr r0
/* 809F30A4  38 21 00 10 */	addi r1, r1, 0x10
/* 809F30A8  4E 80 00 20 */	blr 
