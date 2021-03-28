lbl_804A31F8:
/* 804A31F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A31FC  7C 08 02 A6 */	mflr r0
/* 804A3200  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A3204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A3208  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A320C  41 82 00 1C */	beq lbl_804A3228
/* 804A3210  3C A0 80 4A */	lis r5, __vt__8cM3dGAab@ha
/* 804A3214  38 05 41 FC */	addi r0, r5, __vt__8cM3dGAab@l
/* 804A3218  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804A321C  7C 80 07 35 */	extsh. r0, r4
/* 804A3220  40 81 00 08 */	ble lbl_804A3228
/* 804A3224  4B E2 BB 18 */	b __dl__FPv
lbl_804A3228:
/* 804A3228  7F E3 FB 78 */	mr r3, r31
/* 804A322C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A3230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A3234  7C 08 03 A6 */	mtlr r0
/* 804A3238  38 21 00 10 */	addi r1, r1, 0x10
/* 804A323C  4E 80 00 20 */	blr 
