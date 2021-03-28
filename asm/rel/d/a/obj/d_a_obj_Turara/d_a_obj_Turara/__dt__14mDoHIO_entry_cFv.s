lbl_80B9CC54:
/* 80B9CC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9CC58  7C 08 02 A6 */	mflr r0
/* 80B9CC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9CC60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9CC64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9CC68  41 82 00 1C */	beq lbl_80B9CC84
/* 80B9CC6C  3C A0 80 BA */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80B9CC70  38 05 EB 80 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80B9CC74  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9CC78  7C 80 07 35 */	extsh. r0, r4
/* 80B9CC7C  40 81 00 08 */	ble lbl_80B9CC84
/* 80B9CC80  4B 73 20 BC */	b __dl__FPv
lbl_80B9CC84:
/* 80B9CC84  7F E3 FB 78 */	mr r3, r31
/* 80B9CC88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9CC8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9CC90  7C 08 03 A6 */	mtlr r0
/* 80B9CC94  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9CC98  4E 80 00 20 */	blr 
