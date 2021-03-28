lbl_801F9E98:
/* 801F9E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F9E9C  7C 08 02 A6 */	mflr r0
/* 801F9EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F9EA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F9EA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 801F9EAC  41 82 00 1C */	beq lbl_801F9EC8
/* 801F9EB0  3C A0 80 3C */	lis r5, __vt__10dMw_DHIO_c@ha
/* 801F9EB4  38 05 E8 E0 */	addi r0, r5, __vt__10dMw_DHIO_c@l
/* 801F9EB8  90 1F 00 00 */	stw r0, 0(r31)
/* 801F9EBC  7C 80 07 35 */	extsh. r0, r4
/* 801F9EC0  40 81 00 08 */	ble lbl_801F9EC8
/* 801F9EC4  48 0D 4E 79 */	bl __dl__FPv
lbl_801F9EC8:
/* 801F9EC8  7F E3 FB 78 */	mr r3, r31
/* 801F9ECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F9ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F9ED4  7C 08 03 A6 */	mtlr r0
/* 801F9ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9EDC  4E 80 00 20 */	blr 
