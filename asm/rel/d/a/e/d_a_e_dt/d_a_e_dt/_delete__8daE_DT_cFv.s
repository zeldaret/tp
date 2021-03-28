lbl_806B5158:
/* 806B5158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B515C  7C 08 02 A6 */	mflr r0
/* 806B5160  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B5168  7C 7F 1B 78 */	mr r31, r3
/* 806B516C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806B5170  3C 80 80 6B */	lis r4, stringBase0@ha
/* 806B5174  38 84 5E D0 */	addi r4, r4, stringBase0@l
/* 806B5178  4B 97 7E 90 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806B517C  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 806B5180  3C 80 80 6B */	lis r4, stringBase0@ha
/* 806B5184  38 84 5E D0 */	addi r4, r4, stringBase0@l
/* 806B5188  38 84 00 05 */	addi r4, r4, 5
/* 806B518C  4B 97 7E 7C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806B5190  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806B5194  3C 80 80 6B */	lis r4, stringBase0@ha
/* 806B5198  38 84 5E D0 */	addi r4, r4, stringBase0@l
/* 806B519C  38 84 00 0D */	addi r4, r4, 0xd
/* 806B51A0  4B 97 7E 68 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806B51A4  88 1F 11 70 */	lbz r0, 0x1170(r31)
/* 806B51A8  28 00 00 00 */	cmplwi r0, 0
/* 806B51AC  41 82 00 10 */	beq lbl_806B51BC
/* 806B51B0  38 00 00 00 */	li r0, 0
/* 806B51B4  3C 60 80 6B */	lis r3, struct_806B629C+0x1@ha
/* 806B51B8  98 03 62 9D */	stb r0, struct_806B629C+0x1@l(r3)
lbl_806B51BC:
/* 806B51BC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806B51C0  28 00 00 00 */	cmplwi r0, 0
/* 806B51C4  41 82 00 18 */	beq lbl_806B51DC
/* 806B51C8  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 806B51CC  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 806B51D0  81 8C 00 08 */	lwz r12, 8(r12)
/* 806B51D4  7D 89 03 A6 */	mtctr r12
/* 806B51D8  4E 80 04 21 */	bctrl 
lbl_806B51DC:
/* 806B51DC  38 60 00 01 */	li r3, 1
/* 806B51E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B51E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B51E8  7C 08 03 A6 */	mtlr r0
/* 806B51EC  38 21 00 10 */	addi r1, r1, 0x10
/* 806B51F0  4E 80 00 20 */	blr 
