lbl_80020D84:
/* 80020D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020D88  7C 08 02 A6 */	mflr r0
/* 80020D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020D90  3C 60 80 02 */	lis r3, fpcCtRq_Do__FP14create_request@ha /* 0x80020CC8@ha */
/* 80020D94  38 63 0C C8 */	addi r3, r3, fpcCtRq_Do__FP14create_request@l /* 0x80020CC8@l */
/* 80020D98  38 80 00 00 */	li r4, 0
/* 80020D9C  4B FF FC 2D */	bl fpcCtIt_Method__FPFPvPv_iPv
/* 80020DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020DA4  7C 08 03 A6 */	mtlr r0
/* 80020DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80020DAC  4E 80 00 20 */	blr 
