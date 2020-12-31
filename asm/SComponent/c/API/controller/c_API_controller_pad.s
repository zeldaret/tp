.include "macros.inc"

.section .text, "ax" # 8026328c


.global cAPICPad_recalibrate__Fv
cAPICPad_recalibrate__Fv:
/* 8026328C 002601CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80263290 002601D0  7C 08 02 A6 */	mflr r0
/* 80263294 002601D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80263298 002601D8  4B DA 4A DD */	bl mDoCPd_c_NS_recalibrate
/* 8026329C 002601DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802632A0 002601E0  7C 08 03 A6 */	mtlr r0
/* 802632A4 002601E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802632A8 002601E8  4E 80 00 20 */	blr 

.global cAPICPad_ANY_BUTTON__FUl
cAPICPad_ANY_BUTTON__FUl:
/* 802632AC 002601EC  54 64 30 32 */	slwi r4, r3, 6
/* 802632B0 002601F0  3C 60 80 3E */	lis r3, lbl_803DD2E8@ha
/* 802632B4 002601F4  38 03 D2 E8 */	addi r0, r3, lbl_803DD2E8@l
/* 802632B8 002601F8  7C 60 22 14 */	add r3, r0, r4
/* 802632BC 002601FC  80 03 00 34 */	lwz r0, 0x34(r3)
/* 802632C0 00260200  70 03 13 00 */	andi. r3, r0, 0x1300
/* 802632C4 00260204  4E 80 00 20 */	blr 

