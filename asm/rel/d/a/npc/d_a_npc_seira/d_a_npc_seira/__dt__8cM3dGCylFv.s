lbl_80ACEE6C:
/* 80ACEE6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACEE70  7C 08 02 A6 */	mflr r0
/* 80ACEE74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACEE78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACEE7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACEE80  41 82 00 1C */	beq lbl_80ACEE9C
/* 80ACEE84  3C A0 80 AD */	lis r5, __vt__8cM3dGCyl@ha /* 0x80AD0A08@ha */
/* 80ACEE88  38 05 0A 08 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80AD0A08@l */
/* 80ACEE8C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80ACEE90  7C 80 07 35 */	extsh. r0, r4
/* 80ACEE94  40 81 00 08 */	ble lbl_80ACEE9C
/* 80ACEE98  4B 7F FE A5 */	bl __dl__FPv
lbl_80ACEE9C:
/* 80ACEE9C  7F E3 FB 78 */	mr r3, r31
/* 80ACEEA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACEEA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACEEA8  7C 08 03 A6 */	mtlr r0
/* 80ACEEAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACEEB0  4E 80 00 20 */	blr 
