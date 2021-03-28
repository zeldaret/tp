lbl_80CD4D5C:
/* 80CD4D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD4D60  7C 08 02 A6 */	mflr r0
/* 80CD4D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD4D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD4D6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD4D70  41 82 00 1C */	beq lbl_80CD4D8C
/* 80CD4D74  3C A0 80 CD */	lis r5, __vt__8cM3dGAab@ha
/* 80CD4D78  38 05 67 E4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CD4D7C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CD4D80  7C 80 07 35 */	extsh. r0, r4
/* 80CD4D84  40 81 00 08 */	ble lbl_80CD4D8C
/* 80CD4D88  4B 5F 9F B4 */	b __dl__FPv
lbl_80CD4D8C:
/* 80CD4D8C  7F E3 FB 78 */	mr r3, r31
/* 80CD4D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD4D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD4D98  7C 08 03 A6 */	mtlr r0
/* 80CD4D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD4DA0  4E 80 00 20 */	blr 
