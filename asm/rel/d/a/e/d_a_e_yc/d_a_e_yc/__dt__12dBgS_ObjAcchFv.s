lbl_807F274C:
/* 807F274C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F2750  7C 08 02 A6 */	mflr r0
/* 807F2754  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F2758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F275C  93 C1 00 08 */	stw r30, 8(r1)
/* 807F2760  7C 7E 1B 79 */	or. r30, r3, r3
/* 807F2764  7C 9F 23 78 */	mr r31, r4
/* 807F2768  41 82 00 38 */	beq lbl_807F27A0
/* 807F276C  3C 80 80 7F */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x807F2AD0@ha */
/* 807F2770  38 84 2A D0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x807F2AD0@l */
/* 807F2774  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807F2778  38 04 00 0C */	addi r0, r4, 0xc
/* 807F277C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807F2780  38 04 00 18 */	addi r0, r4, 0x18
/* 807F2784  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807F2788  38 80 00 00 */	li r4, 0
/* 807F278C  4B 88 38 09 */	bl __dt__9dBgS_AcchFv
/* 807F2790  7F E0 07 35 */	extsh. r0, r31
/* 807F2794  40 81 00 0C */	ble lbl_807F27A0
/* 807F2798  7F C3 F3 78 */	mr r3, r30
/* 807F279C  4B AD C5 A1 */	bl __dl__FPv
lbl_807F27A0:
/* 807F27A0  7F C3 F3 78 */	mr r3, r30
/* 807F27A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F27A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 807F27AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F27B0  7C 08 03 A6 */	mtlr r0
/* 807F27B4  38 21 00 10 */	addi r1, r1, 0x10
/* 807F27B8  4E 80 00 20 */	blr 
