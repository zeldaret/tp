lbl_80CDD254:
/* 80CDD254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDD258  7C 08 02 A6 */	mflr r0
/* 80CDD25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDD264  3C 60 80 CE */	lis r3, __global_destructor_chain@ha
/* 80CDD268  3B E3 E4 70 */	addi r31, r3, __global_destructor_chain@l
/* 80CDD26C  48 00 00 20 */	b lbl_80CDD28C
lbl_80CDD270:
/* 80CDD270  80 05 00 00 */	lwz r0, 0(r5)
/* 80CDD274  90 1F 00 00 */	stw r0, 0(r31)
/* 80CDD278  80 65 00 08 */	lwz r3, 8(r5)
/* 80CDD27C  38 80 FF FF */	li r4, -1
/* 80CDD280  81 85 00 04 */	lwz r12, 4(r5)
/* 80CDD284  7D 89 03 A6 */	mtctr r12
/* 80CDD288  4E 80 04 21 */	bctrl 
lbl_80CDD28C:
/* 80CDD28C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CDD290  28 05 00 00 */	cmplwi r5, 0
/* 80CDD294  40 82 FF DC */	bne lbl_80CDD270
/* 80CDD298  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDD29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDD2A0  7C 08 03 A6 */	mtlr r0
/* 80CDD2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDD2A8  4E 80 00 20 */	blr 
