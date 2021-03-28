lbl_80564B38:
/* 80564B38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80564B3C  7C 08 02 A6 */	mflr r0
/* 80564B40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80564B44  3C A0 80 56 */	lis r5, lit_4318@ha
/* 80564B48  C0 25 4C A0 */	lfs f1, lit_4318@l(r5)
/* 80564B4C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80564B50  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80564B54  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80564B58  C0 04 00 00 */	lfs f0, 0(r4)
/* 80564B5C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80564B60  C0 04 00 04 */	lfs f0, 4(r4)
/* 80564B64  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80564B68  C0 04 00 08 */	lfs f0, 8(r4)
/* 80564B6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80564B70  D0 21 00 08 */	stfs f1, 8(r1)
/* 80564B74  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80564B78  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80564B7C  38 81 00 14 */	addi r4, r1, 0x14
/* 80564B80  38 A1 00 08 */	addi r5, r1, 8
/* 80564B84  4B F2 7D C8 */	b chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 80564B88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80564B8C  7C 08 03 A6 */	mtlr r0
/* 80564B90  38 21 00 30 */	addi r1, r1, 0x30
/* 80564B94  4E 80 00 20 */	blr 
