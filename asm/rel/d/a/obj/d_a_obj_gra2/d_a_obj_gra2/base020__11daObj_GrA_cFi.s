lbl_80C042D4:
/* 80C042D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C042D8  7C 08 02 A6 */	mflr r0
/* 80C042DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C042E0  2C 04 00 00 */	cmpwi r4, 0
/* 80C042E4  41 82 00 10 */	beq lbl_80C042F4
/* 80C042E8  38 80 00 0F */	li r4, 0xf
/* 80C042EC  C0 23 0A 94 */	lfs f1, 0xa94(r3)
/* 80C042F0  4B FF D0 C1 */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C042F4:
/* 80C042F4  38 60 00 01 */	li r3, 1
/* 80C042F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C042FC  7C 08 03 A6 */	mtlr r0
/* 80C04300  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04304  4E 80 00 20 */	blr 
