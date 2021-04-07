lbl_80B76014:
/* 80B76014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B76018  7C 08 02 A6 */	mflr r0
/* 80B7601C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B76020  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B76024  93 C1 00 08 */	stw r30, 8(r1)
/* 80B76028  7C 7E 1B 78 */	mr r30, r3
/* 80B7602C  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80B76030  2C 00 00 02 */	cmpwi r0, 2
/* 80B76034  41 82 00 28 */	beq lbl_80B7605C
/* 80B76038  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80B7603C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B76040  4B 5C F8 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B76044  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80B76048  38 00 00 02 */	li r0, 2
/* 80B7604C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B76050  3C 60 80 B8 */	lis r3, lit_4551@ha /* 0x80B78084@ha */
/* 80B76054  C0 03 80 84 */	lfs f0, lit_4551@l(r3)  /* 0x80B78084@l */
/* 80B76058  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B7605C:
/* 80B7605C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B76060  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B76064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B76068  7C 08 03 A6 */	mtlr r0
/* 80B7606C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B76070  4E 80 00 20 */	blr 
