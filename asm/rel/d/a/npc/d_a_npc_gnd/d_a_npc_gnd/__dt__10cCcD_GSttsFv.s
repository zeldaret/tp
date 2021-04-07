lbl_809BD300:
/* 809BD300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BD304  7C 08 02 A6 */	mflr r0
/* 809BD308  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BD30C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BD310  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BD314  41 82 00 1C */	beq lbl_809BD330
/* 809BD318  3C A0 80 9C */	lis r5, __vt__10cCcD_GStts@ha /* 0x809BE71C@ha */
/* 809BD31C  38 05 E7 1C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x809BE71C@l */
/* 809BD320  90 1F 00 00 */	stw r0, 0(r31)
/* 809BD324  7C 80 07 35 */	extsh. r0, r4
/* 809BD328  40 81 00 08 */	ble lbl_809BD330
/* 809BD32C  4B 91 1A 11 */	bl __dl__FPv
lbl_809BD330:
/* 809BD330  7F E3 FB 78 */	mr r3, r31
/* 809BD334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BD338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BD33C  7C 08 03 A6 */	mtlr r0
/* 809BD340  38 21 00 10 */	addi r1, r1, 0x10
/* 809BD344  4E 80 00 20 */	blr 
