lbl_80A05810:
/* 80A05810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05814  7C 08 02 A6 */	mflr r0
/* 80A05818  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0581C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A05820  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A05824  41 82 00 1C */	beq lbl_80A05840
/* 80A05828  3C A0 80 A0 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80A0582C  38 05 78 04 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80A05830  90 1F 00 04 */	stw r0, 4(r31)
/* 80A05834  7C 80 07 35 */	extsh. r0, r4
/* 80A05838  40 81 00 08 */	ble lbl_80A05840
/* 80A0583C  4B 8C 95 00 */	b __dl__FPv
lbl_80A05840:
/* 80A05840  7F E3 FB 78 */	mr r3, r31
/* 80A05844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A05848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0584C  7C 08 03 A6 */	mtlr r0
/* 80A05850  38 21 00 10 */	addi r1, r1, 0x10
/* 80A05854  4E 80 00 20 */	blr 
