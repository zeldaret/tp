lbl_80CE0374:
/* 80CE0374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE0378  7C 08 02 A6 */	mflr r0
/* 80CE037C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE0380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE0384  3C 60 80 CE */	lis r3, __global_destructor_chain@ha
/* 80CE0388  3B E3 3C 88 */	addi r31, r3, __global_destructor_chain@l
/* 80CE038C  48 00 00 20 */	b lbl_80CE03AC
lbl_80CE0390:
/* 80CE0390  80 05 00 00 */	lwz r0, 0(r5)
/* 80CE0394  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE0398  80 65 00 08 */	lwz r3, 8(r5)
/* 80CE039C  38 80 FF FF */	li r4, -1
/* 80CE03A0  81 85 00 04 */	lwz r12, 4(r5)
/* 80CE03A4  7D 89 03 A6 */	mtctr r12
/* 80CE03A8  4E 80 04 21 */	bctrl 
lbl_80CE03AC:
/* 80CE03AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CE03B0  28 05 00 00 */	cmplwi r5, 0
/* 80CE03B4  40 82 FF DC */	bne lbl_80CE0390
/* 80CE03B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE03BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE03C0  7C 08 03 A6 */	mtlr r0
/* 80CE03C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE03C8  4E 80 00 20 */	blr 
