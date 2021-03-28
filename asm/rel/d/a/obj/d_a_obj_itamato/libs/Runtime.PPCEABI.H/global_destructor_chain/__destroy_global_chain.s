lbl_80C29494:
/* 80C29494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29498  7C 08 02 A6 */	mflr r0
/* 80C2949C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C294A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C294A4  3C 60 80 C3 */	lis r3, __global_destructor_chain@ha
/* 80C294A8  3B E3 AD 50 */	addi r31, r3, __global_destructor_chain@l
/* 80C294AC  48 00 00 20 */	b lbl_80C294CC
lbl_80C294B0:
/* 80C294B0  80 05 00 00 */	lwz r0, 0(r5)
/* 80C294B4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C294B8  80 65 00 08 */	lwz r3, 8(r5)
/* 80C294BC  38 80 FF FF */	li r4, -1
/* 80C294C0  81 85 00 04 */	lwz r12, 4(r5)
/* 80C294C4  7D 89 03 A6 */	mtctr r12
/* 80C294C8  4E 80 04 21 */	bctrl 
lbl_80C294CC:
/* 80C294CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C294D0  28 05 00 00 */	cmplwi r5, 0
/* 80C294D4  40 82 FF DC */	bne lbl_80C294B0
/* 80C294D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C294DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C294E0  7C 08 03 A6 */	mtlr r0
/* 80C294E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C294E8  4E 80 00 20 */	blr 
