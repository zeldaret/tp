lbl_800AD6F0:
/* 800AD6F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AD6F4  7C 08 02 A6 */	mflr r0
/* 800AD6F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AD6FC  7C C7 33 78 */	mr r7, r6
/* 800AD700  C0 26 00 04 */	lfs f1, 4(r6)
/* 800AD704  C0 46 00 08 */	lfs f2, 8(r6)
/* 800AD708  A8 C6 00 00 */	lha r6, 0(r6)
/* 800AD70C  C0 67 00 0C */	lfs f3, 0xc(r7)
/* 800AD710  4B FF FC C9 */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 800AD714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AD718  7C 08 03 A6 */	mtlr r0
/* 800AD71C  38 21 00 10 */	addi r1, r1, 0x10
/* 800AD720  4E 80 00 20 */	blr 
