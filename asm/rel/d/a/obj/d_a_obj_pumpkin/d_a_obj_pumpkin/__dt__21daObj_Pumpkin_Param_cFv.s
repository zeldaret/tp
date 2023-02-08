lbl_80CB8304:
/* 80CB8304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8308  7C 08 02 A6 */	mflr r0
/* 80CB830C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB8314  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB8318  41 82 00 1C */	beq lbl_80CB8334
/* 80CB831C  3C A0 80 CC */	lis r5, __vt__21daObj_Pumpkin_Param_c@ha /* 0x80CB85BC@ha */
/* 80CB8320  38 05 85 BC */	addi r0, r5, __vt__21daObj_Pumpkin_Param_c@l /* 0x80CB85BC@l */
/* 80CB8324  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB8328  7C 80 07 35 */	extsh. r0, r4
/* 80CB832C  40 81 00 08 */	ble lbl_80CB8334
/* 80CB8330  4B 61 6A 0D */	bl __dl__FPv
lbl_80CB8334:
/* 80CB8334  7F E3 FB 78 */	mr r3, r31
/* 80CB8338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB833C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8340  7C 08 03 A6 */	mtlr r0
/* 80CB8344  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8348  4E 80 00 20 */	blr 
