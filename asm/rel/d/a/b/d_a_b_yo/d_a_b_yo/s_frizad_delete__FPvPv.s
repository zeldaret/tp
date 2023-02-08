lbl_80630D6C:
/* 80630D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80630D70  7C 08 02 A6 */	mflr r0
/* 80630D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80630D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80630D7C  7C 7F 1B 78 */	mr r31, r3
/* 80630D80  4B 9E 7F 61 */	bl fopAc_IsActor__FPv
/* 80630D84  2C 03 00 00 */	cmpwi r3, 0
/* 80630D88  41 82 00 38 */	beq lbl_80630DC0
/* 80630D8C  28 1F 00 00 */	cmplwi r31, 0
/* 80630D90  41 82 00 0C */	beq lbl_80630D9C
/* 80630D94  80 7F 00 04 */	lwz r3, 4(r31)
/* 80630D98  48 00 00 08 */	b lbl_80630DA0
lbl_80630D9C:
/* 80630D9C  38 60 FF FF */	li r3, -1
lbl_80630DA0:
/* 80630DA0  4B 9F 13 99 */	bl fpcM_IsCreating__FUi
/* 80630DA4  2C 03 00 00 */	cmpwi r3, 0
/* 80630DA8  40 82 00 18 */	bne lbl_80630DC0
/* 80630DAC  A8 1F 00 08 */	lha r0, 8(r31)
/* 80630DB0  2C 00 01 DE */	cmpwi r0, 0x1de
/* 80630DB4  40 82 00 0C */	bne lbl_80630DC0
/* 80630DB8  7F E3 FB 78 */	mr r3, r31
/* 80630DBC  48 08 FD 65 */	bl demoDelete__8daE_FZ_cFv
lbl_80630DC0:
/* 80630DC0  38 60 00 00 */	li r3, 0
/* 80630DC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80630DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80630DCC  7C 08 03 A6 */	mtlr r0
/* 80630DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80630DD4  4E 80 00 20 */	blr 
