lbl_8028CC68:
/* 8028CC68  3C 80 80 43 */	lis r4, saoVVOutput_direction___Q214JStudio_JStage14TAdaptor_light@ha
/* 8028CC6C  38 04 14 48 */	addi r0, r4, saoVVOutput_direction___Q214JStudio_JStage14TAdaptor_light@l
/* 8028CC70  7C 05 03 78 */	mr r5, r0
/* 8028CC74  48 00 00 2C */	b lbl_8028CCA0
lbl_8028CC78:
/* 8028CC78  80 83 00 08 */	lwz r4, 8(r3)
/* 8028CC7C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028CC80  7C 84 02 14 */	add r4, r4, r0
/* 8028CC84  28 05 00 00 */	cmplwi r5, 0
/* 8028CC88  41 82 00 0C */	beq lbl_8028CC94
/* 8028CC8C  7C A0 2B 78 */	mr r0, r5
/* 8028CC90  48 00 00 08 */	b lbl_8028CC98
lbl_8028CC94:
/* 8028CC94  38 0D 8C 70 */	la r0, soOutput_none___Q27JStudio14TVariableValue(r13) /* 804511F0-_SDA_BASE_ */
lbl_8028CC98:
/* 8028CC98  90 04 00 10 */	stw r0, 0x10(r4)
/* 8028CC9C  38 A5 00 0C */	addi r5, r5, 0xc
lbl_8028CCA0:
/* 8028CCA0  80 05 00 04 */	lwz r0, 4(r5)
/* 8028CCA4  2C 00 FF FF */	cmpwi r0, -1
/* 8028CCA8  40 82 FF D0 */	bne lbl_8028CC78
/* 8028CCAC  4E 80 00 20 */	blr 
