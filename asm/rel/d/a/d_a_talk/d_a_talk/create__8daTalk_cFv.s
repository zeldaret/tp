lbl_80D663E4:
/* 80D663E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D663E8  7C 08 02 A6 */	mflr r0
/* 80D663EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D663F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D663F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D663F8  7C 7E 1B 78 */	mr r30, r3
/* 80D663FC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D66400  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D66404  40 82 00 28 */	bne lbl_80D6642C
/* 80D66408  7F C0 F3 79 */	or. r0, r30, r30
/* 80D6640C  41 82 00 14 */	beq lbl_80D66420
/* 80D66410  7C 1F 03 78 */	mr r31, r0
/* 80D66414  4B 2B 27 50 */	b __ct__10fopAc_ac_cFv
/* 80D66418  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D6641C  4B 4E 3A E4 */	b __ct__10dMsgFlow_cFv
lbl_80D66420:
/* 80D66420  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D66424  60 00 00 08 */	ori r0, r0, 8
/* 80D66428  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D6642C:
/* 80D6642C  7F C3 F3 78 */	mr r3, r30
/* 80D66430  48 00 02 59 */	bl getStatus__8daTalk_cFv
/* 80D66434  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80D66438  28 00 00 01 */	cmplwi r0, 1
/* 80D6643C  41 82 00 0C */	beq lbl_80D66448
/* 80D66440  38 60 00 05 */	li r3, 5
/* 80D66444  48 00 00 50 */	b lbl_80D66494
lbl_80D66448:
/* 80D66448  4B 4D 1D 78 */	b getpTalkActor__12dMsgObject_cFv
/* 80D6644C  3B E3 05 44 */	addi r31, r3, 0x544
/* 80D66450  38 7E 05 44 */	addi r3, r30, 0x544
/* 80D66454  7F E4 FB 78 */	mr r4, r31
/* 80D66458  38 A0 00 09 */	li r5, 9
/* 80D6645C  4B 5F B7 E0 */	b __copy
/* 80D66460  A8 1F 00 0A */	lha r0, 0xa(r31)
/* 80D66464  B0 1E 05 4E */	sth r0, 0x54e(r30)
/* 80D66468  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80D6646C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80D66470  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80D66474  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80D66478  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80D6647C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80D66480  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80D66484  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80D66488  38 00 FF FF */	li r0, -1
/* 80D6648C  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80D66490  38 60 00 04 */	li r3, 4
lbl_80D66494:
/* 80D66494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D66498  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D6649C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D664A0  7C 08 03 A6 */	mtlr r0
/* 80D664A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D664A8  4E 80 00 20 */	blr 
