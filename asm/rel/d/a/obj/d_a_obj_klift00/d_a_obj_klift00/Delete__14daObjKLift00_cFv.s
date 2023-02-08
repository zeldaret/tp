lbl_8058C014:
/* 8058C014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C018  7C 08 02 A6 */	mflr r0
/* 8058C01C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C020  28 03 00 00 */	cmplwi r3, 0
/* 8058C024  41 82 00 08 */	beq lbl_8058C02C
/* 8058C028  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_8058C02C:
/* 8058C02C  3C 80 80 59 */	lis r4, l_arcName@ha /* 0x8058C3F4@ha */
/* 8058C030  38 84 C3 F4 */	addi r4, r4, l_arcName@l /* 0x8058C3F4@l */
/* 8058C034  80 84 00 00 */	lwz r4, 0(r4)
/* 8058C038  4B AA 0F D1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8058C03C  38 60 00 01 */	li r3, 1
/* 8058C040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C044  7C 08 03 A6 */	mtlr r0
/* 8058C048  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C04C  4E 80 00 20 */	blr 
