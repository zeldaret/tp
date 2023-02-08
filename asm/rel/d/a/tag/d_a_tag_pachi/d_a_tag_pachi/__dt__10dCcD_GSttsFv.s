lbl_80D5D6A0:
/* 80D5D6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D6A4  7C 08 02 A6 */	mflr r0
/* 80D5D6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5D6B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5D6B4  41 82 00 30 */	beq lbl_80D5D6E4
/* 80D5D6B8  3C 60 80 D6 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D5D9D4@ha */
/* 80D5D6BC  38 03 D9 D4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D5D9D4@l */
/* 80D5D6C0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D5D6C4  41 82 00 10 */	beq lbl_80D5D6D4
/* 80D5D6C8  3C 60 80 D6 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D5D9C8@ha */
/* 80D5D6CC  38 03 D9 C8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D5D9C8@l */
/* 80D5D6D0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D5D6D4:
/* 80D5D6D4  7C 80 07 35 */	extsh. r0, r4
/* 80D5D6D8  40 81 00 0C */	ble lbl_80D5D6E4
/* 80D5D6DC  7F E3 FB 78 */	mr r3, r31
/* 80D5D6E0  4B 57 16 5D */	bl __dl__FPv
lbl_80D5D6E4:
/* 80D5D6E4  7F E3 FB 78 */	mr r3, r31
/* 80D5D6E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5D6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D6F0  7C 08 03 A6 */	mtlr r0
/* 80D5D6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D6F8  4E 80 00 20 */	blr 
