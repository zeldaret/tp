lbl_804A262C:
/* 804A262C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A2630  7C 08 02 A6 */	mflr r0
/* 804A2634  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A263C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A2640  41 82 00 30 */	beq lbl_804A2670
/* 804A2644  3C 60 80 4A */	lis r3, __vt__10dCcD_GStts@ha
/* 804A2648  38 03 2C 60 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 804A264C  90 1F 00 00 */	stw r0, 0(r31)
/* 804A2650  41 82 00 10 */	beq lbl_804A2660
/* 804A2654  3C 60 80 4A */	lis r3, __vt__10cCcD_GStts@ha
/* 804A2658  38 03 2C 54 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 804A265C  90 1F 00 00 */	stw r0, 0(r31)
lbl_804A2660:
/* 804A2660  7C 80 07 35 */	extsh. r0, r4
/* 804A2664  40 81 00 0C */	ble lbl_804A2670
/* 804A2668  7F E3 FB 78 */	mr r3, r31
/* 804A266C  4B E2 C6 D0 */	b __dl__FPv
lbl_804A2670:
/* 804A2670  7F E3 FB 78 */	mr r3, r31
/* 804A2674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A2678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A267C  7C 08 03 A6 */	mtlr r0
/* 804A2680  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2684  4E 80 00 20 */	blr 
