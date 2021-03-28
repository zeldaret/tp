lbl_80662BE4:
/* 80662BE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80662BE8  7C 08 02 A6 */	mflr r0
/* 80662BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80662BF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80662BF4  7C 7F 1B 78 */	mr r31, r3
/* 80662BF8  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80662BFC  3C 80 80 66 */	lis r4, stringBase0@ha
/* 80662C00  38 84 2F 18 */	addi r4, r4, stringBase0@l
/* 80662C04  4B 9C A4 04 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80662C08  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80662C0C  28 00 00 00 */	cmplwi r0, 0
/* 80662C10  41 82 00 18 */	beq lbl_80662C28
/* 80662C14  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80662C18  81 9F 05 7C */	lwz r12, 0x57c(r31)
/* 80662C1C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80662C20  7D 89 03 A6 */	mtctr r12
/* 80662C24  4E 80 04 21 */	bctrl 
lbl_80662C28:
/* 80662C28  38 60 00 01 */	li r3, 1
/* 80662C2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80662C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80662C34  7C 08 03 A6 */	mtlr r0
/* 80662C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80662C3C  4E 80 00 20 */	blr 
