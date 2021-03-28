lbl_80AC3750:
/* 80AC3750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3754  7C 08 02 A6 */	mflr r0
/* 80AC3758  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC375C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC3760  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC3764  41 82 00 1C */	beq lbl_80AC3780
/* 80AC3768  3C A0 80 AC */	lis r5, __vt__8cM3dGCyl@ha
/* 80AC376C  38 05 4E F8 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80AC3770  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AC3774  7C 80 07 35 */	extsh. r0, r4
/* 80AC3778  40 81 00 08 */	ble lbl_80AC3780
/* 80AC377C  4B 80 B5 C0 */	b __dl__FPv
lbl_80AC3780:
/* 80AC3780  7F E3 FB 78 */	mr r3, r31
/* 80AC3784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC378C  7C 08 03 A6 */	mtlr r0
/* 80AC3790  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3794  4E 80 00 20 */	blr 
