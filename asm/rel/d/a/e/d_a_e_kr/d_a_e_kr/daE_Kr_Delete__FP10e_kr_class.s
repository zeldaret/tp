lbl_80704B64:
/* 80704B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80704B68  7C 08 02 A6 */	mflr r0
/* 80704B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80704B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80704B74  7C 7F 1B 78 */	mr r31, r3
/* 80704B78  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80704B7C  3C 80 80 70 */	lis r4, stringBase0@ha
/* 80704B80  38 84 5C 4C */	addi r4, r4, stringBase0@l
/* 80704B84  4B 92 84 84 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80704B88  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80704B8C  28 00 00 00 */	cmplwi r0, 0
/* 80704B90  41 82 00 0C */	beq lbl_80704B9C
/* 80704B94  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80704B98  4B 90 C7 78 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80704B9C:
/* 80704B9C  38 60 00 01 */	li r3, 1
/* 80704BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80704BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80704BA8  7C 08 03 A6 */	mtlr r0
/* 80704BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80704BB0  4E 80 00 20 */	blr 
