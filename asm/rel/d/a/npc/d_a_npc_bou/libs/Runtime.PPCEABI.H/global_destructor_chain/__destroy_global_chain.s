lbl_8096CF34:
/* 8096CF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096CF38  7C 08 02 A6 */	mflr r0
/* 8096CF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096CF40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096CF44  3C 60 80 97 */	lis r3, __global_destructor_chain@ha
/* 8096CF48  3B E3 34 40 */	addi r31, r3, __global_destructor_chain@l
/* 8096CF4C  48 00 00 20 */	b lbl_8096CF6C
lbl_8096CF50:
/* 8096CF50  80 05 00 00 */	lwz r0, 0(r5)
/* 8096CF54  90 1F 00 00 */	stw r0, 0(r31)
/* 8096CF58  80 65 00 08 */	lwz r3, 8(r5)
/* 8096CF5C  38 80 FF FF */	li r4, -1
/* 8096CF60  81 85 00 04 */	lwz r12, 4(r5)
/* 8096CF64  7D 89 03 A6 */	mtctr r12
/* 8096CF68  4E 80 04 21 */	bctrl 
lbl_8096CF6C:
/* 8096CF6C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8096CF70  28 05 00 00 */	cmplwi r5, 0
/* 8096CF74  40 82 FF DC */	bne lbl_8096CF50
/* 8096CF78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096CF7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096CF80  7C 08 03 A6 */	mtlr r0
/* 8096CF84  38 21 00 10 */	addi r1, r1, 0x10
/* 8096CF88  4E 80 00 20 */	blr 
