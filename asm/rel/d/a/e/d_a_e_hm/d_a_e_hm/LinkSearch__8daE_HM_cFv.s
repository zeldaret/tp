lbl_806E3690:
/* 806E3690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E3694  7C 08 02 A6 */	mflr r0
/* 806E3698  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E369C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E36A0  7C 7F 1B 78 */	mr r31, r3
/* 806E36A4  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 806E36A8  38 03 FF FF */	addi r0, r3, -1
/* 806E36AC  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 806E36B0  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 806E36B4  2C 00 00 00 */	cmpwi r0, 0
/* 806E36B8  40 80 00 0C */	bge lbl_806E36C4
/* 806E36BC  38 00 00 00 */	li r0, 0
/* 806E36C0  90 1F 05 BC */	stw r0, 0x5bc(r31)
lbl_806E36C4:
/* 806E36C4  3C 60 80 6E */	lis r3, data_806E5C44@ha /* 0x806E5C44@ha */
/* 806E36C8  C0 23 5C 44 */	lfs f1, data_806E5C44@l(r3)  /* 0x806E5C44@l */
/* 806E36CC  3C 60 80 6E */	lis r3, lit_5266@ha /* 0x806E5A5C@ha */
/* 806E36D0  C0 03 5A 5C */	lfs f0, lit_5266@l(r3)  /* 0x806E5A5C@l */
/* 806E36D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E36D8  40 80 00 30 */	bge lbl_806E3708
/* 806E36DC  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 806E36E0  2C 00 00 00 */	cmpwi r0, 0
/* 806E36E4  40 82 00 18 */	bne lbl_806E36FC
/* 806E36E8  7F E3 FB 78 */	mr r3, r31
/* 806E36EC  48 00 01 09 */	bl MemberClear__8daE_HM_cFv
/* 806E36F0  38 00 00 02 */	li r0, 2
/* 806E36F4  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 806E36F8  48 00 00 18 */	b lbl_806E3710
lbl_806E36FC:
/* 806E36FC  7F E3 FB 78 */	mr r3, r31
/* 806E3700  4B FF FD C9 */	bl FreeMove__8daE_HM_cFv
/* 806E3704  48 00 00 0C */	b lbl_806E3710
lbl_806E3708:
/* 806E3708  7F E3 FB 78 */	mr r3, r31
/* 806E370C  4B FF FD BD */	bl FreeMove__8daE_HM_cFv
lbl_806E3710:
/* 806E3710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E3714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E3718  7C 08 03 A6 */	mtlr r0
/* 806E371C  38 21 00 10 */	addi r1, r1, 0x10
/* 806E3720  4E 80 00 20 */	blr 
