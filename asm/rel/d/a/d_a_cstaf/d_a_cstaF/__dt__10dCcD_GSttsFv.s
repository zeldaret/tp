lbl_804DE154:
/* 804DE154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE158  7C 08 02 A6 */	mflr r0
/* 804DE15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE164  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DE168  41 82 00 30 */	beq lbl_804DE198
/* 804DE16C  3C 60 80 4E */	lis r3, __vt__10dCcD_GStts@ha
/* 804DE170  38 03 FA 58 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 804DE174  90 1F 00 00 */	stw r0, 0(r31)
/* 804DE178  41 82 00 10 */	beq lbl_804DE188
/* 804DE17C  3C 60 80 4E */	lis r3, __vt__10cCcD_GStts@ha
/* 804DE180  38 03 FA 4C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 804DE184  90 1F 00 00 */	stw r0, 0(r31)
lbl_804DE188:
/* 804DE188  7C 80 07 35 */	extsh. r0, r4
/* 804DE18C  40 81 00 0C */	ble lbl_804DE198
/* 804DE190  7F E3 FB 78 */	mr r3, r31
/* 804DE194  4B DF 0B A8 */	b __dl__FPv
lbl_804DE198:
/* 804DE198  7F E3 FB 78 */	mr r3, r31
/* 804DE19C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE1A4  7C 08 03 A6 */	mtlr r0
/* 804DE1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE1AC  4E 80 00 20 */	blr 
