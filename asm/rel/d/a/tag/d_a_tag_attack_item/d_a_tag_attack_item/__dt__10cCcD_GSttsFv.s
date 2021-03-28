lbl_805A3278:
/* 805A3278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A327C  7C 08 02 A6 */	mflr r0
/* 805A3280  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A3288  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A328C  41 82 00 1C */	beq lbl_805A32A8
/* 805A3290  3C A0 80 5A */	lis r5, __vt__10cCcD_GStts@ha
/* 805A3294  38 05 33 B4 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 805A3298  90 1F 00 00 */	stw r0, 0(r31)
/* 805A329C  7C 80 07 35 */	extsh. r0, r4
/* 805A32A0  40 81 00 08 */	ble lbl_805A32A8
/* 805A32A4  4B D2 BA 98 */	b __dl__FPv
lbl_805A32A8:
/* 805A32A8  7F E3 FB 78 */	mr r3, r31
/* 805A32AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A32B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A32B4  7C 08 03 A6 */	mtlr r0
/* 805A32B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A32BC  4E 80 00 20 */	blr 
