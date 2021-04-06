lbl_807E1FB0:
/* 807E1FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E1FB4  7C 08 02 A6 */	mflr r0
/* 807E1FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E1FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E1FC0  93 C1 00 08 */	stw r30, 8(r1)
/* 807E1FC4  7C 7E 1B 79 */	or. r30, r3, r3
/* 807E1FC8  7C 9F 23 78 */	mr r31, r4
/* 807E1FCC  41 82 00 38 */	beq lbl_807E2004
/* 807E1FD0  3C 80 80 7E */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x807E353C@ha */
/* 807E1FD4  38 84 35 3C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x807E353C@l */
/* 807E1FD8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807E1FDC  38 04 00 0C */	addi r0, r4, 0xc
/* 807E1FE0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807E1FE4  38 04 00 18 */	addi r0, r4, 0x18
/* 807E1FE8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807E1FEC  38 80 00 00 */	li r4, 0
/* 807E1FF0  4B 89 3F A5 */	bl __dt__9dBgS_AcchFv
/* 807E1FF4  7F E0 07 35 */	extsh. r0, r31
/* 807E1FF8  40 81 00 0C */	ble lbl_807E2004
/* 807E1FFC  7F C3 F3 78 */	mr r3, r30
/* 807E2000  4B AE CD 3D */	bl __dl__FPv
lbl_807E2004:
/* 807E2004  7F C3 F3 78 */	mr r3, r30
/* 807E2008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E200C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807E2010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E2014  7C 08 03 A6 */	mtlr r0
/* 807E2018  38 21 00 10 */	addi r1, r1, 0x10
/* 807E201C  4E 80 00 20 */	blr 
