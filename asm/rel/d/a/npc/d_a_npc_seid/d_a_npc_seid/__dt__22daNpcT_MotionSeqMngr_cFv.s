lbl_80ACAF64:
/* 80ACAF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACAF68  7C 08 02 A6 */	mflr r0
/* 80ACAF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACAF70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACAF74  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACAF78  41 82 00 1C */	beq lbl_80ACAF94
/* 80ACAF7C  3C A0 80 AD */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80ACAF80  38 05 B5 C4 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80ACAF84  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80ACAF88  7C 80 07 35 */	extsh. r0, r4
/* 80ACAF8C  40 81 00 08 */	ble lbl_80ACAF94
/* 80ACAF90  4B 80 3D AC */	b __dl__FPv
lbl_80ACAF94:
/* 80ACAF94  7F E3 FB 78 */	mr r3, r31
/* 80ACAF98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACAF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACAFA0  7C 08 03 A6 */	mtlr r0
/* 80ACAFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACAFA8  4E 80 00 20 */	blr 
