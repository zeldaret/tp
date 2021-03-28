lbl_804FA0B8:
/* 804FA0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA0BC  7C 08 02 A6 */	mflr r0
/* 804FA0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA0C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA0C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804FA0CC  41 82 00 1C */	beq lbl_804FA0E8
/* 804FA0D0  3C A0 80 50 */	lis r5, __vt__8cM3dGAab@ha
/* 804FA0D4  38 05 AE 08 */	addi r0, r5, __vt__8cM3dGAab@l
/* 804FA0D8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804FA0DC  7C 80 07 35 */	extsh. r0, r4
/* 804FA0E0  40 81 00 08 */	ble lbl_804FA0E8
/* 804FA0E4  4B DD 4C 58 */	b __dl__FPv
lbl_804FA0E8:
/* 804FA0E8  7F E3 FB 78 */	mr r3, r31
/* 804FA0EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA0F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA0F4  7C 08 03 A6 */	mtlr r0
/* 804FA0F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA0FC  4E 80 00 20 */	blr 
