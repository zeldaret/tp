lbl_80CB4E14:
/* 80CB4E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4E18  7C 08 02 A6 */	mflr r0
/* 80CB4E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB4E24  7C 7F 1B 78 */	mr r31, r3
/* 80CB4E28  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CB4E2C  88 1F 06 06 */	lbz r0, 0x606(r31)
/* 80CB4E30  54 00 10 3A */	slwi r0, r0, 2
/* 80CB4E34  3C 80 80 CB */	lis r4, l_type@ha /* 0x80CB500C@ha */
/* 80CB4E38  38 84 50 0C */	addi r4, r4, l_type@l /* 0x80CB500C@l */
/* 80CB4E3C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CB4E40  4B 37 81 C9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CB4E44  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80CB4E48  28 03 00 00 */	cmplwi r3, 0
/* 80CB4E4C  41 82 00 24 */	beq lbl_80CB4E70
/* 80CB4E50  4B 5B 33 85 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80CB4E54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CB4E58  41 82 00 18 */	beq lbl_80CB4E70
/* 80CB4E5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB4E60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB4E64  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CB4E68  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 80CB4E6C  4B 3B F3 E5 */	bl Release__4cBgSFP9dBgW_Base
lbl_80CB4E70:
/* 80CB4E70  38 60 00 01 */	li r3, 1
/* 80CB4E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB4E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4E7C  7C 08 03 A6 */	mtlr r0
/* 80CB4E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4E84  4E 80 00 20 */	blr 
