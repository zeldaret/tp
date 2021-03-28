lbl_80AB579C:
/* 80AB579C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB57A0  7C 08 02 A6 */	mflr r0
/* 80AB57A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB57A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB57AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB57B0  41 82 00 1C */	beq lbl_80AB57CC
/* 80AB57B4  3C A0 80 AB */	lis r5, __vt__17daNpcPray_Param_c@ha
/* 80AB57B8  38 05 5B 94 */	addi r0, r5, __vt__17daNpcPray_Param_c@l
/* 80AB57BC  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB57C0  7C 80 07 35 */	extsh. r0, r4
/* 80AB57C4  40 81 00 08 */	ble lbl_80AB57CC
/* 80AB57C8  4B 81 95 74 */	b __dl__FPv
lbl_80AB57CC:
/* 80AB57CC  7F E3 FB 78 */	mr r3, r31
/* 80AB57D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB57D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB57D8  7C 08 03 A6 */	mtlr r0
/* 80AB57DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB57E0  4E 80 00 20 */	blr 
