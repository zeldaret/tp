lbl_80CE81AC:
/* 80CE81AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE81B0  7C 08 02 A6 */	mflr r0
/* 80CE81B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE81B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE81BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE81C0  41 82 00 1C */	beq lbl_80CE81DC
/* 80CE81C4  3C A0 80 CF */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80CE81C8  38 05 8F B0 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80CE81CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE81D0  7C 80 07 35 */	extsh. r0, r4
/* 80CE81D4  40 81 00 08 */	ble lbl_80CE81DC
/* 80CE81D8  4B 5E 6B 64 */	b __dl__FPv
lbl_80CE81DC:
/* 80CE81DC  7F E3 FB 78 */	mr r3, r31
/* 80CE81E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE81E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE81E8  7C 08 03 A6 */	mtlr r0
/* 80CE81EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE81F0  4E 80 00 20 */	blr 
