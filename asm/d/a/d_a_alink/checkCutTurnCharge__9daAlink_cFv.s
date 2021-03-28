lbl_800D2684:
/* 800D2684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D2688  7C 08 02 A6 */	mflr r0
/* 800D268C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D2690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D2694  7C 7F 1B 78 */	mr r31, r3
/* 800D2698  38 80 00 08 */	li r4, 8
/* 800D269C  4B FD FF 4D */	bl itemButtonCheck__9daAlink_cFUc
/* 800D26A0  2C 03 00 00 */	cmpwi r3, 0
/* 800D26A4  41 82 00 2C */	beq lbl_800D26D0
/* 800D26A8  A8 7F 30 12 */	lha r3, 0x3012(r31)
/* 800D26AC  2C 03 00 03 */	cmpwi r3, 3
/* 800D26B0  40 80 00 10 */	bge lbl_800D26C0
/* 800D26B4  38 03 00 01 */	addi r0, r3, 1
/* 800D26B8  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800D26BC  48 00 00 1C */	b lbl_800D26D8
lbl_800D26C0:
/* 800D26C0  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800D26C4  60 00 00 40 */	ori r0, r0, 0x40
/* 800D26C8  90 1F 05 80 */	stw r0, 0x580(r31)
/* 800D26CC  48 00 00 0C */	b lbl_800D26D8
lbl_800D26D0:
/* 800D26D0  38 00 00 00 */	li r0, 0
/* 800D26D4  B0 1F 30 12 */	sth r0, 0x3012(r31)
lbl_800D26D8:
/* 800D26D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D26DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D26E0  7C 08 03 A6 */	mtlr r0
/* 800D26E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800D26E8  4E 80 00 20 */	blr 
