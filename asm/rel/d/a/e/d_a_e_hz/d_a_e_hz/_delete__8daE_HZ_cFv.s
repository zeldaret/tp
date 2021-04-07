lbl_806EF6B4:
/* 806EF6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EF6B8  7C 08 02 A6 */	mflr r0
/* 806EF6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EF6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806EF6C4  7C 7F 1B 78 */	mr r31, r3
/* 806EF6C8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806EF6CC  3C 80 80 6F */	lis r4, d_a_e_hz__stringBase0@ha /* 0x806F095C@ha */
/* 806EF6D0  38 84 09 5C */	addi r4, r4, d_a_e_hz__stringBase0@l /* 0x806F095C@l */
/* 806EF6D4  4B 93 D9 35 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806EF6D8  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 806EF6DC  80 9F 06 BC */	lwz r4, 0x6bc(r31)
/* 806EF6E0  4B 93 D9 29 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806EF6E4  88 1F 12 34 */	lbz r0, 0x1234(r31)
/* 806EF6E8  28 00 00 00 */	cmplwi r0, 0
/* 806EF6EC  41 82 00 10 */	beq lbl_806EF6FC
/* 806EF6F0  38 00 00 00 */	li r0, 0
/* 806EF6F4  3C 60 80 6F */	lis r3, struct_806F0B6C+0x1@ha /* 0x806F0B6D@ha */
/* 806EF6F8  98 03 0B 6D */	stb r0, struct_806F0B6C+0x1@l(r3)  /* 0x806F0B6D@l */
lbl_806EF6FC:
/* 806EF6FC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806EF700  28 00 00 00 */	cmplwi r0, 0
/* 806EF704  41 82 00 18 */	beq lbl_806EF71C
/* 806EF708  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806EF70C  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 806EF710  81 8C 00 08 */	lwz r12, 8(r12)
/* 806EF714  7D 89 03 A6 */	mtctr r12
/* 806EF718  4E 80 04 21 */	bctrl 
lbl_806EF71C:
/* 806EF71C  80 9F 0A B4 */	lwz r4, 0xab4(r31)
/* 806EF720  28 04 00 00 */	cmplwi r4, 0
/* 806EF724  41 82 00 14 */	beq lbl_806EF738
/* 806EF728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EF72C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EF730  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806EF734  4B 98 4B 1D */	bl Release__4cBgSFP9dBgW_Base
lbl_806EF738:
/* 806EF738  38 60 00 01 */	li r3, 1
/* 806EF73C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806EF740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EF744  7C 08 03 A6 */	mtlr r0
/* 806EF748  38 21 00 10 */	addi r1, r1, 0x10
/* 806EF74C  4E 80 00 20 */	blr 
