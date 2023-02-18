lbl_804DF82C:
/* 804DF82C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF830  7C 08 02 A6 */	mflr r0
/* 804DF834  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DF83C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DF840  41 82 00 1C */	beq lbl_804DF85C
/* 804DF844  3C A0 80 4E */	lis r5, __vt__10cCcD_GStts@ha /* 0x804DFA4C@ha */
/* 804DF848  38 05 FA 4C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x804DFA4C@l */
/* 804DF84C  90 1F 00 00 */	stw r0, 0(r31)
/* 804DF850  7C 80 07 35 */	extsh. r0, r4
/* 804DF854  40 81 00 08 */	ble lbl_804DF85C
/* 804DF858  4B DE F4 E5 */	bl __dl__FPv
lbl_804DF85C:
/* 804DF85C  7F E3 FB 78 */	mr r3, r31
/* 804DF860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DF864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF868  7C 08 03 A6 */	mtlr r0
/* 804DF86C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF870  4E 80 00 20 */	blr 
