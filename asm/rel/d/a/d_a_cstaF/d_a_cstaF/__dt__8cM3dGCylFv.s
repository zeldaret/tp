lbl_804DE0C4:
/* 804DE0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE0C8  7C 08 02 A6 */	mflr r0
/* 804DE0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE0D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE0D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DE0D8  41 82 00 1C */	beq lbl_804DE0F4
/* 804DE0DC  3C A0 80 4E */	lis r5, __vt__8cM3dGCyl@ha /* 0x804DFA64@ha */
/* 804DE0E0  38 05 FA 64 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x804DFA64@l */
/* 804DE0E4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 804DE0E8  7C 80 07 35 */	extsh. r0, r4
/* 804DE0EC  40 81 00 08 */	ble lbl_804DE0F4
/* 804DE0F0  4B DF 0C 4D */	bl __dl__FPv
lbl_804DE0F4:
/* 804DE0F4  7F E3 FB 78 */	mr r3, r31
/* 804DE0F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE100  7C 08 03 A6 */	mtlr r0
/* 804DE104  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE108  4E 80 00 20 */	blr 
