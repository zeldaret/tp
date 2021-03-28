lbl_800D008C:
/* 800D008C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D0090  7C 08 02 A6 */	mflr r0
/* 800D0094  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D0098  7C 64 1B 78 */	mr r4, r3
/* 800D009C  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 800D00A0  28 03 00 00 */	cmplwi r3, 0
/* 800D00A4  41 82 00 08 */	beq lbl_800D00AC
/* 800D00A8  48 1F 31 75 */	bl setLinkGroupInfo__14Z2CreatureLinkFUc
lbl_800D00AC:
/* 800D00AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D00B0  7C 08 03 A6 */	mtlr r0
/* 800D00B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800D00B8  4E 80 00 20 */	blr 
