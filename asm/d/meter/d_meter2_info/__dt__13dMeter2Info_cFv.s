lbl_8021BE20:
/* 8021BE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021BE24  7C 08 02 A6 */	mflr r0
/* 8021BE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021BE2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021BE30  7C 7F 1B 79 */	or. r31, r3, r3
/* 8021BE34  41 82 00 1C */	beq lbl_8021BE50
/* 8021BE38  3C A0 80 3C */	lis r5, __vt__13dMeter2Info_c@ha
/* 8021BE3C  38 05 FA 1C */	addi r0, r5, __vt__13dMeter2Info_c@l
/* 8021BE40  90 1F 00 00 */	stw r0, 0(r31)
/* 8021BE44  7C 80 07 35 */	extsh. r0, r4
/* 8021BE48  40 81 00 08 */	ble lbl_8021BE50
/* 8021BE4C  48 0B 2E F1 */	bl __dl__FPv
lbl_8021BE50:
/* 8021BE50  7F E3 FB 78 */	mr r3, r31
/* 8021BE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021BE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021BE5C  7C 08 03 A6 */	mtlr r0
/* 8021BE60  38 21 00 10 */	addi r1, r1, 0x10
/* 8021BE64  4E 80 00 20 */	blr 
