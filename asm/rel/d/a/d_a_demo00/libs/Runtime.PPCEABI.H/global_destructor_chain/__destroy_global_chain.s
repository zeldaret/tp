lbl_804A42B4:
/* 804A42B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A42B8  7C 08 02 A6 */	mflr r0
/* 804A42BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A42C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A42C4  3C 60 80 4B */	lis r3, __global_destructor_chain@ha
/* 804A42C8  3B E3 8C 10 */	addi r31, r3, __global_destructor_chain@l
/* 804A42CC  48 00 00 20 */	b lbl_804A42EC
lbl_804A42D0:
/* 804A42D0  80 05 00 00 */	lwz r0, 0(r5)
/* 804A42D4  90 1F 00 00 */	stw r0, 0(r31)
/* 804A42D8  80 65 00 08 */	lwz r3, 8(r5)
/* 804A42DC  38 80 FF FF */	li r4, -1
/* 804A42E0  81 85 00 04 */	lwz r12, 4(r5)
/* 804A42E4  7D 89 03 A6 */	mtctr r12
/* 804A42E8  4E 80 04 21 */	bctrl 
lbl_804A42EC:
/* 804A42EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 804A42F0  28 05 00 00 */	cmplwi r5, 0
/* 804A42F4  40 82 FF DC */	bne lbl_804A42D0
/* 804A42F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A42FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A4300  7C 08 03 A6 */	mtlr r0
/* 804A4304  38 21 00 10 */	addi r1, r1, 0x10
/* 804A4308  4E 80 00 20 */	blr 
