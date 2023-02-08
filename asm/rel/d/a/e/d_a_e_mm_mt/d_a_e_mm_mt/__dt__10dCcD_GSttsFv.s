lbl_807252A8:
/* 807252A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807252AC  7C 08 02 A6 */	mflr r0
/* 807252B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807252B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807252B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 807252BC  41 82 00 30 */	beq lbl_807252EC
/* 807252C0  3C 60 80 72 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80725A54@ha */
/* 807252C4  38 03 5A 54 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80725A54@l */
/* 807252C8  90 1F 00 00 */	stw r0, 0(r31)
/* 807252CC  41 82 00 10 */	beq lbl_807252DC
/* 807252D0  3C 60 80 72 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80725A48@ha */
/* 807252D4  38 03 5A 48 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80725A48@l */
/* 807252D8  90 1F 00 00 */	stw r0, 0(r31)
lbl_807252DC:
/* 807252DC  7C 80 07 35 */	extsh. r0, r4
/* 807252E0  40 81 00 0C */	ble lbl_807252EC
/* 807252E4  7F E3 FB 78 */	mr r3, r31
/* 807252E8  4B BA 9A 55 */	bl __dl__FPv
lbl_807252EC:
/* 807252EC  7F E3 FB 78 */	mr r3, r31
/* 807252F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807252F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807252F8  7C 08 03 A6 */	mtlr r0
/* 807252FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80725300  4E 80 00 20 */	blr 
