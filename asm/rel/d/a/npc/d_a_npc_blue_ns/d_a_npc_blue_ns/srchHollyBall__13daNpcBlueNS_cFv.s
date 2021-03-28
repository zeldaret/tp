lbl_80969C90:
/* 80969C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80969C94  7C 08 02 A6 */	mflr r0
/* 80969C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80969C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80969CA0  7C 7F 1B 78 */	mr r31, r3
/* 80969CA4  80 03 0D F0 */	lwz r0, 0xdf0(r3)
/* 80969CA8  28 00 00 00 */	cmplwi r0, 0
/* 80969CAC  40 82 00 18 */	bne lbl_80969CC4
/* 80969CB0  3C 60 80 97 */	lis r3, _search_HollyBall_Y__13daNpcBlueNS_cFPvPv@ha
/* 80969CB4  38 63 9D E4 */	addi r3, r3, _search_HollyBall_Y__13daNpcBlueNS_cFPvPv@l
/* 80969CB8  7F E4 FB 78 */	mr r4, r31
/* 80969CBC  4B 6B 76 7C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80969CC0  90 7F 0D F0 */	stw r3, 0xdf0(r31)
lbl_80969CC4:
/* 80969CC4  80 1F 0D F4 */	lwz r0, 0xdf4(r31)
/* 80969CC8  28 00 00 00 */	cmplwi r0, 0
/* 80969CCC  40 82 00 18 */	bne lbl_80969CE4
/* 80969CD0  3C 60 80 97 */	lis r3, _search_HollyBall_G__13daNpcBlueNS_cFPvPv@ha
/* 80969CD4  38 63 9E 9C */	addi r3, r3, _search_HollyBall_G__13daNpcBlueNS_cFPvPv@l
/* 80969CD8  7F E4 FB 78 */	mr r4, r31
/* 80969CDC  4B 6B 76 5C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80969CE0  90 7F 0D F4 */	stw r3, 0xdf4(r31)
lbl_80969CE4:
/* 80969CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80969CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80969CEC  7C 08 03 A6 */	mtlr r0
/* 80969CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80969CF4  4E 80 00 20 */	blr 
