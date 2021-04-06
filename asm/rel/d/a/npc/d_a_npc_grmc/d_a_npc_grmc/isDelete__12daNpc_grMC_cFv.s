lbl_809D7BC0:
/* 809D7BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D7BC4  7C 08 02 A6 */	mflr r0
/* 809D7BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D7BCC  88 03 10 BC */	lbz r0, 0x10bc(r3)
/* 809D7BD0  28 00 00 00 */	cmplwi r0, 0
/* 809D7BD4  40 82 00 4C */	bne lbl_809D7C20
/* 809D7BD8  38 60 00 40 */	li r3, 0x40
/* 809D7BDC  4B 77 DA 59 */	bl daNpcF_chkEvtBit__FUl
/* 809D7BE0  2C 03 00 00 */	cmpwi r3, 0
/* 809D7BE4  41 82 00 3C */	beq lbl_809D7C20
/* 809D7BE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D7BEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D7BF0  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 809D7BF4  3C 60 80 9E */	lis r3, lit_4481@ha /* 0x809D9E34@ha */
/* 809D7BF8  C0 03 9E 34 */	lfs f0, lit_4481@l(r3)  /* 0x809D9E34@l */
/* 809D7BFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809D7C00  4C 41 13 82 */	cror 2, 1, 2
/* 809D7C04  40 82 00 14 */	bne lbl_809D7C18
/* 809D7C08  3C 60 80 9E */	lis r3, lit_4482@ha /* 0x809D9E38@ha */
/* 809D7C0C  C0 03 9E 38 */	lfs f0, lit_4482@l(r3)  /* 0x809D9E38@l */
/* 809D7C10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809D7C14  41 80 00 0C */	blt lbl_809D7C20
lbl_809D7C18:
/* 809D7C18  38 60 00 00 */	li r3, 0
/* 809D7C1C  48 00 00 08 */	b lbl_809D7C24
lbl_809D7C20:
/* 809D7C20  38 60 00 01 */	li r3, 1
lbl_809D7C24:
/* 809D7C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D7C28  7C 08 03 A6 */	mtlr r0
/* 809D7C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 809D7C30  4E 80 00 20 */	blr 
