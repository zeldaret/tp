lbl_8045C7B0:
/* 8045C7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045C7B4  7C 08 02 A6 */	mflr r0
/* 8045C7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045C7BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045C7C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8045C7C4  41 82 00 1C */	beq lbl_8045C7E0
/* 8045C7C8  3C A0 80 46 */	lis r5, __vt__10cCcD_GStts@ha /* 0x8045CD84@ha */
/* 8045C7CC  38 05 CD 84 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x8045CD84@l */
/* 8045C7D0  90 1F 00 00 */	stw r0, 0(r31)
/* 8045C7D4  7C 80 07 35 */	extsh. r0, r4
/* 8045C7D8  40 81 00 08 */	ble lbl_8045C7E0
/* 8045C7DC  4B E7 25 61 */	bl __dl__FPv
lbl_8045C7E0:
/* 8045C7E0  7F E3 FB 78 */	mr r3, r31
/* 8045C7E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045C7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045C7EC  7C 08 03 A6 */	mtlr r0
/* 8045C7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8045C7F4  4E 80 00 20 */	blr 
