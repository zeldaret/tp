lbl_807AC8E4:
/* 807AC8E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AC8E8  7C 08 02 A6 */	mflr r0
/* 807AC8EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AC8F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AC8F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807AC8F8  41 82 00 30 */	beq lbl_807AC928
/* 807AC8FC  3C 60 80 7B */	lis r3, __vt__10dCcD_GStts@ha
/* 807AC900  38 03 01 5C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 807AC904  90 1F 00 00 */	stw r0, 0(r31)
/* 807AC908  41 82 00 10 */	beq lbl_807AC918
/* 807AC90C  3C 60 80 7B */	lis r3, __vt__10cCcD_GStts@ha
/* 807AC910  38 03 01 50 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 807AC914  90 1F 00 00 */	stw r0, 0(r31)
lbl_807AC918:
/* 807AC918  7C 80 07 35 */	extsh. r0, r4
/* 807AC91C  40 81 00 0C */	ble lbl_807AC928
/* 807AC920  7F E3 FB 78 */	mr r3, r31
/* 807AC924  4B B2 24 18 */	b __dl__FPv
lbl_807AC928:
/* 807AC928  7F E3 FB 78 */	mr r3, r31
/* 807AC92C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AC930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AC934  7C 08 03 A6 */	mtlr r0
/* 807AC938  38 21 00 10 */	addi r1, r1, 0x10
/* 807AC93C  4E 80 00 20 */	blr 
