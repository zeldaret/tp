lbl_80D00954:
/* 80D00954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00958  7C 08 02 A6 */	mflr r0
/* 80D0095C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D00964  7C 7F 1B 78 */	mr r31, r3
/* 80D00968  80 63 05 B0 */	lwz r3, 0x5b0(r3)
/* 80D0096C  28 03 00 00 */	cmplwi r3, 0
/* 80D00970  41 82 00 24 */	beq lbl_80D00994
/* 80D00974  4B 56 78 61 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D00978  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0097C  41 82 00 18 */	beq lbl_80D00994
/* 80D00980  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D00984  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D00988  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D0098C  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80D00990  4B 37 38 C1 */	bl Release__4cBgSFP9dBgW_Base
lbl_80D00994:
/* 80D00994  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D00998  3C 80 80 D0 */	lis r4, l_arcName@ha /* 0x80D00AE0@ha */
/* 80D0099C  38 84 0A E0 */	addi r4, r4, l_arcName@l /* 0x80D00AE0@l */
/* 80D009A0  80 84 00 00 */	lwz r4, 0(r4)
/* 80D009A4  4B 32 C6 65 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D009A8  38 60 00 01 */	li r3, 1
/* 80D009AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D009B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D009B4  7C 08 03 A6 */	mtlr r0
/* 80D009B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D009BC  4E 80 00 20 */	blr 
