lbl_801F9EE0:
/* 801F9EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F9EE4  7C 08 02 A6 */	mflr r0
/* 801F9EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F9EEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F9EF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801F9EF4  41 82 00 1C */	beq lbl_801F9F10
/* 801F9EF8  3C A0 80 3C */	lis r5, __vt__9dMw_HIO_c@ha
/* 801F9EFC  38 05 E8 EC */	addi r0, r5, __vt__9dMw_HIO_c@l
/* 801F9F00  90 1F 00 00 */	stw r0, 0(r31)
/* 801F9F04  7C 80 07 35 */	extsh. r0, r4
/* 801F9F08  40 81 00 08 */	ble lbl_801F9F10
/* 801F9F0C  48 0D 4E 31 */	bl __dl__FPv
lbl_801F9F10:
/* 801F9F10  7F E3 FB 78 */	mr r3, r31
/* 801F9F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F9F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F9F1C  7C 08 03 A6 */	mtlr r0
/* 801F9F20  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9F24  4E 80 00 20 */	blr 
