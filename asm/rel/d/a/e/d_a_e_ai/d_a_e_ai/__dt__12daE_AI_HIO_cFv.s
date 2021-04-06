lbl_8067BF40:
/* 8067BF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067BF44  7C 08 02 A6 */	mflr r0
/* 8067BF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067BF4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067BF50  7C 7F 1B 79 */	or. r31, r3, r3
/* 8067BF54  41 82 00 1C */	beq lbl_8067BF70
/* 8067BF58  3C A0 80 68 */	lis r5, __vt__12daE_AI_HIO_c@ha /* 0x8067C684@ha */
/* 8067BF5C  38 05 C6 84 */	addi r0, r5, __vt__12daE_AI_HIO_c@l /* 0x8067C684@l */
/* 8067BF60  90 1F 00 00 */	stw r0, 0(r31)
/* 8067BF64  7C 80 07 35 */	extsh. r0, r4
/* 8067BF68  40 81 00 08 */	ble lbl_8067BF70
/* 8067BF6C  4B C5 2D D1 */	bl __dl__FPv
lbl_8067BF70:
/* 8067BF70  7F E3 FB 78 */	mr r3, r31
/* 8067BF74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067BF78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067BF7C  7C 08 03 A6 */	mtlr r0
/* 8067BF80  38 21 00 10 */	addi r1, r1, 0x10
/* 8067BF84  4E 80 00 20 */	blr 
