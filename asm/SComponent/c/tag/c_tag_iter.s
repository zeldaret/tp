.include "macros.inc"

.section .text, "ax" # 80266a7c


.global cTgIt_MethodCall
cTgIt_MethodCall:
/* 80266A7C 002639BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80266A80 002639C0  7C 08 02 A6 */	mflr r0
/* 80266A84 002639C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80266A88 002639C8  7C 85 23 78 */	mr r5, r4
/* 80266A8C 002639CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80266A90 002639D0  80 84 00 04 */	lwz r4, 4(r4)
/* 80266A94 002639D4  81 85 00 00 */	lwz r12, 0(r5)
/* 80266A98 002639D8  7D 89 03 A6 */	mtctr r12
/* 80266A9C 002639DC  4E 80 04 21 */	bctrl 
/* 80266AA0 002639E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80266AA4 002639E4  7C 08 03 A6 */	mtlr r0
/* 80266AA8 002639E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80266AAC 002639EC  4E 80 00 20 */	blr 
.global cTgIt_JudgeFilter
cTgIt_JudgeFilter:
/* 80266AB0 002639F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80266AB4 002639F4  7C 08 02 A6 */	mflr r0
/* 80266AB8 002639F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80266ABC 002639FC  7C 85 23 78 */	mr r5, r4
/* 80266AC0 00263A00  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80266AC4 00263A04  80 84 00 04 */	lwz r4, 4(r4)
/* 80266AC8 00263A08  81 85 00 00 */	lwz r12, 0(r5)
/* 80266ACC 00263A0C  7D 89 03 A6 */	mtctr r12
/* 80266AD0 00263A10  4E 80 04 21 */	bctrl 
/* 80266AD4 00263A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80266AD8 00263A18  7C 08 03 A6 */	mtlr r0
/* 80266ADC 00263A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80266AE0 00263A20  4E 80 00 20 */	blr 

