lbl_80C6CD74:
/* 80C6CD74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6CD78  7C 08 02 A6 */	mflr r0
/* 80C6CD7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6CD80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6CD84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6CD88  41 82 00 30 */	beq lbl_80C6CDB8
/* 80C6CD8C  3C 60 80 C7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C6CD90  38 03 D6 50 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C6CD94  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6CD98  41 82 00 10 */	beq lbl_80C6CDA8
/* 80C6CD9C  3C 60 80 C7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C6CDA0  38 03 D6 44 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C6CDA4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C6CDA8:
/* 80C6CDA8  7C 80 07 35 */	extsh. r0, r4
/* 80C6CDAC  40 81 00 0C */	ble lbl_80C6CDB8
/* 80C6CDB0  7F E3 FB 78 */	mr r3, r31
/* 80C6CDB4  4B 66 1F 88 */	b __dl__FPv
lbl_80C6CDB8:
/* 80C6CDB8  7F E3 FB 78 */	mr r3, r31
/* 80C6CDBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6CDC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6CDC4  7C 08 03 A6 */	mtlr r0
/* 80C6CDC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6CDCC  4E 80 00 20 */	blr 
