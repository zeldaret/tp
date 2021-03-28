lbl_809AF778:
/* 809AF778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AF77C  7C 08 02 A6 */	mflr r0
/* 809AF780  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AF784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AF788  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AF78C  41 82 00 30 */	beq lbl_809AF7BC
/* 809AF790  3C 60 80 9B */	lis r3, __vt__10dCcD_GStts@ha
/* 809AF794  38 03 FB EC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809AF798  90 1F 00 00 */	stw r0, 0(r31)
/* 809AF79C  41 82 00 10 */	beq lbl_809AF7AC
/* 809AF7A0  3C 60 80 9B */	lis r3, __vt__10cCcD_GStts@ha
/* 809AF7A4  38 03 FB E0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809AF7A8  90 1F 00 00 */	stw r0, 0(r31)
lbl_809AF7AC:
/* 809AF7AC  7C 80 07 35 */	extsh. r0, r4
/* 809AF7B0  40 81 00 0C */	ble lbl_809AF7BC
/* 809AF7B4  7F E3 FB 78 */	mr r3, r31
/* 809AF7B8  4B 91 F5 84 */	b __dl__FPv
lbl_809AF7BC:
/* 809AF7BC  7F E3 FB 78 */	mr r3, r31
/* 809AF7C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AF7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AF7C8  7C 08 03 A6 */	mtlr r0
/* 809AF7CC  38 21 00 10 */	addi r1, r1, 0x10
/* 809AF7D0  4E 80 00 20 */	blr 
