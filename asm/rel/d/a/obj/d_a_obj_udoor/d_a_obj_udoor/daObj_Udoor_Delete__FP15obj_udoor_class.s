lbl_80D209C4:
/* 80D209C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D209C8  7C 08 02 A6 */	mflr r0
/* 80D209CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D209D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D209D4  7C 7F 1B 78 */	mr r31, r3
/* 80D209D8  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D209DC  3C 80 80 D2 */	lis r4, d_a_obj_udoor__stringBase0@ha /* 0x80D20E10@ha */
/* 80D209E0  38 84 0E 10 */	addi r4, r4, d_a_obj_udoor__stringBase0@l /* 0x80D20E10@l */
/* 80D209E4  4B 30 C6 25 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D209E8  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80D209EC  28 04 00 00 */	cmplwi r4, 0
/* 80D209F0  41 82 00 14 */	beq lbl_80D20A04
/* 80D209F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D209F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D209FC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D20A00  4B 35 38 51 */	bl Release__4cBgSFP9dBgW_Base
lbl_80D20A04:
/* 80D20A04  38 60 00 01 */	li r3, 1
/* 80D20A08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D20A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D20A10  7C 08 03 A6 */	mtlr r0
/* 80D20A14  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20A18  4E 80 00 20 */	blr 
