lbl_804CD2EC:
/* 804CD2EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD2F0  7C 08 02 A6 */	mflr r0
/* 804CD2F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD2F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CD2FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 804CD300  41 82 00 30 */	beq lbl_804CD330
/* 804CD304  3C 60 80 4D */	lis r3, __vt__10dCcD_GStts@ha /* 0x804CE5E4@ha */
/* 804CD308  38 03 E5 E4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x804CE5E4@l */
/* 804CD30C  90 1F 00 00 */	stw r0, 0(r31)
/* 804CD310  41 82 00 10 */	beq lbl_804CD320
/* 804CD314  3C 60 80 4D */	lis r3, __vt__10cCcD_GStts@ha /* 0x804CE5D8@ha */
/* 804CD318  38 03 E5 D8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x804CE5D8@l */
/* 804CD31C  90 1F 00 00 */	stw r0, 0(r31)
lbl_804CD320:
/* 804CD320  7C 80 07 35 */	extsh. r0, r4
/* 804CD324  40 81 00 0C */	ble lbl_804CD330
/* 804CD328  7F E3 FB 78 */	mr r3, r31
/* 804CD32C  4B E0 1A 11 */	bl __dl__FPv
lbl_804CD330:
/* 804CD330  7F E3 FB 78 */	mr r3, r31
/* 804CD334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CD338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD33C  7C 08 03 A6 */	mtlr r0
/* 804CD340  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD344  4E 80 00 20 */	blr 
