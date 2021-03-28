lbl_8071EED4:
/* 8071EED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071EED8  7C 08 02 A6 */	mflr r0
/* 8071EEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071EEE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071EEE4  7C 7F 1B 78 */	mr r31, r3
/* 8071EEE8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8071EEEC  3C 80 80 72 */	lis r4, stringBase0@ha
/* 8071EEF0  38 84 F6 D8 */	addi r4, r4, stringBase0@l
/* 8071EEF4  4B 90 E1 14 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8071EEF8  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8071EEFC  28 00 00 00 */	cmplwi r0, 0
/* 8071EF00  41 82 00 0C */	beq lbl_8071EF0C
/* 8071EF04  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 8071EF08  4B B9 F0 F0 */	b deleteObject__14Z2SoundObjBaseFv
lbl_8071EF0C:
/* 8071EF0C  38 60 00 01 */	li r3, 1
/* 8071EF10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071EF14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071EF18  7C 08 03 A6 */	mtlr r0
/* 8071EF1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8071EF20  4E 80 00 20 */	blr 
