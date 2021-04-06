lbl_80595BD8:
/* 80595BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595BDC  7C 08 02 A6 */	mflr r0
/* 80595BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595BE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80595BEC  7C 7E 1B 78 */	mr r30, r3
/* 80595BF0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80595BF4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80595BF8  40 82 00 40 */	bne lbl_80595C38
/* 80595BFC  7F C0 F3 79 */	or. r0, r30, r30
/* 80595C00  41 82 00 2C */	beq lbl_80595C2C
/* 80595C04  7C 1F 03 78 */	mr r31, r0
/* 80595C08  4B A8 2F 5D */	bl __ct__10fopAc_ac_cFv
/* 80595C0C  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80595C10  3C 80 80 59 */	lis r4, __ct__12ClothJoint_cFv@ha /* 0x80595CA8@ha */
/* 80595C14  38 84 5C A8 */	addi r4, r4, __ct__12ClothJoint_cFv@l /* 0x80595CA8@l */
/* 80595C18  3C A0 80 59 */	lis r5, __dt__12ClothJoint_cFv@ha /* 0x80595B9C@ha */
/* 80595C1C  38 A5 5B 9C */	addi r5, r5, __dt__12ClothJoint_cFv@l /* 0x80595B9C@l */
/* 80595C20  38 C0 00 38 */	li r6, 0x38
/* 80595C24  38 E0 00 03 */	li r7, 3
/* 80595C28  4B DC C1 39 */	bl __construct_array
lbl_80595C2C:
/* 80595C2C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80595C30  60 00 00 08 */	ori r0, r0, 8
/* 80595C34  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80595C38:
/* 80595C38  38 7E 05 70 */	addi r3, r30, 0x570
/* 80595C3C  3C 80 80 59 */	lis r4, l_arcName@ha /* 0x80595D60@ha */
/* 80595C40  38 84 5D 60 */	addi r4, r4, l_arcName@l /* 0x80595D60@l */
/* 80595C44  80 84 00 00 */	lwz r4, 0(r4)
/* 80595C48  4B A9 72 75 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80595C4C  7C 7F 1B 78 */	mr r31, r3
/* 80595C50  2C 1F 00 04 */	cmpwi r31, 4
/* 80595C54  40 82 00 38 */	bne lbl_80595C8C
/* 80595C58  7F C3 F3 78 */	mr r3, r30
/* 80595C5C  3C 80 80 59 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha /* 0x80595850@ha */
/* 80595C60  38 84 58 50 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l /* 0x80595850@l */
/* 80595C64  38 A0 09 A0 */	li r5, 0x9a0
/* 80595C68  4B A8 48 49 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80595C6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80595C70  40 82 00 0C */	bne lbl_80595C7C
/* 80595C74  3B E0 00 05 */	li r31, 5
/* 80595C78  48 00 00 14 */	b lbl_80595C8C
lbl_80595C7C:
/* 80595C7C  7F C3 F3 78 */	mr r3, r30
/* 80595C80  4B FF F3 B9 */	bl create_init__14daObjOnCloth_cFv
/* 80595C84  38 1E 05 78 */	addi r0, r30, 0x578
/* 80595C88  90 1E 05 04 */	stw r0, 0x504(r30)
lbl_80595C8C:
/* 80595C8C  7F E3 FB 78 */	mr r3, r31
/* 80595C90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80595C94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80595C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595C9C  7C 08 03 A6 */	mtlr r0
/* 80595CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80595CA4  4E 80 00 20 */	blr 
