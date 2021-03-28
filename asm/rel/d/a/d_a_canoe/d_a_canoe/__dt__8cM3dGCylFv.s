lbl_804DAC68:
/* 804DAC68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAC6C  7C 08 02 A6 */	mflr r0
/* 804DAC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAC74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAC78  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DAC7C  41 82 00 1C */	beq lbl_804DAC98
/* 804DAC80  3C A0 80 4E */	lis r5, __vt__8cM3dGCyl@ha
/* 804DAC84  38 05 D7 E4 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 804DAC88  90 1F 00 14 */	stw r0, 0x14(r31)
/* 804DAC8C  7C 80 07 35 */	extsh. r0, r4
/* 804DAC90  40 81 00 08 */	ble lbl_804DAC98
/* 804DAC94  4B DF 40 A8 */	b __dl__FPv
lbl_804DAC98:
/* 804DAC98  7F E3 FB 78 */	mr r3, r31
/* 804DAC9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DACA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DACA4  7C 08 03 A6 */	mtlr r0
/* 804DACA8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DACAC  4E 80 00 20 */	blr 
