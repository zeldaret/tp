lbl_80480BC0:
/* 80480BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80480BC4  7C 08 02 A6 */	mflr r0
/* 80480BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80480BD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80480BD4  7C 7E 1B 78 */	mr r30, r3
/* 80480BD8  4B BF 7D 05 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80480BDC  7C 7F 1B 78 */	mr r31, r3
/* 80480BE0  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80480BE4  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 80480BE8  54 00 10 3A */	slwi r0, r0, 2
/* 80480BEC  3C 80 80 48 */	lis r4, M_arcname__Q212daObjMovebox5Act_c@ha /* 0x80481104@ha */
/* 80480BF0  38 84 11 04 */	addi r4, r4, M_arcname__Q212daObjMovebox5Act_c@l /* 0x80481104@l */
/* 80480BF4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80480BF8  4B BA C4 11 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80480BFC  7F E3 FB 78 */	mr r3, r31
/* 80480C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80480C04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80480C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80480C0C  7C 08 03 A6 */	mtlr r0
/* 80480C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80480C14  4E 80 00 20 */	blr 
