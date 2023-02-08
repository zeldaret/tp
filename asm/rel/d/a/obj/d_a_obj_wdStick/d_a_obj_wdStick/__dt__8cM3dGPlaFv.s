lbl_80D32D6C:
/* 80D32D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D32D70  7C 08 02 A6 */	mflr r0
/* 80D32D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D32D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D32D7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D32D80  41 82 00 1C */	beq lbl_80D32D9C
/* 80D32D84  3C A0 80 D3 */	lis r5, __vt__8cM3dGPla@ha /* 0x80D34374@ha */
/* 80D32D88  38 05 43 74 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80D34374@l */
/* 80D32D8C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D32D90  7C 80 07 35 */	extsh. r0, r4
/* 80D32D94  40 81 00 08 */	ble lbl_80D32D9C
/* 80D32D98  4B 59 BF A5 */	bl __dl__FPv
lbl_80D32D9C:
/* 80D32D9C  7F E3 FB 78 */	mr r3, r31
/* 80D32DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D32DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D32DA8  7C 08 03 A6 */	mtlr r0
/* 80D32DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D32DB0  4E 80 00 20 */	blr 
