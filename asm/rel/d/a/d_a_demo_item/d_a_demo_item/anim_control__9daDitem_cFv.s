lbl_804E105C:
/* 804E105C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1060  7C 08 02 A6 */	mflr r0
/* 804E1064  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1068  3C 80 80 4E */	lis r4, lit_3812@ha
/* 804E106C  C0 24 19 D8 */	lfs f1, lit_3812@l(r4)
/* 804E1070  FC 40 08 90 */	fmr f2, f1
/* 804E1074  FC 60 08 90 */	fmr f3, f1
/* 804E1078  FC 80 08 90 */	fmr f4, f1
/* 804E107C  FC A0 08 90 */	fmr f5, f1
/* 804E1080  FC C0 08 90 */	fmr f6, f1
/* 804E1084  4B C6 3F B8 */	b animPlay__12daItemBase_cFffffff
/* 804E1088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E108C  7C 08 03 A6 */	mtlr r0
/* 804E1090  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1094  4E 80 00 20 */	blr 
