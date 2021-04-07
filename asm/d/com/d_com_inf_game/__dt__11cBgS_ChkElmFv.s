lbl_8002FEF8:
/* 8002FEF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002FEFC  7C 08 02 A6 */	mflr r0
/* 8002FF00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002FF04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002FF08  7C 7F 1B 79 */	or. r31, r3, r3
/* 8002FF0C  41 82 00 1C */	beq lbl_8002FF28
/* 8002FF10  3C A0 80 3B */	lis r5, __vt__11cBgS_ChkElm@ha /* 0x803AB630@ha */
/* 8002FF14  38 05 B6 30 */	addi r0, r5, __vt__11cBgS_ChkElm@l /* 0x803AB630@l */
/* 8002FF18  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8002FF1C  7C 80 07 35 */	extsh. r0, r4
/* 8002FF20  40 81 00 08 */	ble lbl_8002FF28
/* 8002FF24  48 29 EE 19 */	bl __dl__FPv
lbl_8002FF28:
/* 8002FF28  7F E3 FB 78 */	mr r3, r31
/* 8002FF2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002FF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002FF34  7C 08 03 A6 */	mtlr r0
/* 8002FF38  38 21 00 10 */	addi r1, r1, 0x10
/* 8002FF3C  4E 80 00 20 */	blr 
