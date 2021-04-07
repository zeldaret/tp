lbl_804A25E4:
/* 804A25E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A25E8  7C 08 02 A6 */	mflr r0
/* 804A25EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A25F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A25F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A25F8  41 82 00 1C */	beq lbl_804A2614
/* 804A25FC  3C A0 80 4A */	lis r5, __vt__8cM3dGAab@ha /* 0x804A2C6C@ha */
/* 804A2600  38 05 2C 6C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x804A2C6C@l */
/* 804A2604  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804A2608  7C 80 07 35 */	extsh. r0, r4
/* 804A260C  40 81 00 08 */	ble lbl_804A2614
/* 804A2610  4B E2 C7 2D */	bl __dl__FPv
lbl_804A2614:
/* 804A2614  7F E3 FB 78 */	mr r3, r31
/* 804A2618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A261C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A2620  7C 08 03 A6 */	mtlr r0
/* 804A2624  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2628  4E 80 00 20 */	blr 
