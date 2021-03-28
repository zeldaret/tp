lbl_80CEFDB8:
/* 80CEFDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEFDBC  7C 08 02 A6 */	mflr r0
/* 80CEFDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEFDC4  3C 80 80 CF */	lis r4, l_arcName@ha
/* 80CEFDC8  38 84 FF 24 */	addi r4, r4, l_arcName@l
/* 80CEFDCC  80 84 00 00 */	lwz r4, 0(r4)
/* 80CEFDD0  38 63 05 68 */	addi r3, r3, 0x568
/* 80CEFDD4  4B 33 D2 34 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CEFDD8  38 60 00 01 */	li r3, 1
/* 80CEFDDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEFDE0  7C 08 03 A6 */	mtlr r0
/* 80CEFDE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEFDE8  4E 80 00 20 */	blr 
