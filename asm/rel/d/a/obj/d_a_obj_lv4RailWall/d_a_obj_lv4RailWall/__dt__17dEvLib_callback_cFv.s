lbl_80C618E0:
/* 80C618E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C618E4  7C 08 02 A6 */	mflr r0
/* 80C618E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C618EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C618F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C618F4  41 82 00 1C */	beq lbl_80C61910
/* 80C618F8  3C A0 80 C6 */	lis r5, __vt__17dEvLib_callback_c@ha /* 0x80C61CD8@ha */
/* 80C618FC  38 05 1C D8 */	addi r0, r5, __vt__17dEvLib_callback_c@l /* 0x80C61CD8@l */
/* 80C61900  90 1F 00 00 */	stw r0, 0(r31)
/* 80C61904  7C 80 07 35 */	extsh. r0, r4
/* 80C61908  40 81 00 08 */	ble lbl_80C61910
/* 80C6190C  4B 66 D4 31 */	bl __dl__FPv
lbl_80C61910:
/* 80C61910  7F E3 FB 78 */	mr r3, r31
/* 80C61914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C61918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6191C  7C 08 03 A6 */	mtlr r0
/* 80C61920  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61924  4E 80 00 20 */	blr 
