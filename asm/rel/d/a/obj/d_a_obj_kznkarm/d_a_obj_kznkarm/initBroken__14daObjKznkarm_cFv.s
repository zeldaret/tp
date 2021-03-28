lbl_80C4F8E0:
/* 80C4F8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4F8E4  7C 08 02 A6 */	mflr r0
/* 80C4F8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4F8EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4F8F0  7C 7F 1B 78 */	mr r31, r3
/* 80C4F8F4  38 00 00 00 */	li r0, 0
/* 80C4F8F8  90 03 07 90 */	stw r0, 0x790(r3)
/* 80C4F8FC  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80C4F900  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80C4F904  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80C4F908  80 63 04 A4 */	lwz r3, 0x4a4(r3)
/* 80C4F90C  4B 3D 1A 4C */	b fpcEx_SearchByID__FUi
/* 80C4F910  28 03 00 00 */	cmplwi r3, 0
/* 80C4F914  41 82 00 10 */	beq lbl_80C4F924
/* 80C4F918  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80C4F91C  80 BF 00 B0 */	lwz r5, 0xb0(r31)
/* 80C4F920  4B FE D3 20 */	b getFirstVec__15daObjKazeNeko_cFP4cXyzi
lbl_80C4F924:
/* 80C4F924  3C 60 80 C5 */	lis r3, M_attr__14daObjKznkarm_c@ha
/* 80C4F928  38 63 0D 08 */	addi r3, r3, M_attr__14daObjKznkarm_c@l
/* 80C4F92C  A8 03 00 30 */	lha r0, 0x30(r3)
/* 80C4F930  B0 1F 07 A8 */	sth r0, 0x7a8(r31)
/* 80C4F934  A8 03 00 32 */	lha r0, 0x32(r3)
/* 80C4F938  B0 1F 07 AA */	sth r0, 0x7aa(r31)
/* 80C4F93C  A8 03 00 34 */	lha r0, 0x34(r3)
/* 80C4F940  B0 1F 07 AC */	sth r0, 0x7ac(r31)
/* 80C4F944  38 00 00 0A */	li r0, 0xa
/* 80C4F948  98 1F 07 B0 */	stb r0, 0x7b0(r31)
/* 80C4F94C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4F950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F954  7C 08 03 A6 */	mtlr r0
/* 80C4F958  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F95C  4E 80 00 20 */	blr 
