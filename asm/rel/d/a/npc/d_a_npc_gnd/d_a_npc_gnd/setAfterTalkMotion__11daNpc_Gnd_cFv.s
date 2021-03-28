lbl_809BC448:
/* 809BC448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BC44C  7C 08 02 A6 */	mflr r0
/* 809BC450  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BC454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BC458  93 C1 00 08 */	stw r30, 8(r1)
/* 809BC45C  7C 7E 1B 78 */	mr r30, r3
/* 809BC460  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 809BC464  2C 00 00 00 */	cmpwi r0, 0
/* 809BC468  41 82 00 28 */	beq lbl_809BC490
/* 809BC46C  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 809BC470  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809BC474  4B 78 94 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809BC478  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 809BC47C  38 00 00 00 */	li r0, 0
/* 809BC480  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809BC484  3C 60 80 9C */	lis r3, lit_4552@ha
/* 809BC488  C0 03 E5 54 */	lfs f0, lit_4552@l(r3)
/* 809BC48C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809BC490:
/* 809BC490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BC494  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BC498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BC49C  7C 08 03 A6 */	mtlr r0
/* 809BC4A0  38 21 00 10 */	addi r1, r1, 0x10
/* 809BC4A4  4E 80 00 20 */	blr 
