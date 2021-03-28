lbl_807CE0AC:
/* 807CE0AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CE0B0  7C 08 02 A6 */	mflr r0
/* 807CE0B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CE0B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CE0BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807CE0C0  41 82 00 30 */	beq lbl_807CE0F0
/* 807CE0C4  3C 60 80 7D */	lis r3, __vt__10dCcD_GStts@ha
/* 807CE0C8  38 03 F3 EC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 807CE0CC  90 1F 00 00 */	stw r0, 0(r31)
/* 807CE0D0  41 82 00 10 */	beq lbl_807CE0E0
/* 807CE0D4  3C 60 80 7D */	lis r3, __vt__10cCcD_GStts@ha
/* 807CE0D8  38 03 F3 E0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 807CE0DC  90 1F 00 00 */	stw r0, 0(r31)
lbl_807CE0E0:
/* 807CE0E0  7C 80 07 35 */	extsh. r0, r4
/* 807CE0E4  40 81 00 0C */	ble lbl_807CE0F0
/* 807CE0E8  7F E3 FB 78 */	mr r3, r31
/* 807CE0EC  4B B0 0C 50 */	b __dl__FPv
lbl_807CE0F0:
/* 807CE0F0  7F E3 FB 78 */	mr r3, r31
/* 807CE0F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CE0F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CE0FC  7C 08 03 A6 */	mtlr r0
/* 807CE100  38 21 00 10 */	addi r1, r1, 0x10
/* 807CE104  4E 80 00 20 */	blr 
