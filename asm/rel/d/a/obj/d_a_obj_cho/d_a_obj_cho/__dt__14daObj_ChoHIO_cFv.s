lbl_80BCC4D0:
/* 80BCC4D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCC4D4  7C 08 02 A6 */	mflr r0
/* 80BCC4D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCC4DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCC4E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCC4E4  41 82 00 1C */	beq lbl_80BCC500
/* 80BCC4E8  3C A0 80 BD */	lis r5, __vt__14daObj_ChoHIO_c@ha
/* 80BCC4EC  38 05 C7 38 */	addi r0, r5, __vt__14daObj_ChoHIO_c@l
/* 80BCC4F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80BCC4F4  7C 80 07 35 */	extsh. r0, r4
/* 80BCC4F8  40 81 00 08 */	ble lbl_80BCC500
/* 80BCC4FC  4B 70 28 40 */	b __dl__FPv
lbl_80BCC500:
/* 80BCC500  7F E3 FB 78 */	mr r3, r31
/* 80BCC504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCC508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC50C  7C 08 03 A6 */	mtlr r0
/* 80BCC510  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC514  4E 80 00 20 */	blr 
