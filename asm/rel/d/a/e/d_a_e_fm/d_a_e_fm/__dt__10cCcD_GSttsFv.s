lbl_804FA390:
/* 804FA390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA394  7C 08 02 A6 */	mflr r0
/* 804FA398  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA39C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA3A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 804FA3A4  41 82 00 1C */	beq lbl_804FA3C0
/* 804FA3A8  3C A0 80 50 */	lis r5, __vt__10cCcD_GStts@ha /* 0x804FADE4@ha */
/* 804FA3AC  38 05 AD E4 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x804FADE4@l */
/* 804FA3B0  90 1F 00 00 */	stw r0, 0(r31)
/* 804FA3B4  7C 80 07 35 */	extsh. r0, r4
/* 804FA3B8  40 81 00 08 */	ble lbl_804FA3C0
/* 804FA3BC  4B DD 49 81 */	bl __dl__FPv
lbl_804FA3C0:
/* 804FA3C0  7F E3 FB 78 */	mr r3, r31
/* 804FA3C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA3CC  7C 08 03 A6 */	mtlr r0
/* 804FA3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA3D4  4E 80 00 20 */	blr 
