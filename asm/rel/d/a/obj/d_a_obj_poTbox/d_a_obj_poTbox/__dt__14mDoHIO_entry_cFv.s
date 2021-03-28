lbl_80CB4280:
/* 80CB4280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4284  7C 08 02 A6 */	mflr r0
/* 80CB4288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB428C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB4290  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB4294  41 82 00 1C */	beq lbl_80CB42B0
/* 80CB4298  3C A0 80 CB */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80CB429C  38 05 51 14 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80CB42A0  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB42A4  7C 80 07 35 */	extsh. r0, r4
/* 80CB42A8  40 81 00 08 */	ble lbl_80CB42B0
/* 80CB42AC  4B 61 AA 90 */	b __dl__FPv
lbl_80CB42B0:
/* 80CB42B0  7F E3 FB 78 */	mr r3, r31
/* 80CB42B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB42B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB42BC  7C 08 03 A6 */	mtlr r0
/* 80CB42C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB42C4  4E 80 00 20 */	blr 
