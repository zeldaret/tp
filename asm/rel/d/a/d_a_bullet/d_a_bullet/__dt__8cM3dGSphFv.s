lbl_80655C90:
/* 80655C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80655C94  7C 08 02 A6 */	mflr r0
/* 80655C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80655C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80655CA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80655CA4  41 82 00 1C */	beq lbl_80655CC0
/* 80655CA8  3C A0 80 65 */	lis r5, __vt__8cM3dGSph@ha
/* 80655CAC  38 05 68 90 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80655CB0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80655CB4  7C 80 07 35 */	extsh. r0, r4
/* 80655CB8  40 81 00 08 */	ble lbl_80655CC0
/* 80655CBC  4B C7 90 80 */	b __dl__FPv
lbl_80655CC0:
/* 80655CC0  7F E3 FB 78 */	mr r3, r31
/* 80655CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80655CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80655CCC  7C 08 03 A6 */	mtlr r0
/* 80655CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80655CD4  4E 80 00 20 */	blr 
