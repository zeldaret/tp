lbl_80297FAC:
/* 80297FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80297FB0  7C 08 02 A6 */	mflr r0
/* 80297FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80297FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80297FBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80297FC0  41 82 00 30 */	beq lbl_80297FF0
/* 80297FC4  3C 60 80 3C */	lis r3, __vt__12JASVoiceBank@ha
/* 80297FC8  38 03 76 D0 */	addi r0, r3, __vt__12JASVoiceBank@l
/* 80297FCC  90 1F 00 00 */	stw r0, 0(r31)
/* 80297FD0  41 82 00 10 */	beq lbl_80297FE0
/* 80297FD4  3C 60 80 3C */	lis r3, __vt__7JASBank@ha
/* 80297FD8  38 03 76 BC */	addi r0, r3, __vt__7JASBank@l
/* 80297FDC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80297FE0:
/* 80297FE0  7C 80 07 35 */	extsh. r0, r4
/* 80297FE4  40 81 00 0C */	ble lbl_80297FF0
/* 80297FE8  7F E3 FB 78 */	mr r3, r31
/* 80297FEC  48 03 6D 51 */	bl __dl__FPv
lbl_80297FF0:
/* 80297FF0  7F E3 FB 78 */	mr r3, r31
/* 80297FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80297FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80297FFC  7C 08 03 A6 */	mtlr r0
/* 80298000  38 21 00 10 */	addi r1, r1, 0x10
/* 80298004  4E 80 00 20 */	blr 
