lbl_80480C90:
/* 80480C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80480C94  7C 08 02 A6 */	mflr r0
/* 80480C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80480CA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80480CA4  41 82 00 1C */	beq lbl_80480CC0
/* 80480CA8  3C A0 80 48 */	lis r5, __vt__10cCcD_GStts@ha
/* 80480CAC  38 05 17 BC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80480CB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80480CB4  7C 80 07 35 */	extsh. r0, r4
/* 80480CB8  40 81 00 08 */	ble lbl_80480CC0
/* 80480CBC  4B E4 E0 80 */	b __dl__FPv
lbl_80480CC0:
/* 80480CC0  7F E3 FB 78 */	mr r3, r31
/* 80480CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80480CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80480CCC  7C 08 03 A6 */	mtlr r0
/* 80480CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80480CD4  4E 80 00 20 */	blr 
