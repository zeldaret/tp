lbl_80C30D60:
/* 80C30D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C30D64  7C 08 02 A6 */	mflr r0
/* 80C30D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C30D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C30D70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C30D74  41 82 00 1C */	beq lbl_80C30D90
/* 80C30D78  3C A0 80 C3 */	lis r5, __vt__8cM3dGSph@ha
/* 80C30D7C  38 05 13 E0 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80C30D80  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C30D84  7C 80 07 35 */	extsh. r0, r4
/* 80C30D88  40 81 00 08 */	ble lbl_80C30D90
/* 80C30D8C  4B 69 DF B0 */	b __dl__FPv
lbl_80C30D90:
/* 80C30D90  7F E3 FB 78 */	mr r3, r31
/* 80C30D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C30D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C30D9C  7C 08 03 A6 */	mtlr r0
/* 80C30DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C30DA4  4E 80 00 20 */	blr 
