lbl_80C29184:
/* 80C29184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29188  7C 08 02 A6 */	mflr r0
/* 80C2918C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C29190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C29194  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C29198  41 82 00 1C */	beq lbl_80C291B4
/* 80C2919C  3C A0 80 C3 */	lis r5, __vt__15daObj_ITA_HIO_c@ha
/* 80C291A0  38 05 93 B8 */	addi r0, r5, __vt__15daObj_ITA_HIO_c@l
/* 80C291A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C291A8  7C 80 07 35 */	extsh. r0, r4
/* 80C291AC  40 81 00 08 */	ble lbl_80C291B4
/* 80C291B0  4B 6A 5B 8C */	b __dl__FPv
lbl_80C291B4:
/* 80C291B4  7F E3 FB 78 */	mr r3, r31
/* 80C291B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C291BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C291C0  7C 08 03 A6 */	mtlr r0
/* 80C291C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C291C8  4E 80 00 20 */	blr 
