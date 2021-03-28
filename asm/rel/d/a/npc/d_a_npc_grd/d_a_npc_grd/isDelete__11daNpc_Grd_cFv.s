lbl_809D19B0:
/* 809D19B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D19B4  7C 08 02 A6 */	mflr r0
/* 809D19B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D19BC  88 03 0E 18 */	lbz r0, 0xe18(r3)
/* 809D19C0  28 00 00 02 */	cmplwi r0, 2
/* 809D19C4  41 82 00 0C */	beq lbl_809D19D0
/* 809D19C8  28 00 00 01 */	cmplwi r0, 1
/* 809D19CC  40 82 00 0C */	bne lbl_809D19D8
lbl_809D19D0:
/* 809D19D0  38 60 00 00 */	li r3, 0
/* 809D19D4  48 00 00 38 */	b lbl_809D1A0C
lbl_809D19D8:
/* 809D19D8  28 00 00 00 */	cmplwi r0, 0
/* 809D19DC  40 82 00 2C */	bne lbl_809D1A08
/* 809D19E0  38 60 01 0B */	li r3, 0x10b
/* 809D19E4  4B 78 3C 50 */	b daNpcF_chkEvtBit__FUl
/* 809D19E8  2C 03 00 00 */	cmpwi r3, 0
/* 809D19EC  41 82 00 1C */	beq lbl_809D1A08
/* 809D19F0  38 60 01 20 */	li r3, 0x120
/* 809D19F4  4B 78 3C 40 */	b daNpcF_chkEvtBit__FUl
/* 809D19F8  2C 03 00 00 */	cmpwi r3, 0
/* 809D19FC  40 82 00 0C */	bne lbl_809D1A08
/* 809D1A00  38 60 00 00 */	li r3, 0
/* 809D1A04  48 00 00 08 */	b lbl_809D1A0C
lbl_809D1A08:
/* 809D1A08  38 60 00 01 */	li r3, 1
lbl_809D1A0C:
/* 809D1A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D1A10  7C 08 03 A6 */	mtlr r0
/* 809D1A14  38 21 00 10 */	addi r1, r1, 0x10
/* 809D1A18  4E 80 00 20 */	blr 
