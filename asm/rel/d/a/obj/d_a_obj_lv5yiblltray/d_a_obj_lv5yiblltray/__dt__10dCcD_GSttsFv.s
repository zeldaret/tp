lbl_80C7059C:
/* 80C7059C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C705A0  7C 08 02 A6 */	mflr r0
/* 80C705A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C705A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C705AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C705B0  41 82 00 30 */	beq lbl_80C705E0
/* 80C705B4  3C 60 80 C7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C705B8  38 03 0B 18 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C705BC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C705C0  41 82 00 10 */	beq lbl_80C705D0
/* 80C705C4  3C 60 80 C7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C705C8  38 03 0B 0C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C705CC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C705D0:
/* 80C705D0  7C 80 07 35 */	extsh. r0, r4
/* 80C705D4  40 81 00 0C */	ble lbl_80C705E0
/* 80C705D8  7F E3 FB 78 */	mr r3, r31
/* 80C705DC  4B 65 E7 60 */	b __dl__FPv
lbl_80C705E0:
/* 80C705E0  7F E3 FB 78 */	mr r3, r31
/* 80C705E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C705E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C705EC  7C 08 03 A6 */	mtlr r0
/* 80C705F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C705F4  4E 80 00 20 */	blr 
