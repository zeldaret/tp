lbl_80D2E6B4:
/* 80D2E6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2E6B8  7C 08 02 A6 */	mflr r0
/* 80D2E6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2E6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2E6C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2E6C8  41 82 00 1C */	beq lbl_80D2E6E4
/* 80D2E6CC  3C A0 80 D3 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80D2EA98@ha */
/* 80D2E6D0  38 05 EA 98 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80D2EA98@l */
/* 80D2E6D4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2E6D8  7C 80 07 35 */	extsh. r0, r4
/* 80D2E6DC  40 81 00 08 */	ble lbl_80D2E6E4
/* 80D2E6E0  4B 5A 06 5D */	bl __dl__FPv
lbl_80D2E6E4:
/* 80D2E6E4  7F E3 FB 78 */	mr r3, r31
/* 80D2E6E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2E6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2E6F0  7C 08 03 A6 */	mtlr r0
/* 80D2E6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2E6F8  4E 80 00 20 */	blr 
