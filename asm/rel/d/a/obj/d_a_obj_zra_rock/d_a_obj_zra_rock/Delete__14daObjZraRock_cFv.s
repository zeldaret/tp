lbl_80D454AC:
/* 80D454AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D454B0  7C 08 02 A6 */	mflr r0
/* 80D454B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D454B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D454BC  7C 7F 1B 78 */	mr r31, r3
/* 80D454C0  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D454C4  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D455F0@ha */
/* 80D454C8  38 84 55 F0 */	addi r4, r4, l_arcName@l /* 0x80D455F0@l */
/* 80D454CC  80 84 00 00 */	lwz r4, 0(r4)
/* 80D454D0  4B 2E 7B 39 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D454D4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D454D8  28 03 00 00 */	cmplwi r3, 0
/* 80D454DC  41 82 00 24 */	beq lbl_80D45500
/* 80D454E0  4B 52 2C F5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D454E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D454E8  41 82 00 18 */	beq lbl_80D45500
/* 80D454EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D454F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D454F4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D454F8  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D454FC  4B 32 ED 55 */	bl Release__4cBgSFP9dBgW_Base
lbl_80D45500:
/* 80D45500  38 60 00 01 */	li r3, 1
/* 80D45504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D45508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4550C  7C 08 03 A6 */	mtlr r0
/* 80D45510  38 21 00 10 */	addi r1, r1, 0x10
/* 80D45514  4E 80 00 20 */	blr 
