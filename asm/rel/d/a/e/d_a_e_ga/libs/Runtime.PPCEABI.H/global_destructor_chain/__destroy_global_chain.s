lbl_804FB094:
/* 804FB094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB098  7C 08 02 A6 */	mflr r0
/* 804FB09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB0A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FB0A4  3C 60 80 50 */	lis r3, __global_destructor_chain@ha
/* 804FB0A8  3B E3 BC 40 */	addi r31, r3, __global_destructor_chain@l
/* 804FB0AC  48 00 00 20 */	b lbl_804FB0CC
lbl_804FB0B0:
/* 804FB0B0  80 05 00 00 */	lwz r0, 0(r5)
/* 804FB0B4  90 1F 00 00 */	stw r0, 0(r31)
/* 804FB0B8  80 65 00 08 */	lwz r3, 8(r5)
/* 804FB0BC  38 80 FF FF */	li r4, -1
/* 804FB0C0  81 85 00 04 */	lwz r12, 4(r5)
/* 804FB0C4  7D 89 03 A6 */	mtctr r12
/* 804FB0C8  4E 80 04 21 */	bctrl 
lbl_804FB0CC:
/* 804FB0CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 804FB0D0  28 05 00 00 */	cmplwi r5, 0
/* 804FB0D4  40 82 FF DC */	bne lbl_804FB0B0
/* 804FB0D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FB0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB0E0  7C 08 03 A6 */	mtlr r0
/* 804FB0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB0E8  4E 80 00 20 */	blr 
