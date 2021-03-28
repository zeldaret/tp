lbl_804E5154:
/* 804E5154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5158  7C 08 02 A6 */	mflr r0
/* 804E515C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E5164  3C 60 80 4F */	lis r3, __global_destructor_chain@ha
/* 804E5168  3B E3 EE E8 */	addi r31, r3, __global_destructor_chain@l
/* 804E516C  48 00 00 20 */	b lbl_804E518C
lbl_804E5170:
/* 804E5170  80 05 00 00 */	lwz r0, 0(r5)
/* 804E5174  90 1F 00 00 */	stw r0, 0(r31)
/* 804E5178  80 65 00 08 */	lwz r3, 8(r5)
/* 804E517C  38 80 FF FF */	li r4, -1
/* 804E5180  81 85 00 04 */	lwz r12, 4(r5)
/* 804E5184  7D 89 03 A6 */	mtctr r12
/* 804E5188  4E 80 04 21 */	bctrl 
lbl_804E518C:
/* 804E518C  80 BF 00 00 */	lwz r5, 0(r31)
/* 804E5190  28 05 00 00 */	cmplwi r5, 0
/* 804E5194  40 82 FF DC */	bne lbl_804E5170
/* 804E5198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E519C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E51A0  7C 08 03 A6 */	mtlr r0
/* 804E51A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E51A8  4E 80 00 20 */	blr 
