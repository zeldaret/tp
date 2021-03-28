lbl_80D0ABCC:
/* 80D0ABCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0ABD0  7C 08 02 A6 */	mflr r0
/* 80D0ABD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0ABD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0ABDC  7C 7F 1B 78 */	mr r31, r3
/* 80D0ABE0  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80D0ABE4  3C 80 80 D1 */	lis r4, stringBase0@ha
/* 80D0ABE8  38 84 B9 E4 */	addi r4, r4, stringBase0@l
/* 80D0ABEC  4B 32 24 1C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D0ABF0  88 1F 0A 64 */	lbz r0, 0xa64(r31)
/* 80D0ABF4  28 00 00 00 */	cmplwi r0, 0
/* 80D0ABF8  41 82 00 10 */	beq lbl_80D0AC08
/* 80D0ABFC  38 00 00 00 */	li r0, 0
/* 80D0AC00  3C 60 80 D1 */	lis r3, data_80D0BAB8@ha
/* 80D0AC04  98 03 BA B8 */	stb r0, data_80D0BAB8@l(r3)
lbl_80D0AC08:
/* 80D0AC08  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80D0AC0C  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80D0AC10  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D0AC14  7D 89 03 A6 */	mtctr r12
/* 80D0AC18  4E 80 04 21 */	bctrl 
/* 80D0AC1C  38 60 00 01 */	li r3, 1
/* 80D0AC20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0AC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0AC28  7C 08 03 A6 */	mtlr r0
/* 80D0AC2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0AC30  4E 80 00 20 */	blr 
