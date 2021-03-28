lbl_8054E460:
/* 8054E460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E464  7C 08 02 A6 */	mflr r0
/* 8054E468  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E46C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054E470  7C 7F 1B 79 */	or. r31, r3, r3
/* 8054E474  41 82 00 1C */	beq lbl_8054E490
/* 8054E478  3C A0 80 55 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8054E47C  38 05 F0 8C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8054E480  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8054E484  7C 80 07 35 */	extsh. r0, r4
/* 8054E488  40 81 00 08 */	ble lbl_8054E490
/* 8054E48C  4B D8 08 B0 */	b __dl__FPv
lbl_8054E490:
/* 8054E490  7F E3 FB 78 */	mr r3, r31
/* 8054E494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054E498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E49C  7C 08 03 A6 */	mtlr r0
/* 8054E4A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E4A4  4E 80 00 20 */	blr 
