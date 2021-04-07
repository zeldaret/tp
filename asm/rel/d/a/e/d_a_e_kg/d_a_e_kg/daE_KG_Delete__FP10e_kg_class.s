lbl_806F97B0:
/* 806F97B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F97B4  7C 08 02 A6 */	mflr r0
/* 806F97B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F97BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F97C0  7C 7F 1B 78 */	mr r31, r3
/* 806F97C4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806F97C8  3C 80 80 70 */	lis r4, d_a_e_kg__stringBase0@ha /* 0x806FA46C@ha */
/* 806F97CC  38 84 A4 6C */	addi r4, r4, d_a_e_kg__stringBase0@l /* 0x806FA46C@l */
/* 806F97D0  4B 93 38 39 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806F97D4  88 1F 0A 70 */	lbz r0, 0xa70(r31)
/* 806F97D8  28 00 00 00 */	cmplwi r0, 0
/* 806F97DC  41 82 00 10 */	beq lbl_806F97EC
/* 806F97E0  38 00 00 00 */	li r0, 0
/* 806F97E4  3C 60 80 70 */	lis r3, data_806FA5E8@ha /* 0x806FA5E8@ha */
/* 806F97E8  98 03 A5 E8 */	stb r0, data_806FA5E8@l(r3)  /* 0x806FA5E8@l */
lbl_806F97EC:
/* 806F97EC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806F97F0  28 00 00 00 */	cmplwi r0, 0
/* 806F97F4  41 82 00 0C */	beq lbl_806F9800
/* 806F97F8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806F97FC  4B 91 7B 15 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_806F9800:
/* 806F9800  38 60 00 01 */	li r3, 1
/* 806F9804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F9808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F980C  7C 08 03 A6 */	mtlr r0
/* 806F9810  38 21 00 10 */	addi r1, r1, 0x10
/* 806F9814  4E 80 00 20 */	blr 
