lbl_80CCE118:
/* 80CCE118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCE11C  7C 08 02 A6 */	mflr r0
/* 80CCE120  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCE124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCE128  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CCE12C  41 82 00 1C */	beq lbl_80CCE148
/* 80CCE130  3C A0 80 CD */	lis r5, __vt__20daObj_Sekizo_Param_c@ha /* 0x80CCE22C@ha */
/* 80CCE134  38 05 E2 2C */	addi r0, r5, __vt__20daObj_Sekizo_Param_c@l /* 0x80CCE22C@l */
/* 80CCE138  90 1F 00 00 */	stw r0, 0(r31)
/* 80CCE13C  7C 80 07 35 */	extsh. r0, r4
/* 80CCE140  40 81 00 08 */	ble lbl_80CCE148
/* 80CCE144  4B 60 0B F9 */	bl __dl__FPv
lbl_80CCE148:
/* 80CCE148  7F E3 FB 78 */	mr r3, r31
/* 80CCE14C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCE150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCE154  7C 08 03 A6 */	mtlr r0
/* 80CCE158  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCE15C  4E 80 00 20 */	blr 
