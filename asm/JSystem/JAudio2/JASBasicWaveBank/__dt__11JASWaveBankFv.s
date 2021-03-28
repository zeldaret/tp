lbl_80298B88:
/* 80298B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298B8C  7C 08 02 A6 */	mflr r0
/* 80298B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298B94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298B98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80298B9C  41 82 00 1C */	beq lbl_80298BB8
/* 80298BA0  3C A0 80 3C */	lis r5, __vt__11JASWaveBank@ha
/* 80298BA4  38 05 77 80 */	addi r0, r5, __vt__11JASWaveBank@l
/* 80298BA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80298BAC  7C 80 07 35 */	extsh. r0, r4
/* 80298BB0  40 81 00 08 */	ble lbl_80298BB8
/* 80298BB4  48 03 61 89 */	bl __dl__FPv
lbl_80298BB8:
/* 80298BB8  7F E3 FB 78 */	mr r3, r31
/* 80298BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298BC4  7C 08 03 A6 */	mtlr r0
/* 80298BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80298BCC  4E 80 00 20 */	blr 
