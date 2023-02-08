lbl_8073C8D8:
/* 8073C8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073C8DC  7C 08 02 A6 */	mflr r0
/* 8073C8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073C8E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073C8E8  93 C1 00 08 */	stw r30, 8(r1)
/* 8073C8EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8073C8F0  7C 9F 23 78 */	mr r31, r4
/* 8073C8F4  41 82 00 38 */	beq lbl_8073C92C
/* 8073C8F8  3C 60 80 74 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8073D1EC@ha */
/* 8073C8FC  38 03 D1 EC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8073D1EC@l */
/* 8073C900  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8073C904  38 7E 00 14 */	addi r3, r30, 0x14
/* 8073C908  38 80 FF FF */	li r4, -1
/* 8073C90C  4B B3 26 0D */	bl __dt__8cM3dGCirFv
/* 8073C910  7F C3 F3 78 */	mr r3, r30
/* 8073C914  38 80 00 00 */	li r4, 0
/* 8073C918  4B B2 B7 99 */	bl __dt__13cBgS_PolyInfoFv
/* 8073C91C  7F E0 07 35 */	extsh. r0, r31
/* 8073C920  40 81 00 0C */	ble lbl_8073C92C
/* 8073C924  7F C3 F3 78 */	mr r3, r30
/* 8073C928  4B B9 24 15 */	bl __dl__FPv
lbl_8073C92C:
/* 8073C92C  7F C3 F3 78 */	mr r3, r30
/* 8073C930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073C934  83 C1 00 08 */	lwz r30, 8(r1)
/* 8073C938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073C93C  7C 08 03 A6 */	mtlr r0
/* 8073C940  38 21 00 10 */	addi r1, r1, 0x10
/* 8073C944  4E 80 00 20 */	blr 
