lbl_80CFEA3C:
/* 80CFEA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFEA40  7C 08 02 A6 */	mflr r0
/* 80CFEA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFEA48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFEA4C  7C 7F 1B 78 */	mr r31, r3
/* 80CFEA50  80 63 05 70 */	lwz r3, 0x570(r3)
/* 80CFEA54  28 03 00 00 */	cmplwi r3, 0
/* 80CFEA58  41 82 00 24 */	beq lbl_80CFEA7C
/* 80CFEA5C  4B 56 97 78 */	b ChkUsed__9cBgW_BgIdCFv
/* 80CFEA60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CFEA64  41 82 00 18 */	beq lbl_80CFEA7C
/* 80CFEA68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFEA6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFEA70  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CFEA74  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80CFEA78  4B 37 57 D8 */	b Release__4cBgSFP9dBgW_Base
lbl_80CFEA7C:
/* 80CFEA7C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CFEA80  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80CFEA84  1C A0 00 38 */	mulli r5, r0, 0x38
/* 80CFEA88  3C 80 80 D0 */	lis r4, M_attr__Q212daObjSwpush25Act_c@ha
/* 80CFEA8C  38 04 FC 00 */	addi r0, r4, M_attr__Q212daObjSwpush25Act_c@l
/* 80CFEA90  7C 80 2A 14 */	add r4, r0, r5
/* 80CFEA94  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80CFEA98  4B 32 E5 70 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CFEA9C  38 60 00 01 */	li r3, 1
/* 80CFEAA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFEAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFEAA8  7C 08 03 A6 */	mtlr r0
/* 80CFEAAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFEAB0  4E 80 00 20 */	blr 
