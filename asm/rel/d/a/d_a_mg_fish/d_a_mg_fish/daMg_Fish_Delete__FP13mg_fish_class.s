lbl_8053496C:
/* 8053496C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534970  7C 08 02 A6 */	mflr r0
/* 80534974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053497C  7C 7F 1B 78 */	mr r31, r3
/* 80534980  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80534984  80 9F 05 FC */	lwz r4, 0x5fc(r31)
/* 80534988  4B AF 86 81 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8053498C  88 1F 0C 3F */	lbz r0, 0xc3f(r31)
/* 80534990  28 00 00 00 */	cmplwi r0, 0
/* 80534994  41 82 00 10 */	beq lbl_805349A4
/* 80534998  38 00 00 00 */	li r0, 0
/* 8053499C  3C 60 80 53 */	lis r3, struct_80536BBC+0x2@ha /* 0x80536BBE@ha */
/* 805349A0  98 03 6B BE */	stb r0, struct_80536BBC+0x2@l(r3)  /* 0x80536BBE@l */
lbl_805349A4:
/* 805349A4  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 805349A8  28 00 00 00 */	cmplwi r0, 0
/* 805349AC  41 82 00 18 */	beq lbl_805349C4
/* 805349B0  38 7F 08 00 */	addi r3, r31, 0x800
/* 805349B4  81 9F 08 00 */	lwz r12, 0x800(r31)
/* 805349B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 805349BC  7D 89 03 A6 */	mtctr r12
/* 805349C0  4E 80 04 21 */	bctrl 
lbl_805349C4:
/* 805349C4  38 60 00 01 */	li r3, 1
/* 805349C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805349CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805349D0  7C 08 03 A6 */	mtlr r0
/* 805349D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805349D8  4E 80 00 20 */	blr 
