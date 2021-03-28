lbl_80C148A8:
/* 80C148A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C148AC  7C 08 02 A6 */	mflr r0
/* 80C148B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C148B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C148B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C148BC  41 82 00 30 */	beq lbl_80C148EC
/* 80C148C0  3C 60 80 C1 */	lis r3, __vt__16daGrdWater_HIO_c@ha
/* 80C148C4  38 03 4B 18 */	addi r0, r3, __vt__16daGrdWater_HIO_c@l
/* 80C148C8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C148CC  41 82 00 10 */	beq lbl_80C148DC
/* 80C148D0  3C 60 80 C1 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C148D4  38 03 4B 24 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C148D8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C148DC:
/* 80C148DC  7C 80 07 35 */	extsh. r0, r4
/* 80C148E0  40 81 00 0C */	ble lbl_80C148EC
/* 80C148E4  7F E3 FB 78 */	mr r3, r31
/* 80C148E8  4B 6B A4 54 */	b __dl__FPv
lbl_80C148EC:
/* 80C148EC  7F E3 FB 78 */	mr r3, r31
/* 80C148F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C148F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C148F8  7C 08 03 A6 */	mtlr r0
/* 80C148FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C14900  4E 80 00 20 */	blr 
