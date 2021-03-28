lbl_8058D4F8:
/* 8058D4F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D4FC  7C 08 02 A6 */	mflr r0
/* 8058D500  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058D508  93 C1 00 08 */	stw r30, 8(r1)
/* 8058D50C  7C 7E 1B 78 */	mr r30, r3
/* 8058D510  4B AE B3 CC */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 8058D514  7C 7F 1B 78 */	mr r31, r3
/* 8058D518  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 8058D51C  3C 80 80 59 */	lis r4, M_arcname__Q211daObjLadder5Act_c@ha
/* 8058D520  38 84 DD 74 */	addi r4, r4, M_arcname__Q211daObjLadder5Act_c@l
/* 8058D524  4B A9 FA E4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8058D528  7F E3 FB 78 */	mr r3, r31
/* 8058D52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058D530  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058D534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D538  7C 08 03 A6 */	mtlr r0
/* 8058D53C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D540  4E 80 00 20 */	blr 
