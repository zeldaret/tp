lbl_80A642D4:
/* 80A642D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A642D8  7C 08 02 A6 */	mflr r0
/* 80A642DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A642E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A642E4  3C 60 80 A7 */	lis r3, __global_destructor_chain@ha
/* 80A642E8  3B E3 9A 50 */	addi r31, r3, __global_destructor_chain@l
/* 80A642EC  48 00 00 20 */	b lbl_80A6430C
lbl_80A642F0:
/* 80A642F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80A642F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A642F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80A642FC  38 80 FF FF */	li r4, -1
/* 80A64300  81 85 00 04 */	lwz r12, 4(r5)
/* 80A64304  7D 89 03 A6 */	mtctr r12
/* 80A64308  4E 80 04 21 */	bctrl 
lbl_80A6430C:
/* 80A6430C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A64310  28 05 00 00 */	cmplwi r5, 0
/* 80A64314  40 82 FF DC */	bne lbl_80A642F0
/* 80A64318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6431C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A64320  7C 08 03 A6 */	mtlr r0
/* 80A64324  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64328  4E 80 00 20 */	blr 
