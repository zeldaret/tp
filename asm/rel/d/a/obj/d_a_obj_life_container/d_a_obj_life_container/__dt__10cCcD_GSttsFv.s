lbl_804CE2F4:
/* 804CE2F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE2F8  7C 08 02 A6 */	mflr r0
/* 804CE2FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CE304  7C 7F 1B 79 */	or. r31, r3, r3
/* 804CE308  41 82 00 1C */	beq lbl_804CE324
/* 804CE30C  3C A0 80 4D */	lis r5, __vt__10cCcD_GStts@ha /* 0x804CE5D8@ha */
/* 804CE310  38 05 E5 D8 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x804CE5D8@l */
/* 804CE314  90 1F 00 00 */	stw r0, 0(r31)
/* 804CE318  7C 80 07 35 */	extsh. r0, r4
/* 804CE31C  40 81 00 08 */	ble lbl_804CE324
/* 804CE320  4B E0 0A 1D */	bl __dl__FPv
lbl_804CE324:
/* 804CE324  7F E3 FB 78 */	mr r3, r31
/* 804CE328  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CE32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE330  7C 08 03 A6 */	mtlr r0
/* 804CE334  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE338  4E 80 00 20 */	blr 
