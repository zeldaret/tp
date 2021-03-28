lbl_80B28794:
/* 80B28794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B28798  7C 08 02 A6 */	mflr r0
/* 80B2879C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B287A0  38 63 0F CC */	addi r3, r3, 0xfcc
/* 80B287A4  4B 83 98 A4 */	b __ptmf_cmpr
/* 80B287A8  7C 60 00 34 */	cntlzw r0, r3
/* 80B287AC  54 03 D9 7E */	srwi r3, r0, 5
/* 80B287B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B287B4  7C 08 03 A6 */	mtlr r0
/* 80B287B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B287BC  4E 80 00 20 */	blr 
