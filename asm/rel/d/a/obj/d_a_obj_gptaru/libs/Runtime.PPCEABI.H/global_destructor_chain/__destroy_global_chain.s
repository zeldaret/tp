lbl_8057D074:
/* 8057D074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D078  7C 08 02 A6 */	mflr r0
/* 8057D07C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D084  3C 60 80 58 */	lis r3, __global_destructor_chain@ha
/* 8057D088  3B E3 F8 D0 */	addi r31, r3, __global_destructor_chain@l
/* 8057D08C  48 00 00 20 */	b lbl_8057D0AC
lbl_8057D090:
/* 8057D090  80 05 00 00 */	lwz r0, 0(r5)
/* 8057D094  90 1F 00 00 */	stw r0, 0(r31)
/* 8057D098  80 65 00 08 */	lwz r3, 8(r5)
/* 8057D09C  38 80 FF FF */	li r4, -1
/* 8057D0A0  81 85 00 04 */	lwz r12, 4(r5)
/* 8057D0A4  7D 89 03 A6 */	mtctr r12
/* 8057D0A8  4E 80 04 21 */	bctrl 
lbl_8057D0AC:
/* 8057D0AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8057D0B0  28 05 00 00 */	cmplwi r5, 0
/* 8057D0B4  40 82 FF DC */	bne lbl_8057D090
/* 8057D0B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D0BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D0C0  7C 08 03 A6 */	mtlr r0
/* 8057D0C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D0C8  4E 80 00 20 */	blr 
