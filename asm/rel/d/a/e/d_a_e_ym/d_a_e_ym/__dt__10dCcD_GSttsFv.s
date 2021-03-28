lbl_808152B4:
/* 808152B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808152B8  7C 08 02 A6 */	mflr r0
/* 808152BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 808152C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808152C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 808152C8  41 82 00 30 */	beq lbl_808152F8
/* 808152CC  3C 60 80 81 */	lis r3, __vt__10dCcD_GStts@ha
/* 808152D0  38 03 5C B0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 808152D4  90 1F 00 00 */	stw r0, 0(r31)
/* 808152D8  41 82 00 10 */	beq lbl_808152E8
/* 808152DC  3C 60 80 81 */	lis r3, __vt__10cCcD_GStts@ha
/* 808152E0  38 03 5C A4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 808152E4  90 1F 00 00 */	stw r0, 0(r31)
lbl_808152E8:
/* 808152E8  7C 80 07 35 */	extsh. r0, r4
/* 808152EC  40 81 00 0C */	ble lbl_808152F8
/* 808152F0  7F E3 FB 78 */	mr r3, r31
/* 808152F4  4B AB 9A 48 */	b __dl__FPv
lbl_808152F8:
/* 808152F8  7F E3 FB 78 */	mr r3, r31
/* 808152FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80815300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80815304  7C 08 03 A6 */	mtlr r0
/* 80815308  38 21 00 10 */	addi r1, r1, 0x10
/* 8081530C  4E 80 00 20 */	blr 
