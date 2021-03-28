lbl_80595B34:
/* 80595B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595B38  7C 08 02 A6 */	mflr r0
/* 80595B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595B44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80595B48  41 82 00 3C */	beq lbl_80595B84
/* 80595B4C  38 7F 05 70 */	addi r3, r31, 0x570
/* 80595B50  3C 80 80 59 */	lis r4, l_arcName@ha
/* 80595B54  38 84 5D 60 */	addi r4, r4, l_arcName@l
/* 80595B58  80 84 00 00 */	lwz r4, 0(r4)
/* 80595B5C  4B A9 74 AC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80595B60  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80595B64  3C 80 80 59 */	lis r4, __dt__12ClothJoint_cFv@ha
/* 80595B68  38 84 5B 9C */	addi r4, r4, __dt__12ClothJoint_cFv@l
/* 80595B6C  38 A0 00 38 */	li r5, 0x38
/* 80595B70  38 C0 00 03 */	li r6, 3
/* 80595B74  4B DC C1 74 */	b __destroy_arr
/* 80595B78  7F E3 FB 78 */	mr r3, r31
/* 80595B7C  38 80 00 00 */	li r4, 0
/* 80595B80  4B A8 31 0C */	b __dt__10fopAc_ac_cFv
lbl_80595B84:
/* 80595B84  38 60 00 01 */	li r3, 1
/* 80595B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80595B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595B90  7C 08 03 A6 */	mtlr r0
/* 80595B94  38 21 00 10 */	addi r1, r1, 0x10
/* 80595B98  4E 80 00 20 */	blr 
