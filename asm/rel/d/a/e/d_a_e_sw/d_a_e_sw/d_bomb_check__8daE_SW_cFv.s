lbl_807AD10C:
/* 807AD10C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AD110  7C 08 02 A6 */	mflr r0
/* 807AD114  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AD118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AD11C  7C 7F 1B 78 */	mr r31, r3
/* 807AD120  88 03 06 8C */	lbz r0, 0x68c(r3)
/* 807AD124  28 00 00 00 */	cmplwi r0, 0
/* 807AD128  41 82 00 0C */	beq lbl_807AD134
/* 807AD12C  38 60 00 00 */	li r3, 0
/* 807AD130  48 00 00 38 */	b lbl_807AD168
lbl_807AD134:
/* 807AD134  4B FF AB 1D */	bl search_bomb__8daE_SW_cFv
/* 807AD138  7C 64 1B 79 */	or. r4, r3, r3
/* 807AD13C  41 82 00 28 */	beq lbl_807AD164
/* 807AD140  7F E3 FB 78 */	mr r3, r31
/* 807AD144  4B 86 D6 9D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807AD148  3C 60 80 7B */	lis r3, l_HIO@ha /* 0x807B0210@ha */
/* 807AD14C  38 63 02 10 */	addi r3, r3, l_HIO@l /* 0x807B0210@l */
/* 807AD150  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807AD154  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AD158  40 80 00 0C */	bge lbl_807AD164
/* 807AD15C  38 60 00 01 */	li r3, 1
/* 807AD160  48 00 00 08 */	b lbl_807AD168
lbl_807AD164:
/* 807AD164  38 60 00 00 */	li r3, 0
lbl_807AD168:
/* 807AD168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AD16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AD170  7C 08 03 A6 */	mtlr r0
/* 807AD174  38 21 00 10 */	addi r1, r1, 0x10
/* 807AD178  4E 80 00 20 */	blr 
