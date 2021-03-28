lbl_80CD6D54:
/* 80CD6D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD6D58  7C 08 02 A6 */	mflr r0
/* 80CD6D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD6D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD6D64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD6D68  41 82 00 1C */	beq lbl_80CD6D84
/* 80CD6D6C  3C A0 80 CE */	lis r5, __vt__8cM3dGPla@ha
/* 80CD6D70  38 05 85 10 */	addi r0, r5, __vt__8cM3dGPla@l
/* 80CD6D74  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CD6D78  7C 80 07 35 */	extsh. r0, r4
/* 80CD6D7C  40 81 00 08 */	ble lbl_80CD6D84
/* 80CD6D80  4B 5F 7F BC */	b __dl__FPv
lbl_80CD6D84:
/* 80CD6D84  7F E3 FB 78 */	mr r3, r31
/* 80CD6D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD6D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD6D90  7C 08 03 A6 */	mtlr r0
/* 80CD6D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD6D98  4E 80 00 20 */	blr 
