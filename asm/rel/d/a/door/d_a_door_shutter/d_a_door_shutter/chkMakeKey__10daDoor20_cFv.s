lbl_8046609C:
/* 8046609C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804660A0  7C 08 02 A6 */	mflr r0
/* 804660A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804660A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804660AC  7C 7F 1B 78 */	mr r31, r3
/* 804660B0  4B BD 40 F0 */	b getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 804660B4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804660B8  28 00 00 02 */	cmplwi r0, 2
/* 804660BC  41 82 00 18 */	beq lbl_804660D4
/* 804660C0  7F E3 FB 78 */	mr r3, r31
/* 804660C4  4B BD 40 E8 */	b getBackOption__13door_param2_cFP10fopAc_ac_c
/* 804660C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804660CC  28 00 00 02 */	cmplwi r0, 2
/* 804660D0  40 82 00 0C */	bne lbl_804660DC
lbl_804660D4:
/* 804660D4  38 60 00 01 */	li r3, 1
/* 804660D8  48 00 00 08 */	b lbl_804660E0
lbl_804660DC:
/* 804660DC  38 60 00 00 */	li r3, 0
lbl_804660E0:
/* 804660E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804660E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804660E8  7C 08 03 A6 */	mtlr r0
/* 804660EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804660F0  4E 80 00 20 */	blr 
