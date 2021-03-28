lbl_80D5B740:
/* 80D5B740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B744  7C 08 02 A6 */	mflr r0
/* 80D5B748  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B74C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5B750  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5B754  41 82 00 30 */	beq lbl_80D5B784
/* 80D5B758  3C 60 80 D6 */	lis r3, __vt__17daLv6CstaSw_HIO_c@ha
/* 80D5B75C  38 03 B8 60 */	addi r0, r3, __vt__17daLv6CstaSw_HIO_c@l
/* 80D5B760  90 1F 00 00 */	stw r0, 0(r31)
/* 80D5B764  41 82 00 10 */	beq lbl_80D5B774
/* 80D5B768  3C 60 80 D6 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80D5B76C  38 03 B8 6C */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80D5B770  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D5B774:
/* 80D5B774  7C 80 07 35 */	extsh. r0, r4
/* 80D5B778  40 81 00 0C */	ble lbl_80D5B784
/* 80D5B77C  7F E3 FB 78 */	mr r3, r31
/* 80D5B780  4B 57 35 BC */	b __dl__FPv
lbl_80D5B784:
/* 80D5B784  7F E3 FB 78 */	mr r3, r31
/* 80D5B788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5B78C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B790  7C 08 03 A6 */	mtlr r0
/* 80D5B794  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B798  4E 80 00 20 */	blr 
