lbl_80CC68A0:
/* 80CC68A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC68A4  7C 08 02 A6 */	mflr r0
/* 80CC68A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC68AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC68B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC68B4  41 82 00 1C */	beq lbl_80CC68D0
/* 80CC68B8  3C A0 80 CC */	lis r5, __vt__10cCcD_GStts@ha
/* 80CC68BC  38 05 6A 04 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CC68C0  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC68C4  7C 80 07 35 */	extsh. r0, r4
/* 80CC68C8  40 81 00 08 */	ble lbl_80CC68D0
/* 80CC68CC  4B 60 84 70 */	b __dl__FPv
lbl_80CC68D0:
/* 80CC68D0  7F E3 FB 78 */	mr r3, r31
/* 80CC68D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC68D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC68DC  7C 08 03 A6 */	mtlr r0
/* 80CC68E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC68E4  4E 80 00 20 */	blr 
