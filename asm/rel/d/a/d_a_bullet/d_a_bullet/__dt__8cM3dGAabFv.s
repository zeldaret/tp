lbl_80655CD8:
/* 80655CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80655CDC  7C 08 02 A6 */	mflr r0
/* 80655CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80655CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80655CE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80655CEC  41 82 00 1C */	beq lbl_80655D08
/* 80655CF0  3C A0 80 65 */	lis r5, __vt__8cM3dGAab@ha /* 0x80656884@ha */
/* 80655CF4  38 05 68 84 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80656884@l */
/* 80655CF8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80655CFC  7C 80 07 35 */	extsh. r0, r4
/* 80655D00  40 81 00 08 */	ble lbl_80655D08
/* 80655D04  4B C7 90 39 */	bl __dl__FPv
lbl_80655D08:
/* 80655D08  7F E3 FB 78 */	mr r3, r31
/* 80655D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80655D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80655D14  7C 08 03 A6 */	mtlr r0
/* 80655D18  38 21 00 10 */	addi r1, r1, 0x10
/* 80655D1C  4E 80 00 20 */	blr 
