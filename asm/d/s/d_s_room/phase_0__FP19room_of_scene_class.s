lbl_8025B870:
/* 8025B870  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8025B874  28 03 00 00 */	cmplwi r3, 0
/* 8025B878  41 82 00 0C */	beq lbl_8025B884
/* 8025B87C  80 83 00 04 */	lwz r4, 4(r3)
/* 8025B880  48 00 00 08 */	b lbl_8025B888
lbl_8025B884:
/* 8025B884  38 80 FF FF */	li r4, -1
lbl_8025B888:
/* 8025B888  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 8025B88C  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l
/* 8025B890  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8025B894  7C 63 02 14 */	add r3, r3, r0
/* 8025B898  90 83 03 FC */	stw r4, 0x3fc(r3)
/* 8025B89C  38 60 00 02 */	li r3, 2
/* 8025B8A0  4E 80 00 20 */	blr 
