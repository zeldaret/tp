lbl_80CDB6F4:
/* 80CDB6F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDB6F8  7C 08 02 A6 */	mflr r0
/* 80CDB6FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDB704  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CDB708  41 82 00 1C */	beq lbl_80CDB724
/* 80CDB70C  3C A0 80 CE */	lis r5, __vt__10cCcD_GStts@ha
/* 80CDB710  38 05 B9 E4 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CDB714  90 1F 00 00 */	stw r0, 0(r31)
/* 80CDB718  7C 80 07 35 */	extsh. r0, r4
/* 80CDB71C  40 81 00 08 */	ble lbl_80CDB724
/* 80CDB720  4B 5F 36 1C */	b __dl__FPv
lbl_80CDB724:
/* 80CDB724  7F E3 FB 78 */	mr r3, r31
/* 80CDB728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDB72C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDB730  7C 08 03 A6 */	mtlr r0
/* 80CDB734  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDB738  4E 80 00 20 */	blr 
