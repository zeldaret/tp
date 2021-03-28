lbl_80D3A7AC:
/* 80D3A7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3A7B0  7C 08 02 A6 */	mflr r0
/* 80D3A7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A7B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3A7BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3A7C0  41 82 00 30 */	beq lbl_80D3A7F0
/* 80D3A7C4  3C 60 80 D4 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D3A7C8  38 03 B8 34 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D3A7CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D3A7D0  41 82 00 10 */	beq lbl_80D3A7E0
/* 80D3A7D4  3C 60 80 D4 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D3A7D8  38 03 B8 28 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D3A7DC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D3A7E0:
/* 80D3A7E0  7C 80 07 35 */	extsh. r0, r4
/* 80D3A7E4  40 81 00 0C */	ble lbl_80D3A7F0
/* 80D3A7E8  7F E3 FB 78 */	mr r3, r31
/* 80D3A7EC  4B 59 45 50 */	b __dl__FPv
lbl_80D3A7F0:
/* 80D3A7F0  7F E3 FB 78 */	mr r3, r31
/* 80D3A7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3A7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3A7FC  7C 08 03 A6 */	mtlr r0
/* 80D3A800  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3A804  4E 80 00 20 */	blr 
