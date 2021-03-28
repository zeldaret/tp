lbl_8048348C:
/* 8048348C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483490  7C 08 02 A6 */	mflr r0
/* 80483494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048349C  7C 7F 1B 78 */	mr r31, r3
/* 804834A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804834A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804834A8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804834AC  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 804834B0  4B BF 0D A0 */	b Release__4cBgSFP9dBgW_Base
/* 804834B4  38 7F 05 68 */	addi r3, r31, 0x568
/* 804834B8  88 1F 05 F4 */	lbz r0, 0x5f4(r31)
/* 804834BC  54 00 10 3A */	slwi r0, r0, 2
/* 804834C0  3C 80 80 48 */	lis r4, M_arcname__Q211daObjSwpush5Act_c@ha
/* 804834C4  38 84 4E A4 */	addi r4, r4, M_arcname__Q211daObjSwpush5Act_c@l
/* 804834C8  7C 84 00 2E */	lwzx r4, r4, r0
/* 804834CC  4B BA 9B 3C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804834D0  38 60 00 01 */	li r3, 1
/* 804834D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804834D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804834DC  7C 08 03 A6 */	mtlr r0
/* 804834E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804834E4  4E 80 00 20 */	blr 
