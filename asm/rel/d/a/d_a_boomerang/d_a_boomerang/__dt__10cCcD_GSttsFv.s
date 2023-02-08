lbl_804A271C:
/* 804A271C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A2720  7C 08 02 A6 */	mflr r0
/* 804A2724  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A272C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A2730  41 82 00 1C */	beq lbl_804A274C
/* 804A2734  3C A0 80 4A */	lis r5, __vt__10cCcD_GStts@ha /* 0x804A2C54@ha */
/* 804A2738  38 05 2C 54 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x804A2C54@l */
/* 804A273C  90 1F 00 00 */	stw r0, 0(r31)
/* 804A2740  7C 80 07 35 */	extsh. r0, r4
/* 804A2744  40 81 00 08 */	ble lbl_804A274C
/* 804A2748  4B E2 C5 F5 */	bl __dl__FPv
lbl_804A274C:
/* 804A274C  7F E3 FB 78 */	mr r3, r31
/* 804A2750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A2754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A2758  7C 08 03 A6 */	mtlr r0
/* 804A275C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2760  4E 80 00 20 */	blr 
