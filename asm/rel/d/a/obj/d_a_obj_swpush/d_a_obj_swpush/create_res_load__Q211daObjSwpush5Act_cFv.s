lbl_80482FE8:
/* 80482FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482FEC  7C 08 02 A6 */	mflr r0
/* 80482FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80482FF4  7C 64 1B 78 */	mr r4, r3
/* 80482FF8  38 64 05 68 */	addi r3, r4, 0x568
/* 80482FFC  88 04 05 F4 */	lbz r0, 0x5f4(r4)
/* 80483000  54 00 10 3A */	slwi r0, r0, 2
/* 80483004  3C 80 80 48 */	lis r4, M_arcname__Q211daObjSwpush5Act_c@ha
/* 80483008  38 84 4E A4 */	addi r4, r4, M_arcname__Q211daObjSwpush5Act_c@l
/* 8048300C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80483010  4B BA 9E AC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80483014  2C 03 00 04 */	cmpwi r3, 4
/* 80483018  38 00 00 04 */	li r0, 4
/* 8048301C  41 82 00 08 */	beq lbl_80483024
/* 80483020  7C 60 1B 78 */	mr r0, r3
lbl_80483024:
/* 80483024  7C 03 03 78 */	mr r3, r0
/* 80483028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048302C  7C 08 03 A6 */	mtlr r0
/* 80483030  38 21 00 10 */	addi r1, r1, 0x10
/* 80483034  4E 80 00 20 */	blr 
