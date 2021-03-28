lbl_80BF9998:
/* 80BF9998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF999C  7C 08 02 A6 */	mflr r0
/* 80BF99A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF99A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF99A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF99AC  41 82 00 30 */	beq lbl_80BF99DC
/* 80BF99B0  3C 60 80 C0 */	lis r3, __vt__10dCcD_GStts@ha
/* 80BF99B4  38 03 AB 28 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BF99B8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF99BC  41 82 00 10 */	beq lbl_80BF99CC
/* 80BF99C0  3C 60 80 C0 */	lis r3, __vt__10cCcD_GStts@ha
/* 80BF99C4  38 03 AB 1C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BF99C8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BF99CC:
/* 80BF99CC  7C 80 07 35 */	extsh. r0, r4
/* 80BF99D0  40 81 00 0C */	ble lbl_80BF99DC
/* 80BF99D4  7F E3 FB 78 */	mr r3, r31
/* 80BF99D8  4B 6D 53 64 */	b __dl__FPv
lbl_80BF99DC:
/* 80BF99DC  7F E3 FB 78 */	mr r3, r31
/* 80BF99E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF99E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF99E8  7C 08 03 A6 */	mtlr r0
/* 80BF99EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF99F0  4E 80 00 20 */	blr 
