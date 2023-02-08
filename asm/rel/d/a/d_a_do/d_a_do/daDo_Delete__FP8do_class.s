lbl_8066E49C:
/* 8066E49C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066E4A0  7C 08 02 A6 */	mflr r0
/* 8066E4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066E4A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066E4AC  7C 7F 1B 78 */	mr r31, r3
/* 8066E4B0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8066E4B4  3C 80 80 67 */	lis r4, d_a_do__stringBase0@ha /* 0x8066EFB0@ha */
/* 8066E4B8  38 84 EF B0 */	addi r4, r4, d_a_do__stringBase0@l /* 0x8066EFB0@l */
/* 8066E4BC  4B 9B EB 4D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8066E4C0  88 1F 0C C0 */	lbz r0, 0xcc0(r31)
/* 8066E4C4  28 00 00 00 */	cmplwi r0, 0
/* 8066E4C8  41 82 00 10 */	beq lbl_8066E4D8
/* 8066E4CC  38 00 00 00 */	li r0, 0
/* 8066E4D0  3C 60 80 67 */	lis r3, struct_8066F2B4+0x2@ha /* 0x8066F2B6@ha */
/* 8066E4D4  98 03 F2 B6 */	stb r0, struct_8066F2B4+0x2@l(r3)  /* 0x8066F2B6@l */
lbl_8066E4D8:
/* 8066E4D8  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8066E4DC  28 00 00 00 */	cmplwi r0, 0
/* 8066E4E0  41 82 00 0C */	beq lbl_8066E4EC
/* 8066E4E4  38 7F 0B E4 */	addi r3, r31, 0xbe4
/* 8066E4E8  4B C4 FB 11 */	bl deleteObject__14Z2SoundObjBaseFv
lbl_8066E4EC:
/* 8066E4EC  38 60 00 01 */	li r3, 1
/* 8066E4F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066E4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066E4F8  7C 08 03 A6 */	mtlr r0
/* 8066E4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8066E500  4E 80 00 20 */	blr 
