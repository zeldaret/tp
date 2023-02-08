lbl_8059C560:
/* 8059C560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C564  7C 08 02 A6 */	mflr r0
/* 8059C568  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C56C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059C570  7C 7F 1B 78 */	mr r31, r3
/* 8059C574  80 63 05 B8 */	lwz r3, 0x5b8(r3)
/* 8059C578  28 03 00 00 */	cmplwi r3, 0
/* 8059C57C  41 82 00 24 */	beq lbl_8059C5A0
/* 8059C580  4B CC BC 55 */	bl ChkUsed__9cBgW_BgIdCFv
/* 8059C584  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059C588  41 82 00 18 */	beq lbl_8059C5A0
/* 8059C58C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059C590  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059C594  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8059C598  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8059C59C  4B AD 7C B5 */	bl Release__4cBgSFP9dBgW_Base
lbl_8059C5A0:
/* 8059C5A0  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 8059C5A4  3C 80 80 5A */	lis r4, l_arcName@ha /* 0x8059C6FC@ha */
/* 8059C5A8  38 84 C6 FC */	addi r4, r4, l_arcName@l /* 0x8059C6FC@l */
/* 8059C5AC  80 84 00 00 */	lwz r4, 0(r4)
/* 8059C5B0  4B A9 0A 59 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8059C5B4  38 60 00 01 */	li r3, 1
/* 8059C5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059C5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C5C0  7C 08 03 A6 */	mtlr r0
/* 8059C5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C5C8  4E 80 00 20 */	blr 
