lbl_80BEA1E0:
/* 80BEA1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEA1E4  7C 08 02 A6 */	mflr r0
/* 80BEA1E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEA1EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEA1F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEA1F4  41 82 00 1C */	beq lbl_80BEA210
/* 80BEA1F8  3C A0 80 BF */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80BEA1FC  38 05 B6 D0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80BEA200  90 1F 00 00 */	stw r0, 0(r31)
/* 80BEA204  7C 80 07 35 */	extsh. r0, r4
/* 80BEA208  40 81 00 08 */	ble lbl_80BEA210
/* 80BEA20C  4B 6E 4B 30 */	b __dl__FPv
lbl_80BEA210:
/* 80BEA210  7F E3 FB 78 */	mr r3, r31
/* 80BEA214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEA218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEA21C  7C 08 03 A6 */	mtlr r0
/* 80BEA220  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEA224  4E 80 00 20 */	blr 
