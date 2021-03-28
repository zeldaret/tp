lbl_804EF094:
/* 804EF094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF098  7C 08 02 A6 */	mflr r0
/* 804EF09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF0A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF0A4  3C 60 80 50 */	lis r3, __global_destructor_chain@ha
/* 804EF0A8  3B E3 AE 50 */	addi r31, r3, __global_destructor_chain@l
/* 804EF0AC  48 00 00 20 */	b lbl_804EF0CC
lbl_804EF0B0:
/* 804EF0B0  80 05 00 00 */	lwz r0, 0(r5)
/* 804EF0B4  90 1F 00 00 */	stw r0, 0(r31)
/* 804EF0B8  80 65 00 08 */	lwz r3, 8(r5)
/* 804EF0BC  38 80 FF FF */	li r4, -1
/* 804EF0C0  81 85 00 04 */	lwz r12, 4(r5)
/* 804EF0C4  7D 89 03 A6 */	mtctr r12
/* 804EF0C8  4E 80 04 21 */	bctrl 
lbl_804EF0CC:
/* 804EF0CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 804EF0D0  28 05 00 00 */	cmplwi r5, 0
/* 804EF0D4  40 82 FF DC */	bne lbl_804EF0B0
/* 804EF0D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF0E0  7C 08 03 A6 */	mtlr r0
/* 804EF0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF0E8  4E 80 00 20 */	blr 
