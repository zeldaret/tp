lbl_80846498:
/* 80846498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084649C  7C 08 02 A6 */	mflr r0
/* 808464A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808464A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808464A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 808464AC  41 82 00 30 */	beq lbl_808464DC
/* 808464B0  3C 60 80 85 */	lis r3, __vt__19J3DMtxCalcNoAnmBase@ha
/* 808464B4  38 03 8F A4 */	addi r0, r3, __vt__19J3DMtxCalcNoAnmBase@l
/* 808464B8  90 1F 00 00 */	stw r0, 0(r31)
/* 808464BC  41 82 00 10 */	beq lbl_808464CC
/* 808464C0  3C 60 80 85 */	lis r3, __vt__10J3DMtxCalc@ha
/* 808464C4  38 03 8F D0 */	addi r0, r3, __vt__10J3DMtxCalc@l
/* 808464C8  90 1F 00 00 */	stw r0, 0(r31)
lbl_808464CC:
/* 808464CC  7C 80 07 35 */	extsh. r0, r4
/* 808464D0  40 81 00 0C */	ble lbl_808464DC
/* 808464D4  7F E3 FB 78 */	mr r3, r31
/* 808464D8  4B A8 88 64 */	b __dl__FPv
lbl_808464DC:
/* 808464DC  7F E3 FB 78 */	mr r3, r31
/* 808464E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808464E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808464E8  7C 08 03 A6 */	mtlr r0
/* 808464EC  38 21 00 10 */	addi r1, r1, 0x10
/* 808464F0  4E 80 00 20 */	blr 
