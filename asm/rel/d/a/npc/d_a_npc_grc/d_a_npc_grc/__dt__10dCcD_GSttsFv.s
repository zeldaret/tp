lbl_809CF2E4:
/* 809CF2E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CF2E8  7C 08 02 A6 */	mflr r0
/* 809CF2EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CF2F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CF2F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809CF2F8  41 82 00 30 */	beq lbl_809CF328
/* 809CF2FC  3C 60 80 9D */	lis r3, __vt__10dCcD_GStts@ha
/* 809CF300  38 03 FB 08 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809CF304  90 1F 00 00 */	stw r0, 0(r31)
/* 809CF308  41 82 00 10 */	beq lbl_809CF318
/* 809CF30C  3C 60 80 9D */	lis r3, __vt__10cCcD_GStts@ha
/* 809CF310  38 03 FA FC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809CF314  90 1F 00 00 */	stw r0, 0(r31)
lbl_809CF318:
/* 809CF318  7C 80 07 35 */	extsh. r0, r4
/* 809CF31C  40 81 00 0C */	ble lbl_809CF328
/* 809CF320  7F E3 FB 78 */	mr r3, r31
/* 809CF324  4B 8F FA 18 */	b __dl__FPv
lbl_809CF328:
/* 809CF328  7F E3 FB 78 */	mr r3, r31
/* 809CF32C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CF330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CF334  7C 08 03 A6 */	mtlr r0
/* 809CF338  38 21 00 10 */	addi r1, r1, 0x10
/* 809CF33C  4E 80 00 20 */	blr 
