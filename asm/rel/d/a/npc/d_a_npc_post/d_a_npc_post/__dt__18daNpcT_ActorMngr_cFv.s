lbl_80AAC304:
/* 80AAC304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAC308  7C 08 02 A6 */	mflr r0
/* 80AAC30C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAC310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAC314  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAC318  41 82 00 1C */	beq lbl_80AAC334
/* 80AAC31C  3C A0 80 AB */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AADAD8@ha */
/* 80AAC320  38 05 DA D8 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80AADAD8@l */
/* 80AAC324  90 1F 00 04 */	stw r0, 4(r31)
/* 80AAC328  7C 80 07 35 */	extsh. r0, r4
/* 80AAC32C  40 81 00 08 */	ble lbl_80AAC334
/* 80AAC330  4B 82 2A 0D */	bl __dl__FPv
lbl_80AAC334:
/* 80AAC334  7F E3 FB 78 */	mr r3, r31
/* 80AAC338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAC33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAC340  7C 08 03 A6 */	mtlr r0
/* 80AAC344  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAC348  4E 80 00 20 */	blr 
