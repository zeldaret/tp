lbl_80B6C154:
/* 80B6C154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6C158  7C 08 02 A6 */	mflr r0
/* 80B6C15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6C160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6C164  3C 60 80 B7 */	lis r3, __global_destructor_chain@ha
/* 80B6C168  3B E3 ED 20 */	addi r31, r3, __global_destructor_chain@l
/* 80B6C16C  48 00 00 20 */	b lbl_80B6C18C
lbl_80B6C170:
/* 80B6C170  80 05 00 00 */	lwz r0, 0(r5)
/* 80B6C174  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6C178  80 65 00 08 */	lwz r3, 8(r5)
/* 80B6C17C  38 80 FF FF */	li r4, -1
/* 80B6C180  81 85 00 04 */	lwz r12, 4(r5)
/* 80B6C184  7D 89 03 A6 */	mtctr r12
/* 80B6C188  4E 80 04 21 */	bctrl 
lbl_80B6C18C:
/* 80B6C18C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B6C190  28 05 00 00 */	cmplwi r5, 0
/* 80B6C194  40 82 FF DC */	bne lbl_80B6C170
/* 80B6C198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6C19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6C1A0  7C 08 03 A6 */	mtlr r0
/* 80B6C1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6C1A8  4E 80 00 20 */	blr 
