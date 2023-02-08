lbl_8067E76C:
/* 8067E76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067E770  7C 08 02 A6 */	mflr r0
/* 8067E774  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067E778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067E77C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8067E780  41 82 00 1C */	beq lbl_8067E79C
/* 8067E784  3C A0 80 68 */	lis r5, __vt__8cM3dGAab@ha /* 0x8067EAD4@ha */
/* 8067E788  38 05 EA D4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8067EAD4@l */
/* 8067E78C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8067E790  7C 80 07 35 */	extsh. r0, r4
/* 8067E794  40 81 00 08 */	ble lbl_8067E79C
/* 8067E798  4B C5 05 A5 */	bl __dl__FPv
lbl_8067E79C:
/* 8067E79C  7F E3 FB 78 */	mr r3, r31
/* 8067E7A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067E7A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067E7A8  7C 08 03 A6 */	mtlr r0
/* 8067E7AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8067E7B0  4E 80 00 20 */	blr 
