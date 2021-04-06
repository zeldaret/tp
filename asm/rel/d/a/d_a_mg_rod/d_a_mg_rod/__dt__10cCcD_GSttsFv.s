lbl_804BB028:
/* 804BB028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BB02C  7C 08 02 A6 */	mflr r0
/* 804BB030  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BB034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BB038  7C 7F 1B 79 */	or. r31, r3, r3
/* 804BB03C  41 82 00 1C */	beq lbl_804BB058
/* 804BB040  3C A0 80 4C */	lis r5, __vt__10cCcD_GStts@ha /* 0x804BBB08@ha */
/* 804BB044  38 05 BB 08 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x804BBB08@l */
/* 804BB048  90 1F 00 00 */	stw r0, 0(r31)
/* 804BB04C  7C 80 07 35 */	extsh. r0, r4
/* 804BB050  40 81 00 08 */	ble lbl_804BB058
/* 804BB054  4B E1 3C E9 */	bl __dl__FPv
lbl_804BB058:
/* 804BB058  7F E3 FB 78 */	mr r3, r31
/* 804BB05C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BB060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BB064  7C 08 03 A6 */	mtlr r0
/* 804BB068  38 21 00 10 */	addi r1, r1, 0x10
/* 804BB06C  4E 80 00 20 */	blr 
