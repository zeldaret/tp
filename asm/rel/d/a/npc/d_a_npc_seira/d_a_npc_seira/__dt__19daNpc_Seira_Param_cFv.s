lbl_80ACFC54:
/* 80ACFC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACFC58  7C 08 02 A6 */	mflr r0
/* 80ACFC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACFC60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACFC64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACFC68  41 82 00 1C */	beq lbl_80ACFC84
/* 80ACFC6C  3C A0 80 AD */	lis r5, __vt__19daNpc_Seira_Param_c@ha
/* 80ACFC70  38 05 0A E4 */	addi r0, r5, __vt__19daNpc_Seira_Param_c@l
/* 80ACFC74  90 1F 00 00 */	stw r0, 0(r31)
/* 80ACFC78  7C 80 07 35 */	extsh. r0, r4
/* 80ACFC7C  40 81 00 08 */	ble lbl_80ACFC84
/* 80ACFC80  4B 7F F0 BC */	b __dl__FPv
lbl_80ACFC84:
/* 80ACFC84  7F E3 FB 78 */	mr r3, r31
/* 80ACFC88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACFC8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACFC90  7C 08 03 A6 */	mtlr r0
/* 80ACFC94  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACFC98  4E 80 00 20 */	blr 
