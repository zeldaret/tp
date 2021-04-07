lbl_80C8459C:
/* 80C8459C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C845A0  7C 08 02 A6 */	mflr r0
/* 80C845A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C845A8  3C 80 80 C8 */	lis r4, l_arcName@ha /* 0x80C846F0@ha */
/* 80C845AC  38 84 46 F0 */	addi r4, r4, l_arcName@l /* 0x80C846F0@l */
/* 80C845B0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C845B4  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C845B8  4B 3A 8A 51 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C845BC  38 60 00 01 */	li r3, 1
/* 80C845C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C845C4  7C 08 03 A6 */	mtlr r0
/* 80C845C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C845CC  4E 80 00 20 */	blr 
