lbl_804BB178:
/* 804BB178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BB17C  7C 08 02 A6 */	mflr r0
/* 804BB180  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BB184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BB188  7C 7F 1B 79 */	or. r31, r3, r3
/* 804BB18C  41 82 00 10 */	beq lbl_804BB19C
/* 804BB190  7C 80 07 35 */	extsh. r0, r4
/* 804BB194  40 81 00 08 */	ble lbl_804BB19C
/* 804BB198  4B E1 3B A5 */	bl __dl__FPv
lbl_804BB19C:
/* 804BB19C  7F E3 FB 78 */	mr r3, r31
/* 804BB1A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BB1A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BB1A8  7C 08 03 A6 */	mtlr r0
/* 804BB1AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804BB1B0  4E 80 00 20 */	blr 
