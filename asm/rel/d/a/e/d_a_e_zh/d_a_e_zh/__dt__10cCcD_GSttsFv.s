lbl_8082F118:
/* 8082F118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082F11C  7C 08 02 A6 */	mflr r0
/* 8082F120  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082F124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082F128  7C 7F 1B 79 */	or. r31, r3, r3
/* 8082F12C  41 82 00 1C */	beq lbl_8082F148
/* 8082F130  3C A0 80 83 */	lis r5, __vt__10cCcD_GStts@ha
/* 8082F134  38 05 F6 68 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 8082F138  90 1F 00 00 */	stw r0, 0(r31)
/* 8082F13C  7C 80 07 35 */	extsh. r0, r4
/* 8082F140  40 81 00 08 */	ble lbl_8082F148
/* 8082F144  4B A9 FB F8 */	b __dl__FPv
lbl_8082F148:
/* 8082F148  7F E3 FB 78 */	mr r3, r31
/* 8082F14C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082F150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082F154  7C 08 03 A6 */	mtlr r0
/* 8082F158  38 21 00 10 */	addi r1, r1, 0x10
/* 8082F15C  4E 80 00 20 */	blr 
