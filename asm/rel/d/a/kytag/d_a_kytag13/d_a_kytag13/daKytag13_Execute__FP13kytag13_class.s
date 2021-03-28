lbl_808601C0:
/* 808601C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808601C4  7C 08 02 A6 */	mflr r0
/* 808601C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808601CC  88 03 04 BA */	lbz r0, 0x4ba(r3)
/* 808601D0  7C 05 07 74 */	extsb r5, r0
/* 808601D4  3C 80 80 45 */	lis r4, struct_80450D64+0x0@ha
/* 808601D8  88 04 0D 64 */	lbz r0, struct_80450D64+0x0@l(r4)
/* 808601DC  7C 00 07 74 */	extsb r0, r0
/* 808601E0  7C 05 00 00 */	cmpw r5, r0
/* 808601E4  40 82 00 08 */	bne lbl_808601EC
/* 808601E8  4B FF F0 C9 */	bl daKytag13_Execute_standard__FP13kytag13_class
lbl_808601EC:
/* 808601EC  38 60 00 01 */	li r3, 1
/* 808601F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808601F4  7C 08 03 A6 */	mtlr r0
/* 808601F8  38 21 00 10 */	addi r1, r1, 0x10
/* 808601FC  4E 80 00 20 */	blr 
